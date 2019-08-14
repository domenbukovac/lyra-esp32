#include <stdio.h>
#include <string.h>

#ifndef STRUCT
#define STRUCT

#include "struct.h"
#include "cJSON.h"

#endif
int json_extract(char *json_raw, Configuration *conf, line_struct *line_structure) {
    char *lines_names[8] = {"line_0", "line_1", "line_2", "line_3", "line_4", "line_5", "line_6", "line_7"};

    const cJSON *line = NULL;
    const cJSON *font = NULL;
    const cJSON *left_margin = NULL;
    const cJSON *text = NULL;
    const cJSON *top_margin = NULL;
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


    for (int i = 0; i < 8; i++) {
        line = cJSON_GetObjectItemCaseSensitive(data_json, lines_names[i]);
        if (cJSON_IsObject(line)) {
            font = cJSON_GetObjectItemCaseSensitive(line, "font");
            text = cJSON_GetObjectItemCaseSensitive(line, "text");
            top_margin = cJSON_GetObjectItemCaseSensitive(line, "top_margin");
            left_margin = cJSON_GetObjectItemCaseSensitive(line, "left_margin");

            if (cJSON_IsString(text) && (text->valuestring != NULL)) {
                strcpy(line_structure[i].text, text->valuestring);
            }
            if (cJSON_IsNumber(font) && (font->valueint != NULL)) {
                line_structure[i].font = font->valueint;
            }
            if (cJSON_IsNumber(top_margin) && (top_margin->valueint != NULL)) {
                line_structure[i].top_margin = top_margin->valueint;
            }
            if (cJSON_IsNumber(left_margin) && (left_margin->valueint != NULL)) {
                line_structure[i].left_margin = left_margin->valueint;
            }
        }
    }

    cJSON_Delete(data_json);
    return status;
}
