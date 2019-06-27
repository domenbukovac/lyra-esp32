 #include <time.h>
#include <errno.h>
#include <sys/fcntl.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>  
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "driver/gpio.h"
#include "esp_system.h"
#include "esp_heap_alloc_caps.h"
#include "spiffs_vfs.h"
#include "esp_log.h"

#include "spi_master_lobo.h"
#include "EPD.h"

#ifndef STRUCT_H
    #define STRUCT_H
    #include "struct.h"
#endif 



