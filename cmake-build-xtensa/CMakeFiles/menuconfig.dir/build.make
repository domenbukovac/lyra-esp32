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

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	python /Users/domenbukovac/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/domenbukovac/esp/esp-idf/Kconfig --config /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig --defaults /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig.defaults --env-file /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/config.env --env IDF_TARGET=esp32 --output config /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig
	"/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E env COMPONENT_KCONFIGS=/Users/domenbukovac/esp/esp-idf/components/app_trace/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/bt/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/driver/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/efuse/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp-tls/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp32/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_adc_cal/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_common/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_eth/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_event/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_gdbstub/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_http_client/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_http_server/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_https_ota/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_https_server/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/esp_wifi/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/espcoredump/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/fatfs/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/freemodbus/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/freertos/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/heap/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/libsodium/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/log/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/lwip/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/mbedtls/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/mdns/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/mqtt/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/newlib/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/nvs_flash/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/openssl/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/pthread/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/spi_flash/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/tcpip_adapter/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/unity/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/vfs/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/wear_levelling/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/wifi_provisioning/Kconfig\ /Users/domenbukovac/esp/esp-idf/components/wpa_supplicant/Kconfig COMPONENT_KCONFIGS_PROJBUILD=/Users/domenbukovac/esp/esp-idf/components/app_update/Kconfig.projbuild\ /Users/domenbukovac/esp/esp-idf/components/bootloader/Kconfig.projbuild\ /Users/domenbukovac/esp/esp-idf/components/esptool_py/Kconfig.projbuild\ /Users/domenbukovac/esp/esp-idf/components/partition_table/Kconfig.projbuild\ /Users/domenbukovac/LepusLabs/lyra-esp32/main/Kconfig.projbuild\ /Users/domenbukovac/LepusLabs/lyra-esp32/components/wifi_manager/Kconfig.projbuild IDF_CMAKE=y KCONFIG_CONFIG=/Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig IDF_TARGET=esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/kconfig_bin/mconf-idf /Users/domenbukovac/esp/esp-idf/Kconfig
	python /Users/domenbukovac/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/domenbukovac/esp/esp-idf/Kconfig --config /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig --defaults /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig.defaults --env-file /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/config.env --env IDF_TARGET=esp32 --output config /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

