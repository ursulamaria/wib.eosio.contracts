# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts

# Include any dependencies generated for this target.
include eosio.token/CMakeFiles/eosio.token.wasm.dir/depend.make

# Include the progress variables for this target.
include eosio.token/CMakeFiles/eosio.token.wasm.dir/progress.make

# Include the compile flags for this target's objects.
include eosio.token/CMakeFiles/eosio.token.wasm.dir/flags.make

eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o: eosio.token/CMakeFiles/eosio.token.wasm.dir/flags.make
eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o: eosio.token/src/eosio.token.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o"
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token && /usr/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o -c /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token/src/eosio.token.cpp

eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.i"
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token && /usr/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token/src/eosio.token.cpp > CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.i

eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.s"
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token && /usr/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token/src/eosio.token.cpp -o CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.s

# Object files for target eosio.token.wasm
eosio_token_wasm_OBJECTS = \
"CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o"

# External object files for target eosio.token.wasm
eosio_token_wasm_EXTERNAL_OBJECTS =

eosio.token/eosio.token.wasm: eosio.token/CMakeFiles/eosio.token.wasm.dir/src/eosio.token.cpp.o
eosio.token/eosio.token.wasm: eosio.token/CMakeFiles/eosio.token.wasm.dir/build.make
eosio.token/eosio.token.wasm: eosio.token/CMakeFiles/eosio.token.wasm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eosio.token.wasm"
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eosio.token.wasm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
eosio.token/CMakeFiles/eosio.token.wasm.dir/build: eosio.token/eosio.token.wasm

.PHONY : eosio.token/CMakeFiles/eosio.token.wasm.dir/build

eosio.token/CMakeFiles/eosio.token.wasm.dir/clean:
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token && $(CMAKE_COMMAND) -P CMakeFiles/eosio.token.wasm.dir/cmake_clean.cmake
.PHONY : eosio.token/CMakeFiles/eosio.token.wasm.dir/clean

eosio.token/CMakeFiles/eosio.token.wasm.dir/depend:
	cd /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token /home/ursulamaria/Sciform/Projects/EOS/contracts/eos-smart-contracts/contracts/eosio.contracts/eosio.token/CMakeFiles/eosio.token.wasm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : eosio.token/CMakeFiles/eosio.token.wasm.dir/depend

