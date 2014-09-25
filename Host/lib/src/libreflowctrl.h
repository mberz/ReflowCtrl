/*
 * libreflowctrl 
 * ============================================================
 * Library to control the reflow oven of the ccc-ffm
 *
 *
 */

#ifndef _libreflowctrl_h
#define _libreflowctrl_h

#include "device/status.h"

#define CHECK_STATUS(var,statusbit) ((var) & (1<<(statusbit)))
#define SET_STATUS(var,statusbit) ((var) |= (1<<(statusbit)))
#define CLEAR_STATUS(var,statusbit) ((var) & ~(1<<(statusbit)))

int check;

void reflowctrl_init(void);
void reflowctrl_destroy(void);

void reflowctrl_read_cb(int *, void *());
report_parsed_data_t *reflowctrl_read(void);
void reflowctrl_write(report_parsed_data_t *);

#endif
