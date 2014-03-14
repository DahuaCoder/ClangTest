cmake_minimum_required(VERSION 2.8)
project(Calculator)

# The version number.
set (Calculator_VERSION_MAJOR 1)
set (Calculator_VERSION_MINOR 0)


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

# Cmake test
enable_testing()

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

# Determine compiler
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -std=c++1y -O1 -fno-omit-frame-pointer -g -v")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    execute_process(COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
endif()

# set project include directory
set(${PROJECT_NAME}_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${@PROJECT_NAME@_INCLUDE_DIRS})
file(GLOB SRC_HEADER_FILES "${PROJECT_SOURCE_DIR}/include/*.h")


add_subdirectory(src)

# set installation prefix
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

