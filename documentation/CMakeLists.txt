find_package(Doxygen REQUIRED)

if(DOXYGEN_FOUND)
    set(DOXYFILE_IN ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in)
    set(DOXYFILE_CONFIGURED ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)
    set(DOCUMENTATION_INDEX_FILE ${CMAKE_CURRENT_BINARY_DIR}/htdocs/index.html)

    configure_file(${DOXYFILE_IN} ${DOXYFILE_CONFIGURED})

    add_custom_command(
        OUTPUT ${DOCUMENTATION_INDEX_FILE}
        COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYFILE_CONFIGURED}
        DEPENDS ${DOXYFILE_CONFIGURED} ${PROJECT_SOURCE_DIR}/include/respacer.h
    )

    add_custom_target(documentation ALL
        DEPENDS ${DOCUMENTATION_INDEX_FILE}
        COMMENT "Generating API documentation with Doxygen" VERBATIM
        SOURCES ${DOXYFILE_IN})
endif()
