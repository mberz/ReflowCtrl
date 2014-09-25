

#ifndef _status_h
#define _status_h

#include <stdbool.h>
#include <stdint.h>
#include <math.h>

typedef struct {
	uint8_t	 control;
    uint16_t temp;
    char     command;
} __attribute__ ((packed)) report_raw_data_t;

report_raw_data_t current_device_raw_data;
report_raw_data_t set_next_raw_data;

#define STATUS_DIRECTION    0  // 0= from device, 1= from host
#define STATUS_PRE_HEAT     1
#define STATUS_SET_TEMP     2
#define STATUS_REACHED_TEMP 3
#define STATUS_IS_LOCKED    4
#define STATUS_IS_COOLING   5
#define STATUS_IS_HEATING   6
#define STATUS_CHECK        7

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

int parseInput(uint8_t[]);


#endif
