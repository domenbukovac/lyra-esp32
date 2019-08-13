#include <stdio.h>
#include <string.h>

#ifndef STRUCT
#define STRUCT

#include "struct.h"

#endif

int json_extract(char *json_raw, Configuration *conf, line_struct *line_structure) {
    char *lines_names[8] = {"line0", "line1", "line2", "line3", "line4", "line5", "line6", "line7"};
    char *key_buffer = malloc(sizeof(char) * 50);
    char *nested_key_buffer = malloc(sizeof(char) * 50);
    char *value_buffer = malloc(sizeof(char) * 200);
    int json_last_char = strlen(json_raw) - 0;

    char *json_breakless = calloc(sizeof(char), strlen(json_raw));
    int j = 0;

    int begin_quotation = 0;
    printf("JSON RAW\n");
//    printf("%s", json_raw);


    // remove new line and spaces that are not inside quotation marks
    for (int i = 0; i < strlen(json_raw); i++) {

        if (json_raw[i] == '"' && begin_quotation == 0) {
            begin_quotation = 1;
            json_breakless[j] = json_raw[i];
            j++;
        } else if (json_raw[i] == '"' && begin_quotation == 1) {
            begin_quotation = 0;
            json_breakless[j] = json_raw[i];
            j++;
        } else if (json_raw[i] == ' ' && begin_quotation == 1) {
            json_breakless[j] = json_raw[i];
            j++;
        } else if ((json_raw[i] == ' ' && begin_quotation == 0) || (json_raw[i] == '\n')) {
        } else {
            json_breakless[j] = json_raw[i];
            j++;
        }
    }
    json_breakless[j] = '\0';


    int i = 0;
    while (i < strlen(json_breakless))
    {
        if (json_breakless[i] == '}' && json_breakless[i + 1] == '}')
        {
            break;
        }

        while (json_breakless[i] != '"')
        {
            i++;
        }
        i++;

        int key_position = 0;
        while (json_breakless[i] != '"')
        {
            key_buffer[key_position] = json_breakless[i];
            i++;
            key_position++;
        }
        key_buffer[key_position] = '\0';

        int line_num = 0;

        while (line_num < 8)
        {
            if (strcmp(key_buffer, lines_names[line_num]) == 0)
            {
                break;
            }
            line_num++;
        }

        // i = i + 2; //replaced with the following:
        while (json_breakless[i] == '"' || json_breakless[i] == '\n' || json_breakless[i] == ',' || json_breakless[i] == ':')
        {
            i++;
        }
//        printf("key buffer: %s \n", key_buffer);
        if (json_breakless[i] == '{')
        {
            while (json_breakless[i] != '}')
            {
                while (json_breakless[i] == '"' || json_breakless[i] == '{' || json_breakless[i] == ',' || json_breakless[i] == ':')
                {
                    i++;
                }
                int nested_key_position = 0;
                while (json_breakless[i] != '"')
                {
                    nested_key_buffer[nested_key_position] = json_breakless[i];
                    i++;
                    nested_key_position++;
                }
                nested_key_buffer[nested_key_position] = '\0';

                while (json_breakless[i] == '"' || json_breakless[i] == '\n' || json_breakless[i] == ',' || json_breakless[i] == ':')
                {
                    i++;
                }
                int value_buffer_position = 0;

                while (json_breakless[i] != '"')
                {
                    value_buffer[value_buffer_position] = json_breakless[i];
                    i++;
                    value_buffer_position++;
                }

                value_buffer[value_buffer_position] = '\0';
                i = i + 1;

                if (strcmp(nested_key_buffer, "text") == 0)
                {
                    strcpy(line_structure[line_num].text, value_buffer);
                }
                else if (strcmp(nested_key_buffer, "font") == 0)
                {
                    line_structure[line_num].font = atoi(value_buffer);
                }
                else if (strcmp(nested_key_buffer, "left_margin") == 0)
                {
                    line_structure[line_num].left_margin = atoi(value_buffer);
                }
                else if (strcmp(nested_key_buffer, "top_margin") == 0)
                {
                    line_structure[line_num].top_margin = atoi(value_buffer);
                }
            }
        }

        else if (strcmp(key_buffer, "sleep_seconds") == 0)
        {
            int value_buffer_position = 0;

            while (json_breakless[i] != '"')
            {
                value_buffer[value_buffer_position] = json_breakless[i];
                i++;
                value_buffer_position++;
            }

            value_buffer[value_buffer_position] = '\0';

//            printf("value buffer: %s \n", value_buffer);
            conf->sleep_seconds_int = atoi(value_buffer);
            i = i + 2;
        }

        else if (strcmp(key_buffer, "verification_code") == 0)
        {
            int value_buffer_position = 0;

            while (json_breakless[i] != '"')
            {
                value_buffer[value_buffer_position] = json_breakless[i];
                i++;
                value_buffer_position++;
            }

            value_buffer[value_buffer_position] = '\0';
            strcpy(conf->verification_code, value_buffer);
            i = i + 2;
        }
        else if (strcmp(key_buffer, "device_id") == 0)
        {
            int value_buffer_position = 0;

            while (json_breakless[i] != '"')
            {
                value_buffer[value_buffer_position] = json_breakless[i];
                i++;
                value_buffer_position++;
            }

            value_buffer[value_buffer_position] = '\0';
            strcpy(conf->device_id, value_buffer);
            i = i + 2;
        }
        else if (strcmp(key_buffer, "paired") == 0)
        {
            int value_buffer_position = 0;

            while (json_breakless[i] != '"')
            {
                value_buffer[value_buffer_position] = json_breakless[i];
                i++;
                value_buffer_position++;
            }
            value_buffer[value_buffer_position] = '\0';

//            printf("value_ buffer: %s\n", value_buffer);

            if (strcmp(value_buffer, "True") == 0 || strcmp(value_buffer, "true") == 0)
            {
                value_buffer[0] = '1';
                value_buffer[1] = '\0';
            }
            else if (strcmp(value_buffer, "False") == 0 || strcmp(value_buffer, "false") == 0)
            {
                value_buffer[0] = '0';
                value_buffer[1] = '\0';
            }

            strcpy(conf->paired, value_buffer);
            i = i + 2;
        }
    }
    free(nested_key_buffer);
    free(value_buffer);
    free(json_breakless);
    free(key_buffer);

    return 0;
}