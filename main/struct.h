typedef struct
{
    char ssid[33];
    char password[64];
    char device_id[41];
    char verification_code[9];
    char line1[40];
    char line2[30];
    char line3[40];
    char old_line1[40];
    char old_line2[30];
    char old_line3[40];
    char sleep_seconds[30];
    uint32_t sleep_seconds_int;
    char paired[5];
} Configuration;

typedef struct
{
    char name[10];
    char text[50];
    char old_text[50];
    int font;
    int left_margin;
    int top_margin;
} line_struct;
