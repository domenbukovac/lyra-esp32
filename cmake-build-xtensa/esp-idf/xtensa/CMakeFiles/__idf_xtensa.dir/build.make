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
CMAKE_COMMAND = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa

# Include any dependencies generated for this target.
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend.make

# Include the progress variables for this target.
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj: /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/debug_helpers.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers.c > CMakeFiles/__idf_xtensa.dir/debug_helpers.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/debug_helpers.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers.c -o CMakeFiles/__idf_xtensa.dir/debug_helpers.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj: /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj -c /Users/domenbukovac/esp/esp-idf/components/xtensa/debug_helpers_asm.S

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj: /Users/domenbukovac/esp/esp-idf/components/xtensa/eri.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_xtensa.dir/eri.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/xtensa/eri.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/eri.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/xtensa/eri.c > CMakeFiles/__idf_xtensa.dir/eri.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/eri.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/xtensa/eri.c -o CMakeFiles/__idf_xtensa.dir/eri.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj: /Users/domenbukovac/esp/esp-idf/components/xtensa/trax.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_xtensa.dir/trax.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/xtensa/trax.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/trax.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/xtensa/trax.c > CMakeFiles/__idf_xtensa.dir/trax.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/trax.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/xtensa/trax.c -o CMakeFiles/__idf_xtensa.dir/trax.c.s

# Object files for target __idf_xtensa
__idf_xtensa_OBJECTS = \
"CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj" \
"CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj" \
"CMakeFiles/__idf_xtensa.dir/eri.c.obj" \
"CMakeFiles/__idf_xtensa.dir/trax.c.obj"

# External object files for target __idf_xtensa
__idf_xtensa_EXTERNAL_OBJECTS =

esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build.make
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libxtensa.a"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && $(CMAKE_COMMAND) -P CMakeFiles/__idf_xtensa.dir/cmake_clean_target.cmake
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_xtensa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build: esp-idf/xtensa/libxtensa.a

.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa && $(CMAKE_COMMAND) -P CMakeFiles/__idf_xtensa.dir/cmake_clean.cmake
.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/clean

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend

