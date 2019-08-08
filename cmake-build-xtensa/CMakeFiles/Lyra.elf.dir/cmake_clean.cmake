file(REMOVE_RECURSE
  "config/sdkconfig.h"
  "config/sdkconfig.cmake"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.map"
  "Lyra.bin"
  "Lyra.map"
  "project_elf_src.c"
  "project_elf_src.c"
  "CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj"
  "Lyra.elf.pdb"
  "Lyra.elf"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/Lyra.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
