idf_component_register(SRCS ./DefaultFont.c ./DejaVuSans18.c ./DejaVuSans24.c ./EPD.c ./EPDspi.c
        ./SmallFont.c ./Ubuntu16.c ./comic24.c ./dejavuX.c ./minya24.c ./Calibri24x32GR.c
        ./tooney32.c ./arial_bold.c ./arial_normal.c ./arial_round.c
        Ubuntubold.c Inconsola.c hallfetica_normal.c Grotesk16x32.c GroteskBold16x32.c
        INCLUDE_DIRS .                       # Edit following two lines to set component requirements (see docs)
        REQUIRES spi_flash spidriver
        PRIV_REQUIRES)

