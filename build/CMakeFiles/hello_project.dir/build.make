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
CMAKE_SOURCE_DIR = /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build

# Utility rule file for hello_project.

# Include any custom commands dependencies for this target.
include CMakeFiles/hello_project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_project.dir/progress.make

CMakeFiles/hello_project: CMakeFiles/hello_project-complete

CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-install
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-mkdir
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-download
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-update
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-patch
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-configure
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-build
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-install
CMakeFiles/hello_project-complete: hello_project-prefix/src/hello_project-stamp/hello_project-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'hello_project'"
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles
	/Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles/hello_project-complete
	/Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-done

hello_project-prefix/src/hello_project-stamp/hello_project-build: hello_project-prefix/src/hello_project-stamp/hello_project-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && $(MAKE)

hello_project-prefix/src/hello_project-stamp/hello_project-configure: hello_project-prefix/tmp/hello_project-cfgcmd.txt
hello_project-prefix/src/hello_project-stamp/hello_project-configure: hello_project-prefix/src/hello_project-stamp/hello_project-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -DCMAKE_TOOLCHAIN_FILE=//usr/local/opt/eosio.cdt/lib/cmake/eosio.cdt/EosioWasmToolchain.cmake "-GUnix Makefiles" /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-configure

hello_project-prefix/src/hello_project-stamp/hello_project-download: hello_project-prefix/src/hello_project-stamp/hello_project-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'hello_project'"
	/Applications/CMake.app/Contents/bin/cmake -E echo_append
	/Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-download

hello_project-prefix/src/hello_project-stamp/hello_project-install: hello_project-prefix/src/hello_project-stamp/hello_project-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-install

hello_project-prefix/src/hello_project-stamp/hello_project-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'hello_project'"
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/tmp
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src
	/Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp
	/Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-mkdir

hello_project-prefix/src/hello_project-stamp/hello_project-patch: hello_project-prefix/src/hello_project-stamp/hello_project-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src && /Applications/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-patch

hello_project-prefix/src/hello_project-stamp/hello_project-test: hello_project-prefix/src/hello_project-stamp/hello_project-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/ordercontrct && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-test

hello_project-prefix/src/hello_project-stamp/hello_project-update: hello_project-prefix/src/hello_project-stamp/hello_project-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No update step for 'hello_project'"
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src && /Applications/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/src && /Applications/CMake.app/Contents/bin/cmake -E touch /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/hello_project-prefix/src/hello_project-stamp/hello_project-update

hello_project: CMakeFiles/hello_project
hello_project: CMakeFiles/hello_project-complete
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-build
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-configure
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-download
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-install
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-mkdir
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-patch
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-test
hello_project: hello_project-prefix/src/hello_project-stamp/hello_project-update
hello_project: CMakeFiles/hello_project.dir/build.make
.PHONY : hello_project

# Rule to build all files generated by this target.
CMakeFiles/hello_project.dir/build: hello_project
.PHONY : CMakeFiles/hello_project.dir/build

CMakeFiles/hello_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_project.dir/clean

CMakeFiles/hello_project.dir/depend:
	cd /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build /Users/saadtayyab/Desktop/Projects/EOSIO/EOSIO-Tick-Tac-Tok/build/CMakeFiles/hello_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_project.dir/depend

