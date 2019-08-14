#include <stdio.h>
#include <string.h>

#ifndef STRUCT
#define STRUCT

#include "struct.h"
#include "cJSON.h"

#endif
int json_extract(char *json_raw, Configuration *conf, line_struct *line_structure) {
    const cJSON *line = NULL;
    const cJSON *lines = NULL;

    const cJSON *sleep_seconds = NULL;
    const cJSON *verification_code = NULL;
    const cJSON *device_id = NULL;
    const cJSON *paired = NULL;
    int status = 0;

    cJSON *data_json = cJSON_Parse(json_raw);

    if (data_json == NULL) {
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error before: %s\n", error_ptr);
        }
        status = 0;
        cJSON_Delete(data_json);
        return status;
    }

    sleep_seconds = cJSON_GetObjectItemCaseSensitive(data_json, "sleep_seconds");
    if (cJSON_IsNumber(sleep_seconds) && (sleep_seconds->valueint != NULL)) {
        conf->sleep_seconds = sleep_seconds->valueint;
    }

    paired = cJSON_GetObjectItemCaseSensitive(data_json, "paired");
    if (cJSON_IsNumber(paired)) {
        conf->paired = paired->valueint;
    }


    verification_code = cJSON_GetObjectItemCaseSensitive(data_json, "verification_code");
    if (cJSON_IsString(verification_code) && (verification_code->valuestring != NULL)) {
        strcpy(conf->verification_code, verification_code->valuestring);
    }

    device_id = cJSON_GetObjectItemCaseSensitive(data_json, "device_id");
    if (cJSON_IsString(device_id) && (device_id->valuestring != NULL)) {
        strcpy(conf->device_id, device_id->valuestring);
    }

    int index = 0;
    int max_lines = 8;
    lines = cJSON_GetObjectItemCaseSensitive(data_json, "lines");
    cJSON_ArrayForEach(line, lines)
    {
        cJSON *font = cJSON_GetObjectItemCaseSensitive(line, "font");
        cJSON *left_margin = cJSON_GetObjectItemCaseSensitive(line, "left_margin");
        cJSON *text = cJSON_GetObjectItemCaseSensitive(line, "text");
        cJSON *top_margin = cJSON_GetObjectItemCaseSensitive(line, "top_margin");

        if (cJSON_IsString(text) && (text->valuestring != NULL) && (strlen(text->valuestring) < 50)) {
            strcpy(line_structure[index].text, text->valuestring);
        }
        if (cJSON_IsNumber(font) && (font->valueint != NULL)) {
            line_structure[index].font = font->valueint;
        }
        if (cJSON_IsNumber(top_margin) && (top_margin->valueint != NULL)) {
            line_structure[index].top_margin = top_margin->valueint;
        }
        if (cJSON_IsNumber(left_margin) && (left_margin->valueint != NULL)) {
            line_structure[index].left_margin = left_margin->valueint;
        }
        index++;
        if (max_lines == index){
            break;
        }
    }

    cJSON_Delete(data_json);
    return status;
}
