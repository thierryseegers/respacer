find_path(KenLM_INCLUDE_DIRS NAMES "lm/model.hh" PATH_SUFFIXES kenlm)

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    find_library(KenLM_LIBRARIES "libkenlm.a")
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    find_library(KenLM_LIBRARIES "kenlm.lib")
endif()

find_package_handle_standard_args(KenLM DEFAULT_MSG 
    KenLM_INCLUDE_DIRS
    KenLM_LIBRARIES)
