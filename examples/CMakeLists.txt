cmake_minimum_required(VERSION 3.20)

project(Examples VERSION 0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(USE_MYMATH "Use my own math implementation" ON)

# configure a header file to pass some of the CMake settings to the source code
configure_file(config.h.in config.h)

if(USE_MYMATH)
  # add the MathFunctions library
  add_subdirectory(MathFunctions)
  list(APPEND EXTRA_LIBS MathFunctions)
  list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions")
endif()

add_executable(Examples main.cpp)

target_link_libraries(Examples PUBLIC ${EXTRA_LIBS})

# add the binary tree to the search path for include files
target_include_directories(Examples PUBLIC
  "${PROJECT_BINARY_DIR}"
  ${EXTRA_INCLUDES}
  )
