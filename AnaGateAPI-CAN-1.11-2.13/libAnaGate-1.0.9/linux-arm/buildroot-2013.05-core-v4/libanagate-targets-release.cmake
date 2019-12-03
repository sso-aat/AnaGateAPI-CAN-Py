#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AnaGate" for configuration "Release"
SET_PROPERTY(TARGET AnaGate APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(AnaGate PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "-lpthread"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGate/libAnaGate-1.0.9/linux-arm/buildroot-2013.05-core-v4/libAnaGateRelease.so"
  IMPORTED_SONAME_RELEASE "libAnaGateRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS AnaGate )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_AnaGate "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGate/libAnaGate-1.0.9/linux-arm/buildroot-2013.05-core-v4/libAnaGateRelease.so" )

# Import target "AnaGateStatic" for configuration "Release"
SET_PROPERTY(TARGET AnaGateStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(AnaGateStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "-lpthread"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGate/libAnaGate-1.0.9/linux-arm/buildroot-2013.05-core-v4/libAnaGateStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS AnaGateStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_AnaGateStatic "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGate/libAnaGate-1.0.9/linux-arm/buildroot-2013.05-core-v4/libAnaGateStaticRelease.a" )

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
