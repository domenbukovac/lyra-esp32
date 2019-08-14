//
// Created by Domen Bukovac on 2019-08-13.
//

#ifndef LYRA_DISPLAY_PRINT_H
#define LYRA_DISPLAY_PRINT_H

//#include "struct.h"


int view_display_initial(line_struct *lines) {
    strcpy(lines[0].text, "To setup the device, connect to wifi");
    strcpy(lines[1].text, "LYRA  M 0oO m");
    strcpy(lines[2].text, "using password 'setup4242'");

    lines[0].font = 12;
    lines[1].font = 14;
    lines[2].font = 11;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 22;
    lines[1].top_margin = 52;
    lines[2].top_margin = 96;
    return 0;
};

int view_something_went_wrong(line_struct *lines) {
    strcpy(lines[0].text, "Something went wrong");
    strcpy(lines[1].text, "with the connection");
    strcpy(lines[2].text, "Please contact support");

    lines[0].font = 1;
    lines[1].font = 1;
    lines[2].font = 1;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 42;
    lines[1].top_margin = 58;
    lines[2].top_margin = 86;
    return 0;
};

int view_pairing_success(line_struct *lines) {
    strcpy(lines[0].text, "");
    strcpy(lines[1].text, "SUCCESS");
    strcpy(lines[2].text, "Pairing was successful!");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 20;
    lines[1].top_margin = 48;
    lines[2].top_margin = 95;
    return 0;

};

int view_connected_to_wifi(line_struct *lines, char* verification_code) {
    strcpy(lines[0].text, "VERIFICATION CODE");
    strcpy(lines[1].text, verification_code);
    strcpy(lines[2].text, "Enter the code in Reetab App");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 26;
    lines[1].top_margin = 50;
    lines[2].top_margin = 100;
    return 0;

};


#endif //LYRA_DISPLAY_PRINT_H
