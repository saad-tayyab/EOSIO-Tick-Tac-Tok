# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct

# Include any dependencies generated for this target.
include CMakeFiles/ordercontrct.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ordercontrct.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ordercontrct.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ordercontrct.dir/flags.make

CMakeFiles/ordercontrct.dir/ordercontrct.obj: CMakeFiles/ordercontrct.dir/flags.make
CMakeFiles/ordercontrct.dir/ordercontrct.obj: /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src/ordercontrct.cpp
CMakeFiles/ordercontrct.dir/ordercontrct.obj: /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src/../ricardian/hello.contracts.md
CMakeFiles/ordercontrct.dir/ordercontrct.obj: CMakeFiles/ordercontrct.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ordercontrct.dir/ordercontrct.obj"
	//usr/local/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ordercontrct.dir/ordercontrct.obj -MF CMakeFiles/ordercontrct.dir/ordercontrct.obj.d -o CMakeFiles/ordercontrct.dir/ordercontrct.obj -c /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src/ordercontrct.cpp

CMakeFiles/ordercontrct.dir/ordercontrct.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ordercontrct.dir/ordercontrct.i"
	//usr/local/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src/ordercontrct.cpp > CMakeFiles/ordercontrct.dir/ordercontrct.i

CMakeFiles/ordercontrct.dir/ordercontrct.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ordercontrct.dir/ordercontrct.s"
	//usr/local/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src/ordercontrct.cpp -o CMakeFiles/ordercontrct.dir/ordercontrct.s

# Object files for target ordercontrct
ordercontrct_OBJECTS = \
"CMakeFiles/ordercontrct.dir/ordercontrct.obj"

# External object files for target ordercontrct
ordercontrct_EXTERNAL_OBJECTS =

ordercontrct.wasm: CMakeFiles/ordercontrct.dir/ordercontrct.obj
ordercontrct.wasm: CMakeFiles/ordercontrct.dir/build.make
ordercontrct.wasm: CMakeFiles/ordercontrct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ordercontrct.wasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ordercontrct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ordercontrct.dir/build: ordercontrct.wasm
.PHONY : CMakeFiles/ordercontrct.dir/build

CMakeFiles/ordercontrct.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ordercontrct.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ordercontrct.dir/clean

CMakeFiles/ordercontrct.dir/depend:
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct/CMakeFiles/ordercontrct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ordercontrct.dir/depend

