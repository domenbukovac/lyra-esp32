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

# Include any dependencies generated for this target.
include esp-idf/soc/CMakeFiles/__idf_soc.dir/depend.make

# Include the progress variables for this target.
include esp-idf/soc/CMakeFiles/__idf_soc.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/cpu_util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/cpu_util.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/cpu_util.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/cpu_util.c > CMakeFiles/__idf_soc.dir/src/cpu_util.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/cpu_util.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/cpu_util.c -o CMakeFiles/__idf_soc.dir/src/cpu_util.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/memory_layout_utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/memory_layout_utils.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/memory_layout_utils.c > CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/memory_layout_utils.c -o CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/lldesc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/lldesc.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/lldesc.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/lldesc.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/lldesc.c > CMakeFiles/__idf_soc.dir/src/lldesc.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/lldesc.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/lldesc.c -o CMakeFiles/__idf_soc.dir/src/lldesc.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/soc_include_legacy_warn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/soc_include_legacy_warn.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/soc_include_legacy_warn.c > CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/soc_include_legacy_warn.c -o CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/compare_set.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/compare_set.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/compare_set.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/compare_set.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/compare_set.c > CMakeFiles/__idf_soc.dir/src/compare_set.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/compare_set.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/compare_set.c -o CMakeFiles/__idf_soc.dir/src/compare_set.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk_init.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk_init.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_clk_init.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_init.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_init.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_init.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_pm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_pm.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_pm.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_pm.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_sleep.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_sleep.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_sleep.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_sleep.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_time.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_time.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_time.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_wdt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_wdt.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_wdt.c > CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/rtc_wdt.c -o CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.s

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj: esp-idf/soc/CMakeFiles/__idf_soc.dir/flags.make
esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj: /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/soc_memory_layout.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/soc_memory_layout.c

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/soc_memory_layout.c > CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.i

esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/soc/src/esp32/soc_memory_layout.c -o CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.s

# Object files for target __idf_soc
__idf_soc_OBJECTS = \
"CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj" \
"CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj" \
"CMakeFiles/__idf_soc.dir/src/lldesc.c.obj" \
"CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj" \
"CMakeFiles/__idf_soc.dir/src/compare_set.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj" \
"CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj"

# External object files for target __idf_soc
__idf_soc_EXTERNAL_OBJECTS =

esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/cpu_util.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/memory_layout_utils.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/lldesc.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/soc_include_legacy_warn.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/compare_set.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_clk_init.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_init.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_pm.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_sleep.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_time.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/rtc_wdt.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/src/esp32/soc_memory_layout.c.obj
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/build.make
esp-idf/soc/libsoc.a: esp-idf/soc/CMakeFiles/__idf_soc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX static library libsoc.a"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_soc.dir/cmake_clean_target.cmake
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_soc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/soc/CMakeFiles/__idf_soc.dir/build: esp-idf/soc/libsoc.a

.PHONY : esp-idf/soc/CMakeFiles/__idf_soc.dir/build

esp-idf/soc/CMakeFiles/__idf_soc.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_soc.dir/cmake_clean.cmake
.PHONY : esp-idf/soc/CMakeFiles/__idf_soc.dir/clean

esp-idf/soc/CMakeFiles/__idf_soc.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/soc /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/soc/CMakeFiles/__idf_soc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/soc/CMakeFiles/__idf_soc.dir/depend

