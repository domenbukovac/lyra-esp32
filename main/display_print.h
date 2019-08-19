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
    erase_lines(lines);
    strcpy(lines[0].text, "CONNECT YOUR PHONE TO WI-FI");
    strcpy(lines[1].text, "LYRA ONE");
    strcpy(lines[2].text, "USING PASSWORD setup4242");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].margin_left = CENTER;
    lines[1].margin_left = CENTER;
    lines[2].margin_left = CENTER;

    lines[0].margin_top = 24;
    lines[1].margin_top = 52;
    lines[2].margin_top = 98;
    return 0;
};

int view_display_initial(line_struct *lines) {
    erase_lines(lines);
    strcpy(lines[2].text, "To setup the device, use pin and");
    strcpy(lines[3].text, "press the button on the left");

    lines[1].font = 200; // to display logo
    lines[1].margin_top = 12;

    lines[2].font = 1;
    lines[3].font = 1;

    lines[2].margin_left = CENTER;
    lines[3].margin_left = CENTER;


    lines[2].margin_top = 83;
    lines[3].margin_top = 100;
    return 0;
};

int view_something_went_wrong(line_struct *lines) {
    erase_lines(lines);
    strcpy(lines[0].text, "Something went wrong");
    strcpy(lines[1].text, "with the connection");
    strcpy(lines[2].text, "Please contact support");

    lines[0].font = 1;
    lines[1].font = 1;
    lines[2].font = 1;

    lines[0].margin_left = CENTER;
    lines[1].margin_left = CENTER;
    lines[2].margin_left = CENTER;

    lines[0].margin_top = 42;
    lines[1].margin_top = 58;
    lines[2].margin_top = 86;
    return 0;
};

int view_pairing_success(line_struct *lines) {
    erase_lines(lines);
    strcpy(lines[0].text, "");
    strcpy(lines[1].text, "SUCCESS");
    strcpy(lines[2].text, "Pairing was successful!");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].margin_left = CENTER;
    lines[1].margin_left = CENTER;
    lines[2].margin_left = CENTER;

    lines[0].margin_top = 20;
    lines[1].margin_top = 48;
    lines[2].margin_top = 95;
    return 0;

};

int view_low_battery(line_struct *lines) {
    erase_lines(lines);

    strcpy(lines[2].text, "PLEASE RECHARGE");
    lines[2].font = 7;
    lines[2].margin_left = CENTER;
    lines[2].margin_top = 98;

    lines[1].font = 100; // to display logo
    lines[1].margin_top = 15; // to display logo
    return 0;

};

int view_empty_battery(line_struct *lines) {
    erase_lines(lines);

    strcpy(lines[2].text, "Please recharge the device and");
    lines[2].font = 16;
    lines[2].margin_left = CENTER;
    lines[2].margin_top = 80;

    strcpy(lines[3].text, "click the pin to turn it on");
    lines[3].font = 16;
    lines[3].margin_left = CENTER;
    lines[3].margin_top = 98;

    lines[1].font = 100; // to display logo
    lines[1].margin_top = 25; // to display logo
    return 0;

};

int view_connected_to_wifi(line_struct *lines, char *verification_code) {
    erase_lines(lines);
    strcpy(lines[0].text, "VERIFICATION CODE");
    strcpy(lines[1].text, verification_code);
    strcpy(lines[2].text, "Enter the code in Reetab App");

    lines[0].font = 16;
    lines[1].font = 2;
    lines[2].font = 16;

    lines[0].margin_left = CENTER;
    lines[1].margin_left = CENTER;
    lines[2].margin_left = CENTER;

    lines[0].margin_top = 17;
    lines[1].margin_top = 52;
    lines[2].margin_top = 99;
    return 0;

};


#endif //LYRA_DISPLAY_PRINT_H
