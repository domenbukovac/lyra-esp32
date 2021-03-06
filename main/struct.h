
typedef struct
{
    char name[10];
    char text[100];
    int font;
    int margin_left;
    int margin_top;
} line_struct;

typedef struct
{
    char ssid[33];
    char password[64];
    char device_id[41];
    char verification_code[9];
    int sleep_seconds;
    int paired;
    int custom_shade;
    int bg;
    int fg;
    line_struct* lines;
} Configuration;
