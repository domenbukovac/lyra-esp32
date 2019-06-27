#include <stdio.h>
#include <stdlib.h>
#include "driver/gpio.h"
#include "driver/adc.h"
#include "esp_adc_cal.h"

#define DEFAULT_VREF 1100 //Use adc2_vref_to_gpio() to obtain a better estimate
#define NO_OF_SAMPLES 64  //Multisampling

static esp_adc_cal_characteristics_t *adc_chars;

char battery_level[5];

//adc
static void print_char_val_type(esp_adc_cal_value_t val_type)
{
    if (val_type == ESP_ADC_CAL_VAL_EFUSE_TP)
    {
        printf("Characterized using Two Point Value\n");
    }
    else if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF)
    {
        printf("Characterized using eFuse Vref\n");
    }
    else
    {
        printf("Characterized using Default Vref\n");
    }
}

//-----battery calculation -----//

uint32_t battery_precentage(uint32_t adc_read)
{
    int vref = adc2_vref_to_gpio(GPIO_NUM_35);
    printf("VREF %d ADC READ %d \n", vref, adc_read);
    vTaskDelay(500 / portTICK_PERIOD_MS);

   
    uint32_t percentage = (100 * (adc_read - 502)) / 84;
    if (percentage >= 250)
    {
        return 0;
    }
    return percentage;
}

void initialize_adc()
{
    //ADC
    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(ADC1_CHANNEL_7, ADC_ATTEN_DB_11);
    int vref = adc2_vref_to_gpio(GPIO_NUM_35);


    //Characterize ADC
    adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
    esp_adc_cal_value_t val_type = esp_adc_cal_characterize(ADC_UNIT_1, ADC_ATTEN_DB_11, ADC_WIDTH_BIT_12, vref, adc_chars);
    print_char_val_type(val_type);
}


uint32_t get_battery_level(char *battery_level)
{
    initialize_adc();

    uint32_t adc_reading = 0;
    //Multisampling
    for (int i = 0; i < NO_OF_SAMPLES; i++) {
            adc_reading += adc1_get_raw((adc1_channel_t)ADC1_CHANNEL_7);
    
    }
    adc_reading /= NO_OF_SAMPLES;
    //Convert adc_reading to voltage in mV
    uint32_t voltage = esp_adc_cal_raw_to_voltage(adc_reading, adc_chars) * 2;

    // max voltage = 4200
    // min voltage = 3600
    // difference = 600
    // so.. voltage of 3900 mV = 300 more than 3600 and max, 4200 = 600 more... 

    int percentage = (voltage - 3600) / 6;

    printf("Voltage: %dmV\n", voltage);
    sprintf(battery_level, "%i", percentage);
    return percentage;

}