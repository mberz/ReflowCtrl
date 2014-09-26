
#ifndef _CONTROL_REFLOW_H_
#define _CONTROL_REFLOW_H_

#include <stdbool.h>


#define DECIDE_HEATING_INTERVAL 140
 
#define STATE_PREHEAT 1 
#define STATE_SOLDER  2
#define STATE_HOLD    3
#define STATE_COOL    4
 
#define TURN_HEATER_OFF()	(PORTB &= ~(1 << PB1));
#define TURN_HEATER_ON()	(PORTB |= (1 << PB1));

uint8_t state; 

void control_init(void);

void control_lock(report_data_t *, bool lock);

void control_preheat(report_data_t *, bool preheat);

void control_reached(report_data_t *, bool reached);

void control_cool(report_data_t *, bool cool);


#endif


