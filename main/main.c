#include <string.h>
#include <stdlib.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_wifi.h"
#include "esp_wpa2.h"
#include "esp_event.h"

#include "esp_log.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "tcpip_adapter.h"
#include "esp_smartconfig.h"

#include "esp_sleep.h"

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/dns.h"
#include "main.h"

#include "json.h"
#include "battery.h"

//display includes
#include <time.h>
#include <errno.h>
#include <sys/fcntl.h>
#include <stdio.h>
#include "esp_heap_alloc_caps.h"
#include "spiffs_vfs.h"

#include "spi_master_lobo.h"
#include "EPD.h"

#define API_URL "192.168.1.53:5000/api/lyra/v1"
#define URL "192.168.1.53"
#define PORT "5000"

#define WAKEUP_PIN 0

Configuration configuration;

line_struct lines[8] = {
        {"line0"},
        {"line1"},
        {"line2"},
        {"line3"},
        {"line4"},
        {"line5"},
        {"line6"},
        {"line7"}};

wifi_config_t wifi_config;

/* FreeRTOS event group to signal when we are connected & ready to make a request & some other things*/
static EventGroupHandle_t main_event_group;
static const char *TAG = "Event_tag";

static const char *file_fonts[3] = {"/spiffs/fonts/DotMatrix_M.fon", "/spiffs/fonts/Ubuntu.fon",
                                    "/spiffs/fonts/Grotesk24x48.fon"};
// static const char tag[] = "status";

char battery_percent[8];

int socket_fail_count = 0;

RTC_DATA_ATTR static char old_line0_data[50];
RTC_DATA_ATTR static char old_line1_data[50];
RTC_DATA_ATTR static char old_line2_data[50];
RTC_DATA_ATTR static char old_line3_data[50];
RTC_DATA_ATTR static char old_line4_data[50];
RTC_DATA_ATTR static char old_line5_data[50];
RTC_DATA_ATTR static char old_line6_data[50];
RTC_DATA_ATTR static char old_line7_data[50];

RTC_DATA_ATTR static uint8_t wifi_channel;
RTC_DATA_ATTR static wifi_second_chan_t wifi_channel_second;

static void smartconfig_example_task(void *parm);

static void initialise_wifi(wifi_config_t wifi_config);

static void event_handler(void *arg, esp_event_base_t event_base,
                          int32_t event_id, void *event_data) {
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        xTaskCreate(smartconfig_example_task, "smartconfig_example_task", 4096, NULL, 3, NULL);
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        esp_wifi_connect();
        xEventGroupClearBits(main_event_group, CONNECTED_BIT);
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        xEventGroupSetBits(main_event_group, CONNECTED_BIT);
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE) {
        ESP_LOGI(TAG, "Scan done");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL) {
        ESP_LOGI(TAG, "Found channel");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD) {
        ESP_LOGI(TAG, "Got SSID and password");

        smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *) event_data;
//        wifi_config_t wifi_config;
        uint8_t ssid[33] = {0};
        uint8_t password[65] = {0};

        bzero(&wifi_config, sizeof(wifi_config_t));
        memcpy(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
        memcpy(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));
        wifi_config.sta.bssid_set = evt->bssid_set;
        if (wifi_config.sta.bssid_set == true) {
            memcpy(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
        }

        memcpy(ssid, evt->ssid, sizeof(evt->ssid));
        memcpy(password, evt->password, sizeof(evt->password));
        ESP_LOGI(TAG, "SSID:%s", ssid);
        ESP_LOGI(TAG, "PASSWORD:%s", password);

        ESP_ERROR_CHECK(esp_wifi_disconnect());
//        initialise_wifi(wifi_config);
        ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));
        ESP_ERROR_CHECK(esp_wifi_connect());
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE) {
        esp_smartconfig_stop();
        xEventGroupSetBits(main_event_group, ESPTOUCH_DONE_BIT);
    }
}

static int s_retry_num = 0;

static void wifi_event_handler(void *arg, esp_event_base_t event_base,
                               int32_t event_id, void *event_data) {
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if (s_retry_num < 5) {
            esp_wifi_connect();
            xEventGroupClearBits(main_event_group, CONNECTED_BIT);
            s_retry_num++;
            ESP_LOGI(TAG, "retry to connect to the AP");
        }
        ESP_LOGI(TAG, "connect to the AP fail");
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t *event = (ip_event_got_ip_t *) event_data;
        ESP_LOGI(TAG, "got ip:%s",
                 ip4addr_ntoa(&event->ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(main_event_group, CONNECTED_BIT);
    }
}

static void initialise_wifi(wifi_config_t wifi_config) {

    tcpip_adapter_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &wifi_event_handler, NULL));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "wifi_init_sta finished.");
}

static void initialize_smart_config(void) {
    tcpip_adapter_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(SC_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
}

static void smartconfig_example_task(void *parm) {
    EventBits_t uxBits;
    ESP_ERROR_CHECK(esp_smartconfig_set_type(SC_TYPE_ESPTOUCH));
    smartconfig_start_config_t cfg = SMARTCONFIG_START_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_smartconfig_start(&cfg));
    while (1) {
        uxBits = xEventGroupWaitBits(main_event_group, CONNECTED_BIT | ESPTOUCH_DONE_BIT, true, false, portMAX_DELAY);
        if (uxBits & CONNECTED_BIT) {
            ESP_LOGI(TAG, "WiFi Connected to ap");
        }
        if (uxBits & ESPTOUCH_DONE_BIT) {
            ESP_LOGI(TAG, "smartconfig over");
            esp_smartconfig_stop();
//            initialise_wifi(wifi_config);
            vTaskDelete(NULL);
        }
    }
}


static void go_to_sleep(int seconds) {

    printf("Enabling EXT1 wakeup on pins GPIO0\n");
    //esp_wifi_stop();
    vTaskDelay(50 / portTICK_PERIOD_MS);
    esp_sleep_enable_ext0_wakeup(WAKEUP_PIN, 0);
    //rtc_gpio_isolate(GPIO_NUM_12);
    esp_deep_sleep(1000000LL * seconds);
}

static void sleep_monitor(void *ptr) {
    EventBits_t uxBits;
    while (1) {
        uxBits = xEventGroupWaitBits(main_event_group, DISPLAY_UPDATED_BIT, true, true, portMAX_DELAY);

        if ((uxBits & (DISPLAY_UPDATED_BIT | INITIALIZED_BIT)) == (DISPLAY_UPDATED_BIT | INITIALIZED_BIT)) {
            esp_wifi_get_channel(&wifi_channel, &wifi_channel_second);
            go_to_sleep(configuration.sleep_seconds_int);
        }
    }
}

static void initialize_display() {
    // ========  PREPARE DISPLAY INITIALIZATION  =========
    esp_err_t ret;

    disp_buffer = pvPortMallocCaps(EPD_DISPLAY_WIDTH * (EPD_DISPLAY_HEIGHT / 8), MALLOC_CAP_DMA);
    assert(disp_buffer);
    drawBuff = disp_buffer;

    gs_disp_buffer = pvPortMallocCaps(EPD_DISPLAY_WIDTH * EPD_DISPLAY_HEIGHT, MALLOC_CAP_DMA);
    assert(gs_disp_buffer);
    gs_drawBuff = gs_disp_buffer;

    // ====  CONFIGURE SPI DEVICES(s)  ====================================================================================

    gpio_set_direction(DC_Pin, GPIO_MODE_OUTPUT);
    gpio_set_level(DC_Pin, 1);
    gpio_set_direction(RST_Pin, GPIO_MODE_OUTPUT);
    gpio_set_level(RST_Pin, 0);
    gpio_set_direction(BUSY_Pin, GPIO_MODE_INPUT);
    gpio_set_pull_mode(BUSY_Pin, GPIO_PULLUP_ONLY);


#if POWER_Pin
    gpio_set_direction(POWER_Pin, GPIO_MODE_OUTPUT);
    gpio_set_level(POWER_Pin, 1);
#endif

    spi_lobo_bus_config_t buscfg = {
            .miso_io_num = -1,       // set SPI MISO pin
            .mosi_io_num = MOSI_Pin, // set SPI MOSI pin
            .sclk_io_num = SCK_Pin,  // set SPI CLK pin
            .quadwp_io_num = -1,
            .quadhd_io_num = -1,
            .max_transfer_sz = 5 * 1024, // max transfer size is 4736 bytes
    };
    spi_lobo_device_interface_config_t devcfg = {
            .clock_speed_hz = 20000000,     // SPI clock is 40 MHz
            .mode = 0,                      // SPI mode 0
            .spics_io_num = -1,             // we will use external CS pin
            .spics_ext_io_num = CS_Pin,     // external CS pin
            .flags = SPI_DEVICE_HALFDUPLEX, // ALWAYS SET  to HALF DUPLEX MODE for display spi !!
    };

    // ====================================================================================================================

    vTaskDelay(500 / portTICK_RATE_MS);

    // =========================================                                      =========================
    // ==== Initialize the SPI bus and attach the EPD to the SPI bus ====

    ret = spi_lobo_bus_add_device(SPI_BUS, &buscfg, &devcfg, &disp_spi);
    assert(ret == ESP_OK);

    // ==== Test select/deselect ====
    ret = spi_lobo_device_select(disp_spi, 1);
    assert(ret == ESP_OK);
    ret = spi_lobo_device_deselect(disp_spi);
    assert(ret == ESP_OK);

    // EPD_DisplayClearFull();
}

static void updateScreen(void *ptr) {
    while (1) {

        xEventGroupWaitBits(main_event_group, DATA_CHANGE_BIT, false, false, portMAX_DELAY);
        initialize_display();
        vfs_spiffs_register();

        vTaskDelay(500 / portTICK_PERIOD_MS);

        EPD_DisplayClearPart();

        EPD_fillScreen(0);

        _gs = 0;
        _fg = 1;
        _bg = 0;

        orientation = LANDSCAPE_180;

        for (int i = 0; i < 8; i++) {
            if (lines[i].font == 1)
                EPD_setFont(USER_FONT, "/spiffs/fonts/DejaVuSans12.fon");
            else if (lines[i].font == 2)
                EPD_setFont(USER_FONT, file_fonts[1]);
            else if (lines[i].font == 3)
                EPD_setFont(3, NULL);

            EPD_print(lines[i].text, lines[i].left_margin, lines[i].top_margin);
        }

        EPD_UpdateScreen();
        EPD_PowerOff();

        xEventGroupClearBits(main_event_group, DATA_CHANGE_BIT);
        xEventGroupSetBits(main_event_group, DISPLAY_UPDATED_BIT);
    }
}

static void http_get_data(void *ptr) {
    const struct addrinfo hints = {
            .ai_family = AF_INET,
            .ai_socktype = SOCK_STREAM,
    };
    struct addrinfo *res;
    struct in_addr *addr;
    int s, r;
    char recv_buf[1300];
    EventBits_t uxBits;

    char request[400];
    Configuration *data_config = ((Configuration *) ptr);

    while (1) {

        uxBits = xEventGroupWaitBits(main_event_group, CONNECTED_BIT | INITIALIZING_BIT | INITIALIZED_BIT, false, false,
                                     portMAX_DELAY);

        if (((uxBits & CONNECTED_BIT) > 0) & ((uxBits & (INITIALIZING_BIT | INITIALIZED_BIT)) ==
                                              0)) { /* Device is connected to wifi, but was not set yet */
            strcpy(request,
                   "GET http://" API_URL "/register HTTP/1.1\r\n"
                   "Host: " API_URL "\r\n"
                   "User-Agent: esp-idf/1.0 esp32\r\n"
                   "\r\n");
        }

            /* Device made a request but was not paired yet, waiting for pairing */
        else if ((uxBits & (CONNECTED_BIT | INITIALIZING_BIT)) == (CONNECTED_BIT | INITIALIZING_BIT) &&
                 (uxBits & (DATA_CHANGE_BIT | RECEIVED_DATA_BIT)) == 0) {
            //send request for registration with new id, delay task for 30 seconds

            strcpy(request,
                   "GET http://" API_URL "/register/");

            strcat(request, data_config->device_id);

            strcat(request, " HTTP/1.1\r\n"
                            "Host: " API_URL "\r\n"
                            "User-Agent: esp-idf/1.0 esp32\r\n"
                            "\r\n");
            vTaskDelay(10000 / portTICK_PERIOD_MS);
        } else if ((uxBits & (CONNECTED_BIT | INITIALIZED_BIT)) == (CONNECTED_BIT | INITIALIZED_BIT) &&
                   (uxBits & (DATA_CHANGE_BIT | RECEIVED_DATA_BIT)) == 0) {

            // vTaskDelay( 200 /  portTICK_PERIOD_MS );
            /* Device is paired. */
            // send request with device id and battery status.

            strcpy(request,
                   "GET http://" API_URL "/");

            strcat(request, data_config->device_id);
            strcat(request, "/");


            char battery_percent[5];
            get_battery_level(&battery_percent);

            strcat(request, battery_percent);

            strcat(request, " HTTP/1.1\r\n"
                            "Host: " API_URL "\r\n"
                            "User-Agent: esp-idf/1.0 esp32\r\n"
                            "\r\n");
        }

        if ((uxBits & CONNECTED_BIT) > 0 && (uxBits & (DATA_CHANGE_BIT | RECEIVED_DATA_BIT)) == 0) {

            if (socket_fail_count > 2) {
                go_to_sleep(120);
            }

            ESP_LOGI(TAG, "Connected to AP");
            int err = getaddrinfo(URL, ""
                    PORT
                    "", &hints, &res);

            if (err != 0 || res == NULL) {
                ESP_LOGE(TAG, "DNS lookup failed err=%d res=%p", err, res);
                socket_fail_count++;
                vTaskDelay(1000 / portTICK_PERIOD_MS);
                continue;
            }

            /* Code to print the resolved IP.

            Note: inet_ntoa is non-reentrant, look at ipaddr_ntoa_r for "real" code */
            addr = &((struct sockaddr_in *) res->ai_addr)->sin_addr;
            ESP_LOGI(TAG, "DNS lookup succeeded. IP=%s", inet_ntoa(*addr));

            s = socket(res->ai_family, res->ai_socktype, 0);
            if (s < 0) {
                ESP_LOGE(TAG, "... Failed to allocate socket.");
                freeaddrinfo(res);
                vTaskDelay(1000 / portTICK_PERIOD_MS);
                continue;
            }
            ESP_LOGI(TAG, "... allocated socket");

            if (connect(s, res->ai_addr, res->ai_addrlen) != 0) {
                ESP_LOGE(TAG, "... socket connect failed errno=%d", errno);
                close(s);
                freeaddrinfo(res);
                socket_fail_count++;
                vTaskDelay(2000 / portTICK_PERIOD_MS);
                continue;
            }

            ESP_LOGI(TAG, "... connected");
            freeaddrinfo(res);

            if (write(s, request, strlen(request)) < 0) {
                ESP_LOGE(TAG, "... socket send failed");
                close(s);
                socket_fail_count++;
                vTaskDelay(4000 / portTICK_PERIOD_MS);
                continue;
            }
            ESP_LOGI(TAG, "... socket send success");

            struct timeval receiving_timeout;
            receiving_timeout.tv_sec = 5;
            receiving_timeout.tv_usec = 0;
            if (setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, &receiving_timeout, sizeof(receiving_timeout)) < 0) {
                ESP_LOGE(TAG, "... failed to set socket receiving timeout");
                socket_fail_count++;
                close(s);
                vTaskDelay(2000 / portTICK_PERIOD_MS);
                continue;
            }
            ESP_LOGI(TAG, "... set socket receiving timeout success");

            char *api_response = NULL;

            /* Read HTTP response */
            do {
                bzero(recv_buf, sizeof(recv_buf));
                r = read(s, recv_buf, sizeof(recv_buf) - 1);
                for (int i = 0; i < r; i++) {
                    printf("%c", (recv_buf[i]));
                    int k = 0;
                    if ((recv_buf[i]) == '{') {
                        api_response = &recv_buf[i];
                        r = 0;
                    }
                }
            } while (r > 0);

            if (api_response != NULL) {
                if (json_extract(api_response, &configuration, lines) == 0) {
                    xEventGroupSetBits(main_event_group, RECEIVED_DATA_BIT);
                    printf("horray! \n");
                }
            }

            ESP_LOGI(TAG, "... done reading from socket. Last read return=%d errno=%d\r\n", r, errno);
            close(s);
        }

        vTaskDelay(50 / portTICK_PERIOD_MS);
    }
}

static void data_processing(void *ptr) {
    EventBits_t uxBits;
    Configuration *data_config = ((Configuration *) ptr);

    while (1) {
        uxBits = xEventGroupWaitBits(main_event_group, RECEIVED_DATA_BIT, true, true, portMAX_DELAY);
        printf("pa smo, 34543254235rhhfgdh, %d\n\n\n\n", (int) uxBits);
        if (((uxBits & (INITIALIZING_BIT | INITIALIZED_BIT)) == 0) &&
            (uxBits & DATA_CHANGE_BIT) == 0) {

            printf(";usuahdfo\n");

            xEventGroupSetBits(main_event_group, INITIALIZING_BIT);

            strcpy(lines[0].text, "Device is now connected to wifi.");
            strcpy(lines[1].text, data_config->verification_code);
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

            xEventGroupSetBits(main_event_group, DATA_CHANGE_BIT);

            // print on display verification code
        } else if ((uxBits & INITIALIZING_BIT) == (CONNECTED_BIT | INITIALIZING_BIT) &&
                   (uxBits & DATA_CHANGE_BIT) == 0) {
            //send request for registration with new id, delay task for 30 seconds

            //if response is "paired: 1", change initializing bit to 0 and initialized bit to 1
            if (data_config->paired[0] == '1') {
                xEventGroupClearBits(main_event_group, INITIALIZING_BIT);
                xEventGroupSetBits(main_event_group, INITIALIZED_BIT);

                printf("ssid: %s\n", configuration.ssid);
                save_configuration_to_nvs(data_config);

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
                lines[1].top_margin = 55;
                lines[2].top_margin = 105;

                xEventGroupSetBits(main_event_group, DATA_CHANGE_BIT);
            }
            printf("paired: %s \n", data_config->paired);
        } else if ((uxBits & INITIALIZED_BIT) == INITIALIZED_BIT &&
                   (uxBits & DATA_CHANGE_BIT) == 0) {
            // vTaskDelay( 100 /  portTICK_PERIOD_MS );

            if (
                    (strcmp(lines[0].text, old_line0_data) == 0) &&
                    (strcmp(lines[1].text, old_line1_data) == 0) &&
                    (strcmp(lines[2].text, old_line2_data) == 0) &&
                    (strcmp(lines[3].text, old_line3_data) == 0) &&
                    (strcmp(lines[4].text, old_line4_data) == 0) &&
                    (strcmp(lines[5].text, old_line5_data) == 0) &&
                    (strcmp(lines[6].text, old_line6_data) == 0) &&
                    (strcmp(lines[7].text, old_line7_data) == 0)) {
                xEventGroupSetBits(main_event_group, DISPLAY_UPDATED_BIT);
            } else {
                strcpy(old_line0_data, lines[0].text);
                strcpy(old_line1_data, lines[1].text);
                strcpy(old_line2_data, lines[2].text);
                strcpy(old_line3_data, lines[3].text);
                strcpy(old_line4_data, lines[4].text);
                strcpy(old_line5_data, lines[5].text);
                strcpy(old_line6_data, lines[6].text);
                strcpy(old_line7_data, lines[7].text);
                xEventGroupSetBits(main_event_group, DATA_CHANGE_BIT);
            }
        }

        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}

static xQueueHandle gpio_evt_queue = NULL;

static void IRAM_ATTR gpio_isr_handler(void *arg) {
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(gpio_evt_queue, &gpio_num, NULL);
}

static void gpio_task_interrupt(void *arg) {
    uint32_t io_num;
    for (;;) {
        if (xQueueReceive(gpio_evt_queue, &io_num, portMAX_DELAY)) {
            printf("GPIO[%d] intr, val: %d\n", io_num, gpio_get_level(io_num));
        }
    }
}

void app_main() {
    int start_battery_level = get_battery_level(&battery_percent);
    printf("battery level: %d\n", start_battery_level);
    if (start_battery_level < 10) {
        go_to_sleep(5 * 60); // sleep for 5 minutes
    }
    main_event_group = xEventGroupCreate();
    ESP_ERROR_CHECK(nvs_flash_init());

    /* GPIO INTERRUPT */
    gpio_config_t io_conf;
    io_conf.intr_type = GPIO_PIN_INTR_POSEDGE;
    io_conf.pin_bit_mask = (1ULL << WAKEUP_PIN);
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);

    gpio_set_intr_type(WAKEUP_PIN, GPIO_INTR_ANYEDGE);
    gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(gpio_task_interrupt, "gpio_task_interrupt", 2048, NULL, 10, NULL);
    gpio_install_isr_service(0);
    gpio_isr_handler_add(WAKEUP_PIN, gpio_isr_handler, (void *) WAKEUP_PIN);
    /* END GPIO INTERRUPT */

    xTaskCreate(&http_get_data, "http_get_data", 8192, &configuration, 2, NULL);
    xTaskCreate(&sleep_monitor, "sleep_monitor", 1024, &configuration, 1, NULL);
    xTaskCreate(&data_processing, "data_processing", 4095, &configuration, 3, NULL);
    xTaskCreate(&updateScreen, "update screen", 8192, &configuration, 5, NULL);

    switch (esp_sleep_get_wakeup_cause()) {
        case ESP_SLEEP_WAKEUP_EXT0: {
            printf("Wake up from GPIO\n");
            vTaskDelay(1000 / portTICK_PERIOD_MS);
            if (gpio_get_level(WAKEUP_PIN) == 0) {
                printf("Hold it for 3 more and see whats up \n");
                vTaskDelay(3000 / portTICK_PERIOD_MS);
                if (gpio_get_level(WAKEUP_PIN) == 0) {
                    remove_configuration_from_nvs();
                    printf("Removing configuration from nvs \n");
                }
            } else {
            }

            break;
        }
        case ESP_SLEEP_WAKEUP_TIMER: {
            printf("Wake up from timer. Time spent in deep sleep:");
            break;
        }
        case ESP_SLEEP_WAKEUP_UNDEFINED:
        default:
            printf("Not a deep sleep reset\n");
    }

    /* get wifi configuration and device id from nvs */
    if (get_configuration_from_nvs(&configuration)) {
        xEventGroupSetBits(main_event_group, ESPTOUCH_DONE_BIT);
        xEventGroupSetBits(main_event_group, INITIALIZED_BIT);

        memcpy(wifi_config.sta.ssid, configuration.ssid, strlen(configuration.ssid) + 1);
        memcpy(wifi_config.sta.password, configuration.password, strlen(configuration.password) + 1);
        initialise_wifi(wifi_config);
    }
        // if device was not set yet
    else {
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

        xEventGroupSetBits(main_event_group, DATA_CHANGE_BIT);
        initialize_smart_config();
    }
}