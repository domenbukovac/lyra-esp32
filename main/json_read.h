#include <stdio.h>
#include <string.h>

#ifndef STRUCT
#define STRUCT

#include "struct.h"
#include "cJSON.h"

#endif
int json_extract(char *json_raw, Configuration *conf) {
    const cJSON *line = NULL;
    const cJSON *lines = NULL;

    const cJSON *sleep_seconds = NULL;
    const cJSON *verification_code = NULL;
    const cJSON *device_id = NULL;
    const cJSON *paired = NULL;
    const cJSON *custom_shade = NULL;
    const cJSON *bg = NULL;
    const cJSON *fg = NULL;
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

    custom_shade = cJSON_GetObjectItemCaseSensitive(data_json, "custom_shade");
    if (cJSON_IsNumber(custom_shade)) {
        conf->custom_shade = custom_shade->valueint;
    }

    bg = cJSON_GetObjectItemCaseSensitive(data_json, "bg");
    if (cJSON_IsNumber(bg)) {
        conf->bg = bg->valueint;
    }

    fg = cJSON_GetObjectItemCaseSensitive(data_json, "fg");
    if (cJSON_IsNumber(fg)) {
        conf->fg = fg->valueint;
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
        cJSON *margin_left = cJSON_GetObjectItemCaseSensitive(line, "margin_left");
        cJSON *text = cJSON_GetObjectItemCaseSensitive(line, "text");
        cJSON *margin_top = cJSON_GetObjectItemCaseSensitive(line, "margin_top");

        if (cJSON_IsString(text) && (text->valuestring != NULL) && (strlen(text->valuestring) < 100)) {
            strcpy(conf->lines[index].text, text->valuestring);
        }
        if (cJSON_IsNumber(font) && (font->valueint != NULL)) {
            conf->lines[index].font = font->valueint;
        }
        if (cJSON_IsNumber(margin_top) && (margin_top->valueint != NULL)) {
            conf->lines[index].margin_top = margin_top->valueint;
        }
        if (cJSON_IsNumber(margin_left) && (margin_left->valueint != NULL)) {
            conf->lines[index].margin_left = margin_left->valueint;
        }
        index++;
        if (max_lines == index){
            break;
        }
    }

    cJSON_Delete(data_json);
    return status;
}
