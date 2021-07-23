# -*- coding: utf-8 -*-
"""
Created on Sep 23 14:29:35 2019
@author: Ahmed Qamesh
"""
import analib
import time
from collections import deque, Counter
from threading import Lock
import ctypes as ct

canMSG_ERROR_FRAME = 0x20

class sdoReadCAN(object):
    def __init__(self,ipAddress='10.88.16.71',channel=0,bitrate=1000000):
        print("Intializing reading class")
        self.__cnt = Counter()

        self.__ch = analib.Channel(ipAddress, channel, baudrate=bitrate)
        self.__cbFunc = analib.wrapper.dll.CBFUNC(self._anagateCbFunc())
        self.__ch.setCallback(self.__cbFunc)
        
        # Initialize default arguments
        self.__canMsgQueue = deque([], 10)
        self.__lock = Lock()

    @property
    def channel(self):
        """Currently used |CAN| channel. The actual class depends on the used
        |CAN| interface."""
        return self.__ch
            
    @property
    def lock(self):
        """:class:`~threading.Lock` : Lock object for accessing the incoming
        message queue :attr:`canMsgQueue`"""
        return self.__lock
    
    @property
    def cnt(self):
        """:class:`~collections.Counter` : Counter holding information about
        quality of transmitting and receiving. Its contens are logged when the
        program ends."""
        return self.__cnt
    
    @property
    def canMsgQueue(self):
        """:class:`collections.deque` : Queue object holding incoming |CAN|
        messages. This class supports thread-safe adding and removing of
        elements but not thread-safe iterating. Therefore the designated
        :class:`~threading.Lock` object :attr:`lock` should be acquired before
        accessing it.

        The queue is initialized with a maxmimum length of ``1000`` elements
        to avoid memory problems although it is not expected to grow at all.

        This special class is used instead of the :class:`queue.Queue` class
        because it is iterable and fast."""
        return self.__canMsgQueue

    def writeMessage(self, cobid, msg, flag=0, timeout=None):
        """Combining writing functions for different |CAN| interfaces

        Parameters
        ----------
        cobid : :obj:`int`
            |CAN| identifier
        msg : :obj:`list` of :obj:`int` or :obj:`bytes`
            Data bytes
        flag : :obj:`int`, optional
            Message flag (|RTR|, etc.). Defaults to zero.
        timeout : :obj:`int`, optional
            unused
        """
        self.__ch.write(cobid, msg, flag)

    def sdoRead(self, nodeId, index, subindex, timeout=100, MAX_DATABYTES=8):
        """Read an object via |SDO|

        Currently expedited and segmented transfer is supported by this method.
        The user has to decide how to decode the data.

        Parameters
        ----------
        nodeId : :obj:`int`
            The id from the node to read from
        index : :obj:`int`
            The Object Dictionary index to read from
        subindex : :obj:`int`
            |OD| Subindex. Defaults to zero for single value entries.
        timeout : :obj:`int`, optional
            |SDO| timeout in milliseconds

        Returns
        -------
        :obj:`list` of :obj:`int`
            The data if was successfully read
        :data:`None`
            In case of errors
        """
        SDO_TX = 0x580
        SDO_RX = 0x600
        if nodeId is None or index is None or subindex is None:
            print('SDO read protocol cancelled before it could begin.')
            return None
        self.cnt['SDO read total'] += 1
        cobid = SDO_RX + nodeId
        msg = [0 for i in range(MAX_DATABYTES)]
        msg[1], msg[2] = index.to_bytes(2, 'little')
        msg[3] = subindex
        msg[0] = 0x40
        try:
            self.writeMessage(cobid, msg, timeout=timeout)
        except:
            self.cnt['SDO read request timeout'] += 1
            return None
        # Wait for response
        t0 = time.perf_counter()
        messageValid = False
        while time.perf_counter() - t0 < timeout / 1000:
            with self.__lock:
                for i, (cobid_ret, ret, dlc, flag, t) in \
                        zip(range(len(self.__canMsgQueue)),
                            self.__canMsgQueue):
                    messageValid = \
                        (dlc == 8 and cobid_ret == SDO_TX + nodeId
                         and ret[0] in [0x80, 0x43, 0x47, 0x4b, 0x4f, 0x42] and
                         int.from_bytes([ret[1], ret[2]], 'little') == index
                         and ret[3] == subindex)
                    if messageValid:
                        del self.__canMsgQueue[i]
                        break
            if messageValid:
                break
        else:
            print(f'SDO read response timeout (node {nodeId}, index'
                  f' {index:04X}:{subindex:02X})')
            self.cnt['SDO read response timeout'] += 1
            return None
        # Check command byte
        if ret[0] == 0x80:
            abort_code = int.from_bytes(ret[4:], 'little')
            print(f'Received SDO abort message while reading '
                  f'object {index:04X}:{subindex:02X} of node '
                  f'{nodeId} with abort code {abort_code:08X}')
            self.cnt['SDO read abort'] += 1
            return None
        nDatabytes = 4 - ((ret[0] >> 2) & 0b11) if ret[0] != 0x42 else 4
        data = []
        for i in range(nDatabytes):
            data.append(ret[4 + i])
        print(f'Got data: {data}')
        return int.from_bytes(data, 'little')

    def _anagateCbFunc(self):
        """Wraps the callback function for AnaGate |CAN| interfaces. This is
        neccessary in order to have access to the instance attributes.

        The callback function is called asychronous but the instance attributes
        are accessed in a thread-safe way.

        Returns
        -------
        cbFunc
            Function pointer to the callback function
        """

        def cbFunc(cobid, data, dlc, flag, handle):
            """Callback function.

            Appends incoming messages to the message queue and logs them.

            Parameters
            ----------
            cobid : :obj:`int`
                |CAN| identifier
            data : :class:`~ctypes.c_char` :func:`~cytpes.POINTER`
                |CAN| data - max length 8. Is converted to :obj:`bytes` for
                internal treatment using :func:`~ctypes.string_at` function. It
                is not possible to just use :class:`~ctypes.c_char_p` instead
                because bytes containing zero would be interpreted as end of
                data.
            dlc : :obj:`int`
                Data Length Code
            flag : :obj:`int`
                Message flags
            handle : :obj:`int`
                Internal handle of the AnaGate channel. Just needed for the API
                class to work.
            """
            data = ct.string_at(data, dlc)
            t = time.time()
            with self.__lock:
                self.__canMsgQueue.appendleft((cobid, data, dlc, flag, t))
            self.dumpMessage(cobid, data, dlc, flag)

        return cbFunc
    
    def dumpMessage(self,cobid, msg, dlc, flag):
        """Dumps a CANopen message to the screen and log file
    
        Parameters
        ----------
        cobid : :obj:`int`
            |CAN| identifier
        msg : :obj:`bytes`
            |CAN| data - max length 8
        dlc : :obj:`int`
            Data Length Code
        flag : :obj:`int`
            Flags, a combination of the :const:`canMSG_xxx` and
            :const:`canMSGERR_xxx` values
        """
    
        if (flag & canMSG_ERROR_FRAME != 0):
            print("***ERROR FRAME RECEIVED***")
        else:
            msgstr = '{:3X} {:d}   '.format(cobid, dlc)
            for i in range(len(msg)):
                msgstr += '{:02x}  '.format(msg[i])
            msgstr += '    ' * (8 - len(msg))

if __name__=='__main__':
    sdo = sdoReadCAN()
    NodeId = 3  # SSO AAT 2dF Simulator Y-Axis

    print('device type: 0x%x' % sdo.sdoRead(NodeId, 0x1000, 0))
    print('high voltage reference:', sdo.sdoRead(NodeId, 0x2201, 0))
    print('amplifier temperature:', sdo.sdoRead(NodeId, 0x2202, 0))
    print('system time:', sdo.sdoRead(NodeId, 0x2141, 0))
    print('control word:', sdo.sdoRead(NodeId, 0x6040, 0))
    print('status word:', sdo.sdoRead(NodeId, 0x6041, 0))
    print('mode of operation:', sdo.sdoRead(NodeId, 0x6060, 0))
    print('mode of operation display:', sdo.sdoRead(NodeId, 0x6061, 0))
    print('desired state:', sdo.sdoRead(NodeId, 0x2300, 0))
    msr = sdo.sdoRead(NodeId, 0x1002, 0)
    print('manufacturer status register:', msr)
    if msr & 0b100000000000:
        print('    enable input not active (11)')
    if msr & 0b10000000000000:
        print('    trying to stop motor (13)')
    if msr & 0b100000000000000:
        print('    motor brake activated (14)')
    if msr & 0b100000000000000:
        print('    PWM outputs disabled (15)')
    print('homing method:', sdo.sdoRead(NodeId, 0x6098, 0))
