bool get_configuration_from_nvs(struct Configuration *configuration);
bool get_wifi_conf_from_nvs(struct Configuration *configuration);

void save_configuration_to_nvs(struct Configuration *configuration);
void remove_configuration_from_nvs();

static const unsigned int LOW_BATTERY_BIT = BIT0;
static const unsigned int CONNECTED_BIT = BIT1;

static const unsigned int INITIALIZING_BIT = BIT2;
static const unsigned int INITIALIZED_BIT = BIT3;

static const unsigned int LOADING_DATA_BIT = BIT4;
static const unsigned int RECEIVED_DATA_BIT = BIT5;

static const unsigned int CHANGED_TEXT_BIT = BIT6;
static const unsigned int DISPLAY_UPDATED_BIT = BIT7;

static const unsigned int SLEEP_AFTER_UPDATE_BIT = BIT8;
static const unsigned int FORCE_SLEEP_BIT = BIT9;

