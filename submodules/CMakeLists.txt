cmake_minimum_required(VERSION 3.20.0)

project(hello)

#  If you need compile_commands for vim-coc to resolve paths
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(adder)

target_include_directories(${PROJECT_NAME} PUBLIC adder)

target_link_directories(${PROJECT_NAME} PRIVATE adder)

target_link_libraries(${PROJECT_NAME} adder)
