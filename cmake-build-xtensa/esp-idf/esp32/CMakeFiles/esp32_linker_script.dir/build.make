# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6262.62/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6262.62/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa

# Utility rule file for esp32_linker_script.

# Include the progress variables for this target.
include esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/progress.make

esp-idf/esp32/CMakeFiles/esp32_linker_script: esp-idf/esp32/esp32_out.ld


esp-idf/esp32/esp32_out.ld: /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.ld
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating linker script..."
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc -C -P -x c -E -o esp32_out.ld -I /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/config /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.ld

esp32_linker_script: esp-idf/esp32/CMakeFiles/esp32_linker_script
esp32_linker_script: esp-idf/esp32/esp32_out.ld
esp32_linker_script: esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/build.make

.PHONY : esp32_linker_script

# Rule to build all files generated by this target.
esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/build: esp32_linker_script

.PHONY : esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/build

esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 && $(CMAKE_COMMAND) -P CMakeFiles/esp32_linker_script.dir/cmake_clean.cmake
.PHONY : esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/clean

esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp32/CMakeFiles/esp32_linker_script.dir/depend

