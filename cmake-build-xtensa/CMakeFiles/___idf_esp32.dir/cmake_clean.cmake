file(REMOVE_RECURSE
  "config/sdkconfig.h"
  "config/sdkconfig.cmake"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.map"
  "Lyra.bin"
  "Lyra.map"
  "project_elf_src.c"
  "CMakeFiles/___idf_esp32"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/___idf_esp32.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
