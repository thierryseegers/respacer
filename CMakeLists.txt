cmake_minimum_required(VERSION 3.1)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake" "${CMAKE_CURRENT_LIST_DIR}/cmake/Modules")

project(respace)

set(VERSION_MAJOR 1)
set(VERSION_MINOR 0)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_subdirectory(documentation)
add_subdirectory(examples)
add_subdirectory(include)

install(FILES
        ${PROJECT_SOURCE_DIR}/include/respacer.h
    DESTINATION
        include)
install(DIRECTORY
        ${PROJECT_BINARY_DIR}/documentation/htdocs
    DESTINATION
        documentation)

set(CPACK_GENERATOR ZIP)
set(CPACK_PACKAGE_FILE_NAME ${CMAKE_PROJECT_NAME}_${VERSION_MAJOR}_${VERSION_MINOR})
include(CPack)
