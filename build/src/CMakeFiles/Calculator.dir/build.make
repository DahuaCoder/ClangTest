# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dario/Work/ClangTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dario/Work/ClangTest/build

# Include any dependencies generated for this target.
include src/CMakeFiles/Calculator.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Calculator.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Calculator.dir/flags.make

src/CMakeFiles/Calculator.dir/Main.cpp.o: src/CMakeFiles/Calculator.dir/flags.make
src/CMakeFiles/Calculator.dir/Main.cpp.o: ../src/Main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dario/Work/ClangTest/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/Calculator.dir/Main.cpp.o"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Calculator.dir/Main.cpp.o -c /home/dario/Work/ClangTest/src/Main.cpp

src/CMakeFiles/Calculator.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Calculator.dir/Main.cpp.i"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dario/Work/ClangTest/src/Main.cpp > CMakeFiles/Calculator.dir/Main.cpp.i

src/CMakeFiles/Calculator.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Calculator.dir/Main.cpp.s"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dario/Work/ClangTest/src/Main.cpp -o CMakeFiles/Calculator.dir/Main.cpp.s

src/CMakeFiles/Calculator.dir/Main.cpp.o.requires:
.PHONY : src/CMakeFiles/Calculator.dir/Main.cpp.o.requires

src/CMakeFiles/Calculator.dir/Main.cpp.o.provides: src/CMakeFiles/Calculator.dir/Main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/Calculator.dir/build.make src/CMakeFiles/Calculator.dir/Main.cpp.o.provides.build
.PHONY : src/CMakeFiles/Calculator.dir/Main.cpp.o.provides

src/CMakeFiles/Calculator.dir/Main.cpp.o.provides.build: src/CMakeFiles/Calculator.dir/Main.cpp.o

src/CMakeFiles/Calculator.dir/Calculator.cpp.o: src/CMakeFiles/Calculator.dir/flags.make
src/CMakeFiles/Calculator.dir/Calculator.cpp.o: ../src/Calculator.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dario/Work/ClangTest/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/Calculator.dir/Calculator.cpp.o"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Calculator.dir/Calculator.cpp.o -c /home/dario/Work/ClangTest/src/Calculator.cpp

src/CMakeFiles/Calculator.dir/Calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Calculator.dir/Calculator.cpp.i"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dario/Work/ClangTest/src/Calculator.cpp > CMakeFiles/Calculator.dir/Calculator.cpp.i

src/CMakeFiles/Calculator.dir/Calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Calculator.dir/Calculator.cpp.s"
	cd /home/dario/Work/ClangTest/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dario/Work/ClangTest/src/Calculator.cpp -o CMakeFiles/Calculator.dir/Calculator.cpp.s

src/CMakeFiles/Calculator.dir/Calculator.cpp.o.requires:
.PHONY : src/CMakeFiles/Calculator.dir/Calculator.cpp.o.requires

src/CMakeFiles/Calculator.dir/Calculator.cpp.o.provides: src/CMakeFiles/Calculator.dir/Calculator.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/Calculator.dir/build.make src/CMakeFiles/Calculator.dir/Calculator.cpp.o.provides.build
.PHONY : src/CMakeFiles/Calculator.dir/Calculator.cpp.o.provides

src/CMakeFiles/Calculator.dir/Calculator.cpp.o.provides.build: src/CMakeFiles/Calculator.dir/Calculator.cpp.o

# Object files for target Calculator
Calculator_OBJECTS = \
"CMakeFiles/Calculator.dir/Main.cpp.o" \
"CMakeFiles/Calculator.dir/Calculator.cpp.o"

# External object files for target Calculator
Calculator_EXTERNAL_OBJECTS =

src/Calculator: src/CMakeFiles/Calculator.dir/Main.cpp.o
src/Calculator: src/CMakeFiles/Calculator.dir/Calculator.cpp.o
src/Calculator: src/CMakeFiles/Calculator.dir/build.make
src/Calculator: src/CMakeFiles/Calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Calculator"
	cd /home/dario/Work/ClangTest/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Calculator.dir/build: src/Calculator
.PHONY : src/CMakeFiles/Calculator.dir/build

src/CMakeFiles/Calculator.dir/requires: src/CMakeFiles/Calculator.dir/Main.cpp.o.requires
src/CMakeFiles/Calculator.dir/requires: src/CMakeFiles/Calculator.dir/Calculator.cpp.o.requires
.PHONY : src/CMakeFiles/Calculator.dir/requires

src/CMakeFiles/Calculator.dir/clean:
	cd /home/dario/Work/ClangTest/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Calculator.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Calculator.dir/clean

src/CMakeFiles/Calculator.dir/depend:
	cd /home/dario/Work/ClangTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dario/Work/ClangTest /home/dario/Work/ClangTest/src /home/dario/Work/ClangTest/build /home/dario/Work/ClangTest/build/src /home/dario/Work/ClangTest/build/src/CMakeFiles/Calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Calculator.dir/depend
