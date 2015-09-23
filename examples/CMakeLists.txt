find_package(Boost REQUIRED
	COMPONENTS system thread)
find_package(BZip2 REQUIRED)
find_package(KenLM REQUIRED)
find_package(ZLIB REQUIRED)

include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${KenLM_INCLUDE_DIRS})

add_executable(example example.cpp)

set_target_properties(example PROPERTIES
	CXX_STANDARD 14
	CXX_STANDARD_REQUIRED ON)

target_link_libraries(example
	${Boost_LIBRARIES}
    ${BZIP2_LIBRARIES}
    ${KenLM_LIBRARIES}
	${ZLIB_LIBRARIES})

file(COPY
        ${CMAKE_CURRENT_SOURCE_DIR}/aspell_en_expanded
        ${CMAKE_CURRENT_SOURCE_DIR}/romeo_and_juliet.mmap
    DESTINATION
        ${CMAKE_CURRENT_BINARY_DIR})
