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

# Utility rule file for lib.

# Include the progress variables for this target.
include esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/progress.make

esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib: esp-idf/mbedtls/mbedtls/library/libmbedtls.a


lib: esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib
lib: esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/build.make

.PHONY : lib

# Rule to build all files generated by this target.
esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/build: lib

.PHONY : esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/build

esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/mbedtls/mbedtls/library && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/clean

esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/library /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/mbedtls/mbedtls/library /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/mbedtls/mbedtls/library/CMakeFiles/lib.dir/depend

