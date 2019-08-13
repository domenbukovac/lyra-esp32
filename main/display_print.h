//
// Created by Domen Bukovac on 2019-08-13.
//

#ifndef LYRA_DISPLAY_PRINT_H
#define LYRA_DISPLAY_PRINT_H

//#include "struct.h"


int view_display_initial(line_struct *lines) {
    strcpy(lines[0].text, "To learn how to pair a device,");
    strcpy(lines[1].text, "read the manual or visit");
    strcpy(lines[2].text, "www.reetab.com/device_register");

    lines[0].font = 1;
    lines[1].font = 1;
    lines[2].font = 0;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 40;
    lines[1].top_margin = 54;
    lines[2].top_margin = 80;
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
    strcpy(lines[0].text, "Device is now connected to wifi.");
    strcpy(lines[1].text, verification_code);
    strcpy(lines[2].text, "VERIFICATION CODE:");

    lines[0].font = 1;
    lines[1].font = 2;
    lines[2].font = 1;

    lines[0].left_margin = CENTER;
    lines[1].left_margin = CENTER;
    lines[2].left_margin = CENTER;

    lines[0].top_margin = 25;
    lines[1].top_margin = 74;
    lines[2].top_margin = 51;
    return 0;

};


#endif //LYRA_DISPLAY_PRINT_H
