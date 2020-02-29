get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set (LYXINI_INCLUDE_DIR  "${PACKAGE_PREFIX_DIR}/include/")
set (LYXNIN_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include/")
set (LYXINI_ROOT_DIR     "${PACKAGE_PREFIX_DIR}")