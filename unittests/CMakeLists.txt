###################################################
# Create test executables for every testclass (no coverage measurement) 
###################################################


find_package(GMock REQUIRED)
find_package(GTest REQUIRED)

set(${PROJECT_NAME}_UNITTEST_INCLUDE_DIRS
  ${GTEST_INCLUDE_DIRS}
  ${GMOCK_INCLUDE_DIRS}
  ${@PROJECT_NAME@_INCLUDE_DIRS}
  ./include)


if(GTEST_FOUND AND GMOCK_FOUND)
  include_directories(${@PROJECT_NAME@_UNITTEST_INCLUDE_DIRS})
    
  function(register_test TEST_FILE)
      get_filename_component(TEST_NAME ${TEST_FILE} NAME)
      message(STATUS "Adding " ${TEST_NAME})
      add_executable(${TEST_NAME} ${TEST_FILE}.cpp)
      target_link_libraries(${TEST_NAME} ${GTEST_BOTH_LIBRARIES} ${GMOCK_BOTH_LIBRARIES} ${Boost_LIBRARIES} ${@PROJECT_NAME@_LIBRARIES} ${ARGN})
      gtest_add_tests(${TEST_NAME} "" ${TEST_FILE}.cpp)
      set(UNITTEST_SOURCES ${UNITTEST_SOURCES} ${TEST_FILE}.cpp PARENT_SCOPE)
endfunction()

  register_test(src/Test_Calculator)
endif()  


###################################################
# Create a single test executable including all testclass 
###################################################

set(${PROJECT_NAME}_UNITTEST_NAME 
  unittests
)

# Find all header files
FILE(GLOB UNITTEST_HEADER_FILES include/*.h)

set(@PROJECT_NAME@_UNITTEST_SOURCES
  ${UNITTEST_SOURCES}
  ${UNITTEST_HEADER_FILES}
)

if(GTEST_FOUND AND GMOCK_FOUND)
  set(${PROJECT_NAME}_UNITTEST_LIBRARIES 
    ${GTEST_BOTH_LIBRARIES} 
    ${GMOCK_BOTH_LIBRARIES} 
    ${@PROJECT_NAME@_LIBRARIES}
    ${Boost_LIBRARIES})
  if(UNIX)
    find_package(Threads) # GTest needs this and it's a static library
    set(${PROJECT_NAME}_UNITTEST_LIBRARIES 
      ${@PROJECT_NAME@_UNITTEST_LIBRARIES} 
      ${CMAKE_THREAD_LIBS_INIT})
  endif()  
  include_directories(${@PROJECT_NAME@_UNITTEST_INCLUDE_DIRS})
  add_executable(${@PROJECT_NAME@_UNITTEST_NAME} ${@PROJECT_NAME@_UNITTEST_SOURCES})
  target_link_libraries(${@PROJECT_NAME@_UNITTEST_NAME} ${@PROJECT_NAME@_UNITTEST_LIBRARIES} )
endif()  



    
    
