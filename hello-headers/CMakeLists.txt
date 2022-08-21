cmake_minimum_required(VERSION 3.20.0)

project(hello_headers)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(SOURCES src/adder.cpp src/main.cpp)

add_executable(hello_headers ${SOURCES})

target_include_directories(hello_headers PRIVATE ${PROJECT_SOURCE_DIR}/include)
