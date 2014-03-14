# CMake file to build the external dependencies

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

include(ExternalProject)

# create output directories
file(MAKE_DIRECTORY
  ${PROJECT_SOURCE_DIR}/externals/lib
  ${PROJECT_SOURCE_DIR}/externals/include
)

set(LIB_DIR "")
set(SCRIPT_SUFFIX .sh)

####################
# Google Mock
####################
ExternalProject_Add(
  googlemock
  INSTALL_DIR ${CMAKE_SOURCE_DIR}/externals
  URL http://googlemock.googlecode.com/files/gmock-1.6.0.zip
  CMAKE_ARGS
    -DCMAKE_PREFIX_PATH=${CMAKE_SOURCE_DIR}/externals
    -DCMAKE_MODULE_PATH=${PROJECT_SOURCE_DIR}/cmake/
    -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
    -DBUILD_SHARED_LIBS=OFF
  UPDATE_COMMAND ""
  INSTALL_COMMAND
    cp -rf <SOURCE_DIR>/gtest/include/gtest <INSTALL_DIR>/include &&
    cp -rf <SOURCE_DIR>/include/gmock <INSTALL_DIR>/include &&
    cp -f <BINARY_DIR>/${LIB_DIR}/${CMAKE_STATIC_LIBRARY_PREFIX}gmock${CMAKE_STATIC_LIBRARY_SUFFIX} <INSTALL_DIR>/lib/ &&
    cp -f <BINARY_DIR>/gtest/${LIB_DIR}/${CMAKE_STATIC_LIBRARY_PREFIX}gtest${CMAKE_STATIC_LIBRARY_SUFFIX} <INSTALL_DIR>/lib/ &&
    cp -f <BINARY_DIR>/${LIB_DIR}/${CMAKE_STATIC_LIBRARY_PREFIX}gmock_main${CMAKE_STATIC_LIBRARY_SUFFIX} <INSTALL_DIR>/lib/  &&
    cp -f <BINARY_DIR>/gtest/${LIB_DIR}/${CMAKE_STATIC_LIBRARY_PREFIX}gtest_main${CMAKE_STATIC_LIBRARY_SUFFIX} <INSTALL_DIR>/lib/
  )

# override GMock_LIBRARY_DIRS such that only the ones from external are used
ExternalProject_Get_Property(googlemock INSTALL_DIR)
set(GMOCK_LIBRARY_DIRS ${INSTALL_DIR})

