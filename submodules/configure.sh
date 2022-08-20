#! /bin/sh

# -D means option e.g.
# option(GLFW_BUILD_DOCS "Build the GLFW documentation" ON)
cmake -DGLFW_BUILD_DOCS=OFF -S . -B build

cp build/compile_commands.json .
