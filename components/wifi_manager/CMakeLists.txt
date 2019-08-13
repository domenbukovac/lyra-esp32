#set(COMPONENT_SRCS
#	"main.c"
#    "dns_server.c"
#    "http_server.c"
#    "json.c"
#    "wifi_manager.c"
#)
#set(COMPONENT_ADD_INCLUDEDIRS "")
#set(COMPONENT_EMBED_FILES "style.css jquery.gz code.js index.html")
#
#register_component()
#
#
#
idf_component_register(SRCS dns_server.c http_server.c json.c wifi_manager.c
		INCLUDE_DIRS .
		REQUIRES spi_flash mdns nvs_flash wpa_supplicant
		EMBED_FILES ./style.css ./jquery.gz ./code.js ./index.html
		 )

