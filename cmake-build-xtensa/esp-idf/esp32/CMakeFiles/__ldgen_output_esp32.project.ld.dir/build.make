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

# Utility rule file for __ldgen_output_esp32.project.ld.

# Include the progress variables for this target.
include esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/progress.make

esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld: esp-idf/esp32/ld/esp32.project.ld


esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.project.ld.in
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp_ringbuf/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/spi_flash/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp_wifi/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp_eth/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/lwip/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp_event/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/espcoredump/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp32/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32_fragments.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/xtensa/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/soc/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/heap/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/freertos/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/newlib/newlib.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/app_trace/linker.lf
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/esp/esp-idf/components/esp_gdbstub/linker.lf
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_ringbuf/libesp_ringbuf.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/driver/libdriver.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/wpa_supplicant/libwpa_supplicant.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/efuse/libefuse.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/bootloader_support/libbootloader_support.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/app_update/libapp_update.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/spi_flash/libspi_flash.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/nvs_flash/libnvs_flash.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/smartconfig_ack/libsmartconfig_ack.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_wifi/libesp_wifi.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_eth/libesp_eth.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/lwip/liblwip.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/tcpip_adapter/libtcpip_adapter.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_event/libesp_event.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/pthread/libpthread.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/espcoredump/libespcoredump.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp32/libesp32.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/xtensa/libxtensa.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_common/libesp_common.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_rom/libesp_rom.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/soc/libsoc.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/log/liblog.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/heap/libheap.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/freertos/libfreertos.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/vfs/libvfs.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/newlib/libnewlib.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/cxx/libcxx.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/app_trace/libapp_trace.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/asio/libasio.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/coap/libcoap.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/console/libconsole.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/nghttp/libnghttp.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp-tls/libesp-tls.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_adc_cal/libesp_adc_cal.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_gdbstub/libesp_gdbstub.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/tcp_transport/libtcp_transport.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_http_client/libesp_http_client.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_http_server/libesp_http_server.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_https_ota/libesp_https_ota.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/protobuf-c/libprotobuf-c.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/protocomm/libprotocomm.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/mdns/libmdns.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/esp_websocket_client/libesp_websocket_client.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/expat/libexpat.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/wear_levelling/libwear_levelling.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/sdmmc/libsdmmc.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/fatfs/libfatfs.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/freemodbus/libfreemodbus.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/jsmn/libjsmn.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/json/libjson.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/libsodium/liblibsodium.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/mqtt/libmqtt.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/openssl/libopenssl.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/spiffs/libspiffs.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/ulp/libulp.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/unity/libunity.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/wifi_provisioning/libwifi_provisioning.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/main/libmain.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/spidriver/libspidriver.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/epaper/libepaper.a
esp-idf/esp32/ld/esp32.project.ld: esp-idf/protocol_examples_common/libprotocol_examples_common.a
esp-idf/esp32/ld/esp32.project.ld: /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ld/esp32.project.ld"
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 && python /Users/domenbukovac/esp/esp-idf/tools/ldgen/ldgen.py --config /Users/domenbukovac/LepusLabs/lyra-esp32/sdkconfig --fragments /Users/domenbukovac/esp/esp-idf/components/esp_ringbuf/linker.lf	/Users/domenbukovac/esp/esp-idf/components/spi_flash/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp_wifi/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp_eth/linker.lf	/Users/domenbukovac/esp/esp-idf/components/lwip/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp_event/linker.lf	/Users/domenbukovac/esp/esp-idf/components/espcoredump/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp32/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32_fragments.lf	/Users/domenbukovac/esp/esp-idf/components/xtensa/linker.lf	/Users/domenbukovac/esp/esp-idf/components/soc/linker.lf	/Users/domenbukovac/esp/esp-idf/components/heap/linker.lf	/Users/domenbukovac/esp/esp-idf/components/freertos/linker.lf	/Users/domenbukovac/esp/esp-idf/components/newlib/newlib.lf	/Users/domenbukovac/esp/esp-idf/components/app_trace/linker.lf	/Users/domenbukovac/esp/esp-idf/components/esp_gdbstub/linker.lf --input /Users/domenbukovac/esp/esp-idf/components/esp32/ld/esp32.project.ld.in --output /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32/ld/esp32.project.ld --kconfig /Users/domenbukovac/esp/esp-idf/Kconfig --env-file /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/config.env --libraries-file /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/ldgen_libraries --objdump /Users/domenbukovac/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump

__ldgen_output_esp32.project.ld: esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld
__ldgen_output_esp32.project.ld: esp-idf/esp32/ld/esp32.project.ld
__ldgen_output_esp32.project.ld: esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/build.make

.PHONY : __ldgen_output_esp32.project.ld

# Rule to build all files generated by this target.
esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/build: __ldgen_output_esp32.project.ld

.PHONY : esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/build

esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/clean:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 && $(CMAKE_COMMAND) -P CMakeFiles/__ldgen_output_esp32.project.ld.dir/cmake_clean.cmake
.PHONY : esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/clean

esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/depend:
	cd /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/domenbukovac/LepusLabs/lyra-esp32 /Users/domenbukovac/esp/esp-idf/components/esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32 /Users/domenbukovac/LepusLabs/lyra-esp32/cmake-build-xtensa/esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp32/CMakeFiles/__ldgen_output_esp32.project.ld.dir/depend

