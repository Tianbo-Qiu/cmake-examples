# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tianboqiu/c/cpp/cmake-examples/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tianboqiu/c/cpp/cmake-examples/examples/build

# Include any dependencies generated for this target.
include CMakeFiles/Examples.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Examples.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Examples.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Examples.dir/flags.make

CMakeFiles/Examples.dir/main.cpp.o: CMakeFiles/Examples.dir/flags.make
CMakeFiles/Examples.dir/main.cpp.o: /Users/tianboqiu/c/cpp/cmake-examples/examples/main.cpp
CMakeFiles/Examples.dir/main.cpp.o: CMakeFiles/Examples.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tianboqiu/c/cpp/cmake-examples/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Examples.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Examples.dir/main.cpp.o -MF CMakeFiles/Examples.dir/main.cpp.o.d -o CMakeFiles/Examples.dir/main.cpp.o -c /Users/tianboqiu/c/cpp/cmake-examples/examples/main.cpp

CMakeFiles/Examples.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Examples.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianboqiu/c/cpp/cmake-examples/examples/main.cpp > CMakeFiles/Examples.dir/main.cpp.i

CMakeFiles/Examples.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Examples.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianboqiu/c/cpp/cmake-examples/examples/main.cpp -o CMakeFiles/Examples.dir/main.cpp.s

# Object files for target Examples
Examples_OBJECTS = \
"CMakeFiles/Examples.dir/main.cpp.o"

# External object files for target Examples
Examples_EXTERNAL_OBJECTS =

Examples: CMakeFiles/Examples.dir/main.cpp.o
Examples: CMakeFiles/Examples.dir/build.make
Examples: CMakeFiles/Examples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tianboqiu/c/cpp/cmake-examples/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Examples"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Examples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Examples.dir/build: Examples
.PHONY : CMakeFiles/Examples.dir/build

CMakeFiles/Examples.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Examples.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Examples.dir/clean

CMakeFiles/Examples.dir/depend:
	cd /Users/tianboqiu/c/cpp/cmake-examples/examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tianboqiu/c/cpp/cmake-examples/examples /Users/tianboqiu/c/cpp/cmake-examples/examples /Users/tianboqiu/c/cpp/cmake-examples/examples/build /Users/tianboqiu/c/cpp/cmake-examples/examples/build /Users/tianboqiu/c/cpp/cmake-examples/examples/build/CMakeFiles/Examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Examples.dir/depend
