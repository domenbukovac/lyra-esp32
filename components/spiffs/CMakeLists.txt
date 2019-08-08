idf_component_register(SRCS ./esp_spiffs.c ./list.c ./mutex.c ./spiffs_cache.c ./spiffs_check.c ./spiffs_gc.c ./spiffs_hydrogen.c ./spiffs_nucleus.c ./spiffs_vfs.c
                       INCLUDE_DIRS .                       # Edit following two lines to set component requirements (see docs)
                       REQUIRES
                       PRIV_REQUIRES )

