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
include CMakeFiles/Lyra.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lyra.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lyra.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	"/Users/domenbukovac/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E touch /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/project_elf_src.c

CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj: CMakeFiles/Lyra.elf.dir/flags.make
CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj   -c /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/project_elf_src.c

CMakeFiles/Lyra.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lyra.elf.dir/project_elf_src.c.i"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/project_elf_src.c > CMakeFiles/Lyra.elf.dir/project_elf_src.c.i

CMakeFiles/Lyra.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lyra.elf.dir/project_elf_src.c.s"
	/Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/project_elf_src.c -o CMakeFiles/Lyra.elf.dir/project_elf_src.c.s

# Object files for target Lyra.elf
Lyra_elf_OBJECTS = \
"CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj"

# External object files for target Lyra.elf
Lyra_elf_EXTERNAL_OBJECTS =

Lyra.elf: CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj
Lyra.elf: CMakeFiles/Lyra.elf.dir/build.make
Lyra.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
Lyra.elf: esp-idf/driver/libdriver.a
Lyra.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
Lyra.elf: esp-idf/efuse/libefuse.a
Lyra.elf: esp-idf/bootloader_support/libbootloader_support.a
Lyra.elf: esp-idf/app_update/libapp_update.a
Lyra.elf: esp-idf/spi_flash/libspi_flash.a
Lyra.elf: esp-idf/nvs_flash/libnvs_flash.a
Lyra.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
Lyra.elf: esp-idf/esp_wifi/libesp_wifi.a
Lyra.elf: esp-idf/esp_eth/libesp_eth.a
Lyra.elf: esp-idf/lwip/liblwip.a
Lyra.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
Lyra.elf: esp-idf/esp_event/libesp_event.a
Lyra.elf: esp-idf/pthread/libpthread.a
Lyra.elf: esp-idf/espcoredump/libespcoredump.a
Lyra.elf: esp-idf/esp32/libesp32.a
Lyra.elf: esp-idf/xtensa/libxtensa.a
Lyra.elf: esp-idf/esp_common/libesp_common.a
Lyra.elf: esp-idf/esp_rom/libesp_rom.a
Lyra.elf: esp-idf/soc/libsoc.a
Lyra.elf: esp-idf/log/liblog.a
Lyra.elf: esp-idf/heap/libheap.a
Lyra.elf: esp-idf/freertos/libfreertos.a
Lyra.elf: esp-idf/vfs/libvfs.a
Lyra.elf: esp-idf/newlib/libnewlib.a
Lyra.elf: esp-idf/cxx/libcxx.a
Lyra.elf: esp-idf/app_trace/libapp_trace.a
Lyra.elf: esp-idf/asio/libasio.a
Lyra.elf: esp-idf/coap/libcoap.a
Lyra.elf: esp-idf/console/libconsole.a
Lyra.elf: esp-idf/nghttp/libnghttp.a
Lyra.elf: esp-idf/esp-tls/libesp-tls.a
Lyra.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
Lyra.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
Lyra.elf: esp-idf/tcp_transport/libtcp_transport.a
Lyra.elf: esp-idf/esp_http_client/libesp_http_client.a
Lyra.elf: esp-idf/esp_http_server/libesp_http_server.a
Lyra.elf: esp-idf/esp_https_ota/libesp_https_ota.a
Lyra.elf: esp-idf/protobuf-c/libprotobuf-c.a
Lyra.elf: esp-idf/protocomm/libprotocomm.a
Lyra.elf: esp-idf/mdns/libmdns.a
Lyra.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
Lyra.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
Lyra.elf: esp-idf/expat/libexpat.a
Lyra.elf: esp-idf/wear_levelling/libwear_levelling.a
Lyra.elf: esp-idf/sdmmc/libsdmmc.a
Lyra.elf: esp-idf/fatfs/libfatfs.a
Lyra.elf: esp-idf/freemodbus/libfreemodbus.a
Lyra.elf: esp-idf/jsmn/libjsmn.a
Lyra.elf: esp-idf/json/libjson.a
Lyra.elf: esp-idf/libsodium/liblibsodium.a
Lyra.elf: esp-idf/mqtt/libmqtt.a
Lyra.elf: esp-idf/openssl/libopenssl.a
Lyra.elf: esp-idf/spiffs/libspiffs.a
Lyra.elf: esp-idf/ulp/libulp.a
Lyra.elf: esp-idf/unity/libunity.a
Lyra.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
Lyra.elf: esp-idf/main/libmain.a
Lyra.elf: esp-idf/spidriver/libspidriver.a
Lyra.elf: esp-idf/epaper/libepaper.a
Lyra.elf: esp-idf/wifi_manager/libwifi_manager.a
Lyra.elf: esp-idf/protocol_examples_common/libprotocol_examples_common.a
Lyra.elf: esp-idf/asio/libasio.a
Lyra.elf: esp-idf/coap/libcoap.a
Lyra.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
Lyra.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
Lyra.elf: esp-idf/esp_https_ota/libesp_https_ota.a
Lyra.elf: esp-idf/esp_http_client/libesp_http_client.a
Lyra.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
Lyra.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
Lyra.elf: esp-idf/expat/libexpat.a
Lyra.elf: esp-idf/fatfs/libfatfs.a
Lyra.elf: esp-idf/wear_levelling/libwear_levelling.a
Lyra.elf: esp-idf/sdmmc/libsdmmc.a
Lyra.elf: esp-idf/freemodbus/libfreemodbus.a
Lyra.elf: esp-idf/jsmn/libjsmn.a
Lyra.elf: esp-idf/libsodium/liblibsodium.a
Lyra.elf: esp-idf/mqtt/libmqtt.a
Lyra.elf: esp-idf/tcp_transport/libtcp_transport.a
Lyra.elf: esp-idf/esp-tls/libesp-tls.a
Lyra.elf: esp-idf/openssl/libopenssl.a
Lyra.elf: esp-idf/spiffs/libspiffs.a
Lyra.elf: esp-idf/ulp/libulp.a
Lyra.elf: esp-idf/unity/libunity.a
Lyra.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
Lyra.elf: esp-idf/protocomm/libprotocomm.a
Lyra.elf: esp-idf/esp_http_server/libesp_http_server.a
Lyra.elf: esp-idf/nghttp/libnghttp.a
Lyra.elf: esp-idf/protobuf-c/libprotobuf-c.a
Lyra.elf: esp-idf/json/libjson.a
Lyra.elf: esp-idf/spidriver/libspidriver.a
Lyra.elf: esp-idf/mdns/libmdns.a
Lyra.elf: esp-idf/console/libconsole.a
Lyra.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
Lyra.elf: esp-idf/driver/libdriver.a
Lyra.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
Lyra.elf: esp-idf/efuse/libefuse.a
Lyra.elf: esp-idf/bootloader_support/libbootloader_support.a
Lyra.elf: esp-idf/app_update/libapp_update.a
Lyra.elf: esp-idf/spi_flash/libspi_flash.a
Lyra.elf: esp-idf/nvs_flash/libnvs_flash.a
Lyra.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
Lyra.elf: esp-idf/esp_wifi/libesp_wifi.a
Lyra.elf: esp-idf/esp_eth/libesp_eth.a
Lyra.elf: esp-idf/lwip/liblwip.a
Lyra.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
Lyra.elf: esp-idf/esp_event/libesp_event.a
Lyra.elf: esp-idf/pthread/libpthread.a
Lyra.elf: esp-idf/espcoredump/libespcoredump.a
Lyra.elf: esp-idf/esp32/libesp32.a
Lyra.elf: esp-idf/xtensa/libxtensa.a
Lyra.elf: esp-idf/esp_common/libesp_common.a
Lyra.elf: esp-idf/esp_rom/libesp_rom.a
Lyra.elf: esp-idf/soc/libsoc.a
Lyra.elf: esp-idf/log/liblog.a
Lyra.elf: esp-idf/heap/libheap.a
Lyra.elf: esp-idf/freertos/libfreertos.a
Lyra.elf: esp-idf/vfs/libvfs.a
Lyra.elf: esp-idf/newlib/libnewlib.a
Lyra.elf: esp-idf/cxx/libcxx.a
Lyra.elf: esp-idf/app_trace/libapp_trace.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
Lyra.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
Lyra.elf: esp-idf/driver/libdriver.a
Lyra.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
Lyra.elf: esp-idf/efuse/libefuse.a
Lyra.elf: esp-idf/bootloader_support/libbootloader_support.a
Lyra.elf: esp-idf/app_update/libapp_update.a
Lyra.elf: esp-idf/spi_flash/libspi_flash.a
Lyra.elf: esp-idf/nvs_flash/libnvs_flash.a
Lyra.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
Lyra.elf: esp-idf/esp_wifi/libesp_wifi.a
Lyra.elf: esp-idf/esp_eth/libesp_eth.a
Lyra.elf: esp-idf/lwip/liblwip.a
Lyra.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
Lyra.elf: esp-idf/esp_event/libesp_event.a
Lyra.elf: esp-idf/pthread/libpthread.a
Lyra.elf: esp-idf/espcoredump/libespcoredump.a
Lyra.elf: esp-idf/esp32/libesp32.a
Lyra.elf: esp-idf/xtensa/libxtensa.a
Lyra.elf: esp-idf/esp_common/libesp_common.a
Lyra.elf: esp-idf/esp_rom/libesp_rom.a
Lyra.elf: esp-idf/soc/libsoc.a
Lyra.elf: esp-idf/log/liblog.a
Lyra.elf: esp-idf/heap/libheap.a
Lyra.elf: esp-idf/freertos/libfreertos.a
Lyra.elf: esp-idf/vfs/libvfs.a
Lyra.elf: esp-idf/newlib/libnewlib.a
Lyra.elf: esp-idf/cxx/libcxx.a
Lyra.elf: esp-idf/app_trace/libapp_trace.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
Lyra.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/xtensa/esp32/libhal.a
Lyra.elf: esp-idf/newlib/libnewlib.a
Lyra.elf: esp-idf/esp32/esp32_out.ld
Lyra.elf: esp-idf/esp32/ld/esp32.project.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
Lyra.elf: /Users/domenbukovac/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
Lyra.elf: CMakeFiles/Lyra.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Lyra.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lyra.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lyra.elf.dir/build: Lyra.elf

.PHONY : CMakeFiles/Lyra.elf.dir/build

CMakeFiles/Lyra.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lyra.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lyra.elf.dir/clean

CMakeFiles/Lyra.elf.dir/depend: project_elf_src.c
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles/Lyra.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lyra.elf.dir/depend

