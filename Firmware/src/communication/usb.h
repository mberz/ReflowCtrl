
#ifndef _communication_usb_h
#define _communication_usb_h

#include <avr/eeprom.h>
#include "../config.h"
#include "../global.h"
#include "../../src-lib/usbdrv/usbdrv.h"

/*
*/

typedef struct {
	uint8_t	 control;
    uint16_t temp;
    char     command
} __attribute__ ((packed)) report_data_t;

report_data_t data_in;
report_data_t data_out;

static uchar    currentAddress;
static uchar    bytesRemaining;

#endif
