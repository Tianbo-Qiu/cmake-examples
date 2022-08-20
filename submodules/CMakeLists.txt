cmake_minimum_required(VERSION 3.20.0)

project(hello)

#  If you need compile_commands for vim-coc to resolve paths
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(adder)

add_subdirectory(external/glfw)

target_include_directories(${PROJECT_NAME}
  PUBLIC adder
  PUBLIC external/glfw/include
)

target_link_directories(${PROJECT_NAME}
  PRIVATE adder
  PRIVATE external/glfw/src
)

target_link_libraries(${PROJECT_NAME} adder glfw)
