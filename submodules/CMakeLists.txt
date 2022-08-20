cmake_minimum_required(VERSION 3.20.0)

project(hello)

# If you need compile_commands for vim-coc to resolve paths
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(adder)

add_subdirectory(external/glfw)

# download all the submodules
# find_package(Git QUITE)
# if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}"/.git)
#   # update submodules as needed
#   option(GIT_SUBMODULE "Check submoudles during build" ON)
#   if(GIT_SUBMODULE)
#     message(STATUS "Submodule update")
#     execute_process(
#       COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
#       WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
#       RESULT_VARIABLE GIT_SUBMOD_RESULT)
#     if(NOT GIT_SUBMOD_RESULT EQUAL "0")
#       message(
#         FATAL_ERROR
#           "git submodule update --init failed with ${GIT_SUBMOD_RESULT}, please checkout submodules"
#       )
#     endif()
#   endif()
# endif()

# check all the submodules
# if(NOT EXISTS "${PROJECT_SOURCE_DIR}/external/glfw/CMakeLists.txt")
#   message(FATAL_ERROR "The glfw submodules was not downloaded! GIT_SUBMODULE was turned off or failed.")
# endif()

target_include_directories(
  ${PROJECT_NAME}
  PUBLIC adder
  PUBLIC external/glfw/include)

target_link_directories(${PROJECT_NAME} PRIVATE adder PRIVATE external/glfw/src)

target_link_libraries(${PROJECT_NAME} adder glfw)
