/*
 * libreflowctrl 
 * ============================================================
 * Library to control the reflow oven of the ccc-ffm
 * @see https://wiki.ccc-ffm.de/projekte:reflowofen:start
 *
 */

#ifdef __cplusplus
extern "C" {
#endif
    
#ifndef _libreflowctrl_h
#define _libreflowctrl_h

#include <stdbool.h>
#include <math.h>
#include <stdint.h>

#define STATUS_DIRECTION    0  // 0= from device, 1= from host
#define STATUS_PREHEAT      1
#define STATUS_SETTEMP      2
#define STATUS_REACHEDTEMP  3
#define STATUS_IS_LOCKED    4
#define STATUS_IS_COOLING   5
#define STATUS_IS_HEATING   6
#define STATUS_CHECK        7

int check;

typedef struct {
    uint8_t	 control;
    uint16_t temp;
    char     command;
} __attribute__ ((packed)) report_raw_data_t;

report_raw_data_t current_device_raw_data;
report_raw_data_t set_next_raw_data;

typedef struct {
    bool        direction;
    bool        pre_heat;
    bool        set_temp;
    bool        reached_temp;
    bool        is_locked;
    bool        is_cooling;
    bool        is_heating;
    bool        check;
    
    double_t    temperature;
    char        command;
    
} report_parsed_data_t;

report_parsed_data_t *recived;
report_parsed_data_t *send;

/** 
 * Initialise the reflow controler 
 */
int reflowctrl_init(void);

/**
 * Close and free the device
 */
int destroy(void);

/** 
 * Close the controler 
 */
int reflowctrl_destroy(void);

/**
 * Read data from the controler board and write the result (report_parsed_data_t) into the callback function
 */
int reflowctrl_read_cb(int *, void *());

/**
 * Read from the controler board and returns the reult (report_parsed_data_t)
 */
report_parsed_data_t *reflowctrl_read(void);

/**
 * Write something to the controler board
 */
int reflowctrl_write(report_parsed_data_t *);

#endif
    
#ifdef __cplusplus
}
#endif
