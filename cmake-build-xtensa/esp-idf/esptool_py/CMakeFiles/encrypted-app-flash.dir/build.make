# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa

# Utility rule file for encrypted-app-flash.

# Include the progress variables for this target.
include esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/progress.make

esp-idf/esptool_py/CMakeFiles/encrypted-app-flash:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py && "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E echo "Error: The target encrypted-app-flash requires"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py && "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E echo "CONFIG_SECURE_FLASH_ENCRYPTION_MODE_DEVELOPMENT to be enabled."
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py && "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E env "FAIL_MESSAGE=Failed executing target (see errors on lines above)" "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -P /Users/domenbukovac/esp/esp-idf/tools/cmake/scripts/fail.cmake

encrypted-app-flash: esp-idf/esptool_py/CMakeFiles/encrypted-app-flash
encrypted-app-flash: esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/build.make

.PHONY : encrypted-app-flash

# Rule to build all files generated by this target.
esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/build: encrypted-app-flash

.PHONY : esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/build

esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py && $(CMAKE_COMMAND) -P CMakeFiles/encrypted-app-flash.dir/cmake_clean.cmake
.PHONY : esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/clean

esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/esptool_py /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esptool_py/CMakeFiles/encrypted-app-flash.dir/depend

