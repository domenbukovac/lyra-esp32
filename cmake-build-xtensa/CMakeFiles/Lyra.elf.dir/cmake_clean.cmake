file(REMOVE_RECURSE
  "Lyra.bin"
  "Lyra.map"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src.c"
  "CMakeFiles/Lyra.elf.dir/project_elf_src.c.obj"
  "Lyra.elf"
  "Lyra.elf.pdb"
  "project_elf_src.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/Lyra.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
