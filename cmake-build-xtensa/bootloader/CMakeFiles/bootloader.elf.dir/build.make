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
CMAKE_SOURCE_DIR = /Users/domenbukovac/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader

# Include any dependencies generated for this target.
include CMakeFiles/bootloader.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bootloader.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bootloader.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	"/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E touch /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/project_elf_src.c

CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj: CMakeFiles/bootloader.elf.dir/flags.make
CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj   -c /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/project_elf_src.c

CMakeFiles/bootloader.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bootloader.elf.dir/project_elf_src.c.i"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/project_elf_src.c > CMakeFiles/bootloader.elf.dir/project_elf_src.c.i

CMakeFiles/bootloader.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bootloader.elf.dir/project_elf_src.c.s"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/project_elf_src.c -o CMakeFiles/bootloader.elf.dir/project_elf_src.c.s

# Object files for target bootloader.elf
bootloader_elf_OBJECTS = \
"CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj"

# External object files for target bootloader.elf
bootloader_elf_EXTERNAL_OBJECTS =

bootloader.elf: CMakeFiles/bootloader.elf.dir/project_elf_src.c.obj
bootloader.elf: CMakeFiles/bootloader.elf.dir/build.make
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/main/libmain.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/xtensa/esp32/libhal.a
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/bootloader/subproject/main/esp32.bootloader.ld
bootloader.elf: /Users/domenbukovac/esp/esp-idf/components/bootloader/subproject/main/esp32.bootloader.rom.ld
bootloader.elf: CMakeFiles/bootloader.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable bootloader.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bootloader.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bootloader.elf.dir/build: bootloader.elf

.PHONY : CMakeFiles/bootloader.elf.dir/build

CMakeFiles/bootloader.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bootloader.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bootloader.elf.dir/clean

CMakeFiles/bootloader.elf.dir/depend: project_elf_src.c
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/esp/esp-idf/components/bootloader/subproject /Users/domenbukovac/esp/esp-idf/components/bootloader/subproject /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/bootloader/CMakeFiles/bootloader.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bootloader.elf.dir/depend

