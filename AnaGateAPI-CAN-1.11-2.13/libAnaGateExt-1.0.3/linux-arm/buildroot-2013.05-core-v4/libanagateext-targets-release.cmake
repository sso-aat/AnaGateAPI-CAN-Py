#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AnaGateExt" for configuration "Release"
SET_PROPERTY(TARGET AnaGateExt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(AnaGateExt PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "AnaGate"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGateExt/libAnaGateExt-1.0.3/linux-arm/buildroot-2013.05-core-v4/libAnaGateExtRelease.so"
  IMPORTED_SONAME_RELEASE "libAnaGateExtRelease.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS AnaGateExt )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_AnaGateExt "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGateExt/libAnaGateExt-1.0.3/linux-arm/buildroot-2013.05-core-v4/libAnaGateExtRelease.so" )

# Import target "AnaGateExtStatic" for configuration "Release"
SET_PROPERTY(TARGET AnaGateExtStatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(AnaGateExtStatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "AnaGateStatic"
  IMPORTED_LOCATION_RELEASE "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGateExt/libAnaGateExt-1.0.3/linux-arm/buildroot-2013.05-core-v4/libAnaGateExtStaticRelease.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS AnaGateExtStatic )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_AnaGateExtStatic "/mnt/srv-mail-daten/Projects/Import/Intern/libAnaGateExt/libAnaGateExt-1.0.3/linux-arm/buildroot-2013.05-core-v4/libAnaGateExtStaticRelease.a" )

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
