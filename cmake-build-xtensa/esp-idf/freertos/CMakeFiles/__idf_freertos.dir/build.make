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

# Include any dependencies generated for this target.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend.make

# Include the progress variables for this target.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/croutine.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/croutine.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/croutine.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/croutine.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/croutine.c > CMakeFiles/__idf_freertos.dir/croutine.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/croutine.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/croutine.c -o CMakeFiles/__idf_freertos.dir/croutine.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/event_groups.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/event_groups.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/event_groups.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/event_groups.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/event_groups.c > CMakeFiles/__idf_freertos.dir/event_groups.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/event_groups.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/event_groups.c -o CMakeFiles/__idf_freertos.dir/event_groups.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/FreeRTOS-openocd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/FreeRTOS-openocd.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/FreeRTOS-openocd.c > CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/FreeRTOS-openocd.c -o CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/list.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/list.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/list.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/list.c > CMakeFiles/__idf_freertos.dir/list.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/list.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/list.c -o CMakeFiles/__idf_freertos.dir/list.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/port.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/port.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/port.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/port.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/port.c > CMakeFiles/__idf_freertos.dir/port.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/port.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/port.c -o CMakeFiles/__idf_freertos.dir/port.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/portasm.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/portasm.S.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/portasm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/portasm.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/portasm.S.obj -c /Users/domenbukovac/esp/esp-idf/components/freertos/portasm.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/queue.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/queue.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/queue.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/queue.c > CMakeFiles/__idf_freertos.dir/queue.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/queue.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/queue.c -o CMakeFiles/__idf_freertos.dir/queue.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/tasks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/tasks.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/tasks.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/tasks.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/tasks.c > CMakeFiles/__idf_freertos.dir/tasks.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/tasks.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/tasks.c -o CMakeFiles/__idf_freertos.dir/tasks.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/timers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/timers.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/timers.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/timers.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/timers.c > CMakeFiles/__idf_freertos.dir/timers.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/timers.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/timers.c -o CMakeFiles/__idf_freertos.dir/timers.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_context.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_context.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_init.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/xtensa_init.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_init.c > CMakeFiles/__idf_freertos.dir/xtensa_init.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/xtensa_init.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_init.c -o CMakeFiles/__idf_freertos.dir/xtensa_init.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/xtensa_intr.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr.c > CMakeFiles/__idf_freertos.dir/xtensa_intr.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/xtensa_intr.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr.c -o CMakeFiles/__idf_freertos.dir/xtensa_intr.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_intr_asm.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_overlay_os_hook.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj   -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_overlay_os_hook.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.i"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_overlay_os_hook.c > CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.s"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_overlay_os_hook.c -o CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_vector_defaults.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_vector_defaults.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj: /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_vectors.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && /Users/domenbukovac/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj -c /Users/domenbukovac/esp/esp-idf/components/freertos/xtensa_vectors.S

# Object files for target __idf_freertos
__idf_freertos_OBJECTS = \
"CMakeFiles/__idf_freertos.dir/croutine.c.obj" \
"CMakeFiles/__idf_freertos.dir/event_groups.c.obj" \
"CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj" \
"CMakeFiles/__idf_freertos.dir/list.c.obj" \
"CMakeFiles/__idf_freertos.dir/port.c.obj" \
"CMakeFiles/__idf_freertos.dir/portasm.S.obj" \
"CMakeFiles/__idf_freertos.dir/queue.c.obj" \
"CMakeFiles/__idf_freertos.dir/tasks.c.obj" \
"CMakeFiles/__idf_freertos.dir/timers.c.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj" \
"CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj"

# External object files for target __idf_freertos
__idf_freertos_EXTERNAL_OBJECTS =

esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/portasm.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_context.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_init.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_intr_asm.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_overlay_os_hook.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vector_defaults.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/xtensa_vectors.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build.make
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX static library libfreertos.a"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && $(CMAKE_COMMAND) -P CMakeFiles/__idf_freertos.dir/cmake_clean_target.cmake
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_freertos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build: esp-idf/freertos/libfreertos.a

.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos && $(CMAKE_COMMAND) -P CMakeFiles/__idf_freertos.dir/cmake_clean.cmake
.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/clean

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/freertos /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/freertos/CMakeFiles/__idf_freertos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend

