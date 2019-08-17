//
// Created by Domen Bukovac on 2019-08-13.
//

#ifndef LYRA_DISPLAY_PRINT_H
#define LYRA_DISPLAY_PRINT_H

//#include "struct.h"

int erase_lines(line_struct *lines) {
    for (int i = 0; i < 8; i++) {
        strcpy(lines[i].text, "");
    }
    return 1;
}


int view_display_setup(line_struct *lines) {
    strcpy(lines[0].text, "CONNECT YOUR PHONE TO WI-FI");
    strcpy(lines[1].text, "LYRA ONE");
    strcpy(lines[2].text, "USING PASSWORD setup4242");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 24;
    lines[1].top_margin = 52;
    lines[2].top_margin = 98;
    return 0;
};

int view_display_initial(line_struct *lines) {
    erase_lines(lines);
    strcpy(lines[2].text, "To setup the device, use pin and");
    strcpy(lines[3].text, "press the button on the left");

    lines[1].font = 200; // to display logo
    lines[1].top_margin = 12;

    lines[2].font = 1;
    lines[3].font = 1;

    lines[2].left_margin = CENTER;
    lines[3].left_margin = CENTER;


    lines[2].top_margin = 83;
    lines[3].top_margin = 100;
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

int view_low_battery(line_struct *lines) {

    strcpy(lines[0].text, "PLEASE RECHARGE");
    lines[0].font = 5;
    lines[0].left_margin = CENTER;
    lines[0].top_margin = 98;

    lines[1].font = 100;
    return 0;

};

int view_connected_to_wifi(line_struct *lines, char *verification_code) {
    strcpy(lines[0].text, "VERIFICATION CODE");
    strcpy(lines[1].text, verification_code);
    strcpy(lines[2].text, "Enter the code in Reetab App");

    lines[0].font = 16;
    lines[1].font = 2;
    lines[2].font = 16;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 17;
    lines[1].top_margin = 52;
    lines[2].top_margin = 99;
    return 0;

};


#endif //LYRA_DISPLAY_PRINT_H
