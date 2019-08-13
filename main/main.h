bool get_configuration_from_nvs(struct Configuration *configuration);

void save_configuration_to_nvs(struct Configuration *configuration);
void remove_configuration_from_nvs();

static const int ESPTOUCH_DONE_BIT = BIT0;
static const int CONNECTED_BIT = BIT1;
static const int INITIALIZING_BIT = BIT2;
static const int INITIALIZED_BIT = BIT3;
static const int RECEIVED_DATA_BIT = BIT4;
static const int DATA_CHANGE_BIT = BIT5;
static const int DISPLAY_UPDATED_BIT = BIT6;

static const int LOADING_DATA_BIT = BIT7;
static const int HTTP_DONE_BIT = BIT8;
static const int STEP_1 = BIT9;
static const int STEP_2 = BIT10;
static const int STEP_3 = BIT11;