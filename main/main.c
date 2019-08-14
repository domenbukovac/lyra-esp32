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

#include "json_read.h"
#include "battery.h"

//display includes
#include <time.h>
#include <errno.h>
#include <sys/fcntl.h>
#include <stdio.h>
#include "esp_heap_alloc_caps.h"
//#include "esp_heap_caps.h"
#include "spiffs_vfs.h"

#include "spi_master_lobo.h"
#include "EPD.h"
#include "display_print.h"

// http client
#include "protocol_examples_common.h"
#include "esp_tls.h"
#include "esp_system.h"

#include "esp_http_client.h"

#define HOST "192.168.1.53"
#define PORT 5000

#define WAKEUP_PIN 0
#define MAX_HTTP_SIZE 4096

#include "wifi_manager.h"


static Configuration configuration;

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

char battery_percent[8];
RTC_DATA_ATTR static unsigned long rtc_text_hash;

RTC_DATA_ATTR static uint8_t wifi_channel;
RTC_DATA_ATTR static wifi_second_chan_t wifi_channel_second;

static void go_to_sleep(int seconds) {
    printf("Going to sleep for %d seconds\n", seconds);
    vTaskDelay(50 / portTICK_PERIOD_MS);
    esp_sleep_enable_ext0_wakeup(WAKEUP_PIN, 0);
    esp_deep_sleep(1000000LL * seconds);
}

void monitoring_task(void *pvParameter) {
    for (;;) {
        ESP_LOGI(TAG, "free heap: %d", esp_get_free_heap_size());
        vTaskDelay(pdMS_TO_TICKS(10000));
    }
}

void cb_connection_ok(void *pvParameter) {
    ESP_LOGI(TAG, "I have a connection!");
    go_to_sleep(0);
}


esp_err_t _http_event_handler(esp_http_client_event_t *evt) {
    switch (evt->event_id) {
        case HTTP_EVENT_ERROR:
            ESP_LOGD(TAG, "HTTP_EVENT_ERROR");
            break;
        case HTTP_EVENT_ON_CONNECTED:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_CONNECTED");
            break;
        case HTTP_EVENT_HEADER_SENT:
            ESP_LOGD(TAG, "HTTP_EVENT_HEADER_SENT");
            break;
        case HTTP_EVENT_ON_HEADER:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_HEADER, key=%s, value=%s", evt->header_key, evt->header_value);
            break;
        case HTTP_EVENT_ON_DATA:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            break;
        case HTTP_EVENT_ON_FINISH:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_FINISH");
            break;
        case HTTP_EVENT_DISCONNECTED:
            ESP_LOGI(TAG, "HTTP_EVENT_DISCONNECTED");
            int mbedtls_err = 0;
            esp_err_t err = esp_tls_get_and_clear_last_error(evt->data, &mbedtls_err, NULL);
            if (err != 0) {
                ESP_LOGI(TAG, "Last esp error code: 0x%x", err);
                ESP_LOGI(TAG, "Last mbedtls failure: 0x%x", mbedtls_err);
            }
            break;
    }
    return ESP_OK;
}

static void http_rest_with_url(char *path) {

    printf("HTTP REST WITH URL START! \n");
    char *buffer = malloc(MAX_HTTP_SIZE + 1);


    esp_http_client_config_t config = {
            .host = HOST,
            .port= PORT,
            .path = path,
//            .transport_type = HTTP_TRANSPORT_OVER_SSL,
            .event_handler = _http_event_handler,
            .method = HTTP_METHOD_GET
    };

    esp_http_client_handle_t client = esp_http_client_init(&config);

    esp_err_t err;
    if ((err = esp_http_client_open(client, 0)) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to open HTTP connection: %s", esp_err_to_name(err));
        free(buffer);
        return;
    }
    int content_length = esp_http_client_fetch_headers(client);
    int total_read_len = 0, read_len;
    if (total_read_len < content_length && content_length <= MAX_HTTP_SIZE) {
        read_len = esp_http_client_read(client, buffer, content_length);
        if (read_len <= 0) {
            ESP_LOGE(TAG, "Error read data");
        }
        buffer[read_len] = 0;
        ESP_LOGD(TAG, "read_len = %d", read_len);
    }
    ESP_LOGI(TAG, "HTTP Stream reader Status = %d, content_length = %d",
             esp_http_client_get_status_code(client),
             esp_http_client_get_content_length(client));

    if (esp_http_client_get_status_code(client) == 200) {
        if (json_extract(buffer, &configuration, lines) == 0) {
            xEventGroupSetBits(main_event_group, RECEIVED_DATA_BIT);
            xEventGroupClearBits(main_event_group, LOADING_DATA_BIT);
        } else {
            xEventGroupSetBits(main_event_group, RECEIVED_DATA_BIT);
            xEventGroupClearBits(main_event_group, LOADING_DATA_BIT);
        }
    }


    esp_http_client_close(client);
    esp_http_client_cleanup(client);
    free(buffer);
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

/* FreeRTOS event group to signal when we are connected*/

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


static void sleep_monitor(void *ptr) {
    EventBits_t uxBits;
    while (1) {
        uxBits = xEventGroupWaitBits(main_event_group, DISPLAY_UPDATED_BIT | ESPTOUCH_DONE_BIT, true, false,
                                     portMAX_DELAY);

        if ((uxBits & (DISPLAY_UPDATED_BIT | INITIALIZED_BIT)) ==
            (DISPLAY_UPDATED_BIT | INITIALIZED_BIT)) {
            esp_wifi_get_channel(&wifi_channel, &wifi_channel_second);
            go_to_sleep(configuration.sleep_seconds);

        } else if ((uxBits & (ESPTOUCH_DONE_BIT | STEP_1)) == (ESPTOUCH_DONE_BIT | STEP_1)) {
            go_to_sleep(0);
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

        xEventGroupWaitBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT, false, false, portMAX_DELAY);
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

        xEventGroupClearBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT);
        xEventGroupSetBits(main_event_group, DISPLAY_UPDATED_BIT);
    }
}

static void http_get_data(void *ptr) {
    EventBits_t uxBits;
    char path[128];
    Configuration *data_config = ((Configuration *) ptr);

    while (1) {

        uxBits = xEventGroupWaitBits(main_event_group, CONNECTED_BIT, false, false, portMAX_DELAY);

        if ((uxBits & (DISPLAY_TEXT_CHANGE_BIT | RECEIVED_DATA_BIT | LOADING_DATA_BIT)) > 0 ||
            (uxBits & CONNECTED_BIT) == 0) {
            continue;
        }

        strcpy(path, "/api/lyra/v1");

        if ((uxBits & (INITIALIZING_BIT | INITIALIZED_BIT)) == 0) { /* Not initialized yet */
            strcat(path, "/register");

        } else if (uxBits & INITIALIZING_BIT) { /* waiting for pairing */
            strcat(path, "/register/");
            strcat(path, data_config->device_id);
            vTaskDelay(10000 / portTICK_PERIOD_MS);

        } else if (uxBits & INITIALIZED_BIT) {  /* Normal request */
            strcat(path, "/");
            strcat(path, data_config->device_id);
            strcat(path, "/");
            strcat(path, battery_percent);

        }
        vTaskDelay(200 / portTICK_PERIOD_MS);
        xEventGroupSetBits(main_event_group, LOADING_DATA_BIT);
        http_rest_with_url(path);
    }
}


int is_text_updated() {
    unsigned long hash = 5381;
    int c;

    for (int i = 0; i < 8; i++) {
        char *str = lines[i].text;
        while ((c = *str++))
            hash = ((hash << 5) + hash) + c;
        hash = ((hash << 5) + hash) + c;
    }

    if (hash != rtc_text_hash) {
        rtc_text_hash = hash;
        return 1;
    }

    return 0;
}

static void data_processing(void *ptr) {
    EventBits_t uxBits;
    Configuration *data_config = ((Configuration *) ptr);


    while (1) {
        uxBits = xEventGroupWaitBits(main_event_group, RECEIVED_DATA_BIT, true, true, portMAX_DELAY);
        if (((uxBits & (INITIALIZING_BIT | INITIALIZED_BIT)) == 0) &&
            (uxBits & DISPLAY_TEXT_CHANGE_BIT) == 0) {

            xEventGroupSetBits(main_event_group, INITIALIZING_BIT);
            // print verification code on display
            view_connected_to_wifi(lines, configuration.verification_code);
            xEventGroupSetBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT);

        } else if ((uxBits & INITIALIZING_BIT) && (uxBits & DISPLAY_TEXT_CHANGE_BIT) == 0) {
            if (data_config->paired == 1) {
                xEventGroupClearBits(main_event_group, INITIALIZING_BIT);
                xEventGroupSetBits(main_event_group, INITIALIZED_BIT);

                strcpy(data_config->ssid, (const char *) wifi_config.sta.ssid);
                strcpy(data_config->password, (const char *) wifi_config.sta.password);

                save_configuration_to_nvs(data_config);

                view_pairing_success(lines);

                xEventGroupSetBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT);
            }
        } else if ((uxBits & INITIALIZED_BIT) == INITIALIZED_BIT &&
                   (uxBits & DISPLAY_TEXT_CHANGE_BIT) == 0) {

            if (is_text_updated()) {
                xEventGroupSetBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT);
            } else {
                xEventGroupSetBits(main_event_group, DISPLAY_UPDATED_BIT);
            }
        }

        vTaskDelay(200 / portTICK_PERIOD_MS);
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
            if (gpio_get_level(io_num) == 0) {
                go_to_sleep(0);

            }
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

    xTaskCreate(&sleep_monitor, "sleep_monitor", 2048, &configuration, 1, NULL);
    xTaskCreate(&updateScreen, "update screen", 16384, &configuration, 5, NULL);


    /* if device is configured */
    if (get_configuration_from_nvs(&configuration)) {
        xTaskCreate(&http_get_data, "http_get_data", 16384, &configuration, 2, NULL);
        xTaskCreate(&data_processing, "data_processing", 16384, &configuration, 3, NULL);

        xEventGroupSetBits(main_event_group, ESPTOUCH_DONE_BIT);
        xEventGroupSetBits(main_event_group, INITIALIZED_BIT);

        memcpy(wifi_config.sta.ssid, configuration.ssid, strlen(configuration.ssid) + 1);
        memcpy(wifi_config.sta.password, configuration.password, strlen(configuration.password) + 1);
        initialise_wifi(wifi_config);

        /* if device has wifi and pass but is not set yet  */
    } else if (get_wifi_conf_from_nvs(&configuration)) {
        xTaskCreate(&http_get_data, "http_get_data", 16384, &configuration, 2, NULL);
        xTaskCreate(&data_processing, "data_processing", 16384, &configuration, 3, NULL);

        memcpy(wifi_config.sta.ssid, configuration.ssid, strlen(configuration.ssid) + 1);
        memcpy(wifi_config.sta.password, configuration.password, strlen(configuration.password) + 1);


        xEventGroupSetBits(main_event_group, ESPTOUCH_DONE_BIT);
        initialise_wifi(wifi_config);
    } else {
        view_display_initial(lines);
        xEventGroupSetBits(main_event_group, STEP_1);
        xEventGroupSetBits(main_event_group, DISPLAY_TEXT_CHANGE_BIT);
        wifi_manager_start();

        /* register a callback as an example to how you can integrate your code with the wifi manager */
        wifi_manager_set_callback(EVENT_STA_GOT_IP, &cb_connection_ok);

        /* your code should go here. Here we simply create a task on core 2 that monitors free heap memory */
        xTaskCreatePinnedToCore(&monitoring_task, "monitoring_task", 2048, NULL, 1, NULL, 1);
    }
}