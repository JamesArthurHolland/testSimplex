cmake_minimum_required(VERSION 3.9)
project(testSimplex)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_MODULE_PATH
    ${CMAKE_SOURCE_DIR}/cmakeModules
)
set( TARGET testSimplex )

find_package(CLP REQUIRED)

add_executable(${TARGET} main.cpp)
target_include_directories(${TARGET} PUBLIC ${CLP_INCLUDE_DIRS})
target_link_libraries(${TARGET} ${CLP_LIBRARIES})

target_link_libraries(${TARGET} pilal)
target_link_libraries(${TARGET} simplex)
