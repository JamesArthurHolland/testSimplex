# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/jamie/clion-2017.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/jamie/clion-2017.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jamie/Documents/testSimplex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jamie/Documents/testSimplex/cmake-build-debug

# Include any dependencies generated for this target.
include cpplex/pilal/CMakeFiles/pilal.dir/depend.make

# Include the progress variables for this target.
include cpplex/pilal/CMakeFiles/pilal.dir/progress.make

# Include the compile flags for this target's objects.
include cpplex/pilal/CMakeFiles/pilal.dir/flags.make

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o: cpplex/pilal/CMakeFiles/pilal.dir/flags.make
cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o: ../cpplex/pilal/src/matrix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamie/Documents/testSimplex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o"
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pilal.dir/src/matrix.cc.o -c /home/jamie/Documents/testSimplex/cpplex/pilal/src/matrix.cc

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pilal.dir/src/matrix.cc.i"
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamie/Documents/testSimplex/cpplex/pilal/src/matrix.cc > CMakeFiles/pilal.dir/src/matrix.cc.i

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pilal.dir/src/matrix.cc.s"
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamie/Documents/testSimplex/cpplex/pilal/src/matrix.cc -o CMakeFiles/pilal.dir/src/matrix.cc.s

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.requires:

.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.requires

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.provides: cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.requires
	$(MAKE) -f cpplex/pilal/CMakeFiles/pilal.dir/build.make cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.provides.build
.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.provides

cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.provides.build: cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o


# Object files for target pilal
pilal_OBJECTS = \
"CMakeFiles/pilal.dir/src/matrix.cc.o"

# External object files for target pilal
pilal_EXTERNAL_OBJECTS =

cpplex/pilal/libpilal.a: cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o
cpplex/pilal/libpilal.a: cpplex/pilal/CMakeFiles/pilal.dir/build.make
cpplex/pilal/libpilal.a: cpplex/pilal/CMakeFiles/pilal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jamie/Documents/testSimplex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpilal.a"
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && $(CMAKE_COMMAND) -P CMakeFiles/pilal.dir/cmake_clean_target.cmake
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pilal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpplex/pilal/CMakeFiles/pilal.dir/build: cpplex/pilal/libpilal.a

.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/build

cpplex/pilal/CMakeFiles/pilal.dir/requires: cpplex/pilal/CMakeFiles/pilal.dir/src/matrix.cc.o.requires

.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/requires

cpplex/pilal/CMakeFiles/pilal.dir/clean:
	cd /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal && $(CMAKE_COMMAND) -P CMakeFiles/pilal.dir/cmake_clean.cmake
.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/clean

cpplex/pilal/CMakeFiles/pilal.dir/depend:
	cd /home/jamie/Documents/testSimplex/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jamie/Documents/testSimplex /home/jamie/Documents/testSimplex/cpplex/pilal /home/jamie/Documents/testSimplex/cmake-build-debug /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal /home/jamie/Documents/testSimplex/cmake-build-debug/cpplex/pilal/CMakeFiles/pilal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpplex/pilal/CMakeFiles/pilal.dir/depend

