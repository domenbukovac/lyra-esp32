#include "nvs_flash.h"
#include <string.h>
#include "struct.h"

#define STORAGE_NAMESPACE "storage_config"

esp_err_t err;
const char keys[3][10] = {"ssid", "passowrd", "device_id"};

bool get_configuration_from_nvs(Configuration *device_configuration)
{
    nvs_handle my_handle;
    nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);

    size_t required_size;
    char *pointers[3] = {device_configuration->ssid, device_configuration->password, device_configuration->device_id};

    for (int i = 0; i < 3; i++)
    {
        err = nvs_get_str(my_handle, keys[i], NULL, &required_size);
        if (err != ESP_ERR_NVS_NOT_FOUND)
        {
            char *value = malloc(required_size);
            nvs_get_str(my_handle, keys[i], value, &required_size);
            printf("get nvs value: %s\n", value);
            strcpy(pointers[i], value);
            free(value);
        }
        else
        {
            return false;
        }
    }
    nvs_close(my_handle);
    return true;
}

void save_configuration_to_nvs(Configuration *device_configuration)
{
    nvs_handle my_handle;
    char *pointers[3] = {device_configuration->ssid, device_configuration->password, device_configuration->device_id};
    nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);

    for (int i = 0; i < 3; i++)
    {
        nvs_set_str(my_handle, keys[i], pointers[i]);
        printf("pointer values: %s\n", pointers[i]);
    }
    nvs_commit(my_handle);
    nvs_close(my_handle);
}

void remove_configuration_from_nvs()
{
    nvs_handle my_handle;
    nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);

    for (int i = 0; i < 3; i++)
    {
        nvs_erase_key(my_handle, keys[i]);
    }
    nvs_commit(my_handle);
    nvs_close(my_handle);
}