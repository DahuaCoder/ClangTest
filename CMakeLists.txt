cmake_minimum_required(VERSION 2.8)
project(Calc)

# The version number.
set (Calc_VERSION_MAJOR 1)
set (Calc_VERSION_MINOR 0)

# configure a header file to pass some of the CMake settings
# to the source code.
configure_file (
    "${PROJECT_SOURCE_DIR}/config/config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/include/config.h"
    )

# set default build type to debug
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# external libraries
add_subdirectory(externals)

# set path to externals
set(EXTERNALS_INC_DIR ${PROJECT_SOURCE_DIR}/externals/include)
set(EXTERNALS_LIB_DIR ${PROJECT_SOURCE_DIR}/externals/lib)

set(CMAKE_INCLUDE_PATH ${EXTERNALS_INC_DIR} ${CMAKE_INCLUDE_PATH})
set(CMAKE_LIBRARY_PATH ${EXTERNALS_LIB_DIR} ${CMAKE_LIBRARY_PATH})


#
# Generic Compiler Flags
#
include(CheckCXXCompilerFlag)
enable_language(CXX)

check_cxx_compiler_flag("-std=c++11" COMPILER_KNOWS_CXX11)
if(COMPILER_KNOWS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
else(COMPILER_KNOWS_CXX11)
    check_cxx_compiler_flag("-std=c++0x" COMPILER_KNOWS_CXX0X)
    if(COMPILER_KNOWS_CXX0X)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    endif(COMPILER_KNOWS_CXX0X)
endif(COMPILER_KNOWS_CXX11)

# Generic compiler flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pthread")

# Determine compiler
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y -g -v -W")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ")
    execute_process(COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
endif()


# set path to additional cmake modules
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/modules)


# set project include directory
set(${PROJECT_NAME}_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${@PROJECT_NAME@_INCLUDE_DIRS})
file(GLOB SRC_HEADER_FILES "${PROJECT_SOURCE_DIR}/include/*.h")


add_subdirectory(src)

# set installation prefix
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})


# unit test require gmock
find_package(GMock)
set(GMOCK_LIBRARY_DIRS ${CMAKE_SOURCE_DIR}/externals)

if(GMOCK_FOUND)
    add_subdirectory(unittests)
endif()


# Cmake test
enable_testing()


