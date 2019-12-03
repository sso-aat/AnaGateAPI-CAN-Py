#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LuaAPIStatic" for configuration "Release"
SET_PROPERTY(TARGET LuaAPIStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(LuaAPIStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic;lua;dl;m"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libLuaAPIStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS LuaAPIStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_LuaAPIStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libLuaAPIStaticRelease.a" )

# Import target "API" for configuration "Release"
SET_PROPERTY(TARGET API APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(API PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "AnaGateExt"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libAPIRelease.so"
  IMPORTED_SONAME_RELEASE "libAPIRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS API )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_API "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libAPIRelease.so" )

# Import target "APIStatic" for configuration "Release"
SET_PROPERTY(TARGET APIStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(APIStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "AnaGateExtStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libAPIStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS APIStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_APIStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libAPIStaticRelease.a" )

# Import target "CANDLL" for configuration "Release"
SET_PROPERTY(TARGET CANDLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(CANDLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libCANDLLRelease.so"
  IMPORTED_SONAME_RELEASE "libCANDLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS CANDLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_CANDLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libCANDLLRelease.so" )

# Import target "CANDLLStatic" for configuration "Release"
SET_PROPERTY(TARGET CANDLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(CANDLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libCANDLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS CANDLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_CANDLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libCANDLLStaticRelease.a" )

# Import target "I2CDLL" for configuration "Release"
SET_PROPERTY(TARGET I2CDLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(I2CDLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libI2CDLLRelease.so"
  IMPORTED_SONAME_RELEASE "libI2CDLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS I2CDLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_I2CDLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libI2CDLLRelease.so" )

# Import target "I2CDLLStatic" for configuration "Release"
SET_PROPERTY(TARGET I2CDLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(I2CDLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libI2CDLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS I2CDLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_I2CDLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libI2CDLLStaticRelease.a" )

# Import target "SPIDLL" for configuration "Release"
SET_PROPERTY(TARGET SPIDLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(SPIDLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libSPIDLLRelease.so"
  IMPORTED_SONAME_RELEASE "libSPIDLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS SPIDLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_SPIDLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libSPIDLLRelease.so" )

# Import target "SPIDLLStatic" for configuration "Release"
SET_PROPERTY(TARGET SPIDLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(SPIDLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libSPIDLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS SPIDLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_SPIDLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libSPIDLLStaticRelease.a" )

# Import target "RenesasDLL" for configuration "Release"
SET_PROPERTY(TARGET RenesasDLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(RenesasDLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libRenesasDLLRelease.so"
  IMPORTED_SONAME_RELEASE "libRenesasDLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS RenesasDLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_RenesasDLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libRenesasDLLRelease.so" )

# Import target "RenesasDLLStatic" for configuration "Release"
SET_PROPERTY(TARGET RenesasDLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(RenesasDLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libRenesasDLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS RenesasDLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_RenesasDLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libRenesasDLLStaticRelease.a" )

# Import target "DIODLL" for configuration "Release"
SET_PROPERTY(TARGET DIODLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(DIODLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libDIODLLRelease.so"
  IMPORTED_SONAME_RELEASE "libDIODLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS DIODLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_DIODLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libDIODLLRelease.so" )

# Import target "DIODLLStatic" for configuration "Release"
SET_PROPERTY(TARGET DIODLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(DIODLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libDIODLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS DIODLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_DIODLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libDIODLLStaticRelease.a" )

# Import target "TestsystemDLL" for configuration "Release"
SET_PROPERTY(TARGET TestsystemDLL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(TestsystemDLL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "API"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libTestsystemDLLRelease.so"
  IMPORTED_SONAME_RELEASE "libTestsystemDLLRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS TestsystemDLL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_TestsystemDLL "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libTestsystemDLLRelease.so" )

# Import target "TestsystemDLLStatic" for configuration "Release"
SET_PROPERTY(TARGET TestsystemDLLStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(TestsystemDLLStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "APIStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libTestsystemDLLStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS TestsystemDLLStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_TestsystemDLLStatic "/mnt/srv-mail-daten/Projects/Import/Intern/anagate/anagate-api-2.13/linux-arm/gcc4_3/libTestsystemDLLStaticRelease.a" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
