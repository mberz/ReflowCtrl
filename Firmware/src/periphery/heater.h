
#ifndef _HEATER_H_
#define _HEATER_H_

#include <stdbool.h>
#include "../global.h"

#define DECIDE_HEATING_INTERVAL 	140
#define HEATER_PERIOD_FAKTOR    	10		// think this has to be a factor of 2
#define HEATER_ADJUST_TEMP_TRIGGER	50

#define TURN_HEATER_OFF()	do { HEATER_PORT &= ~(1 << HEATER_SELECT); } while(0);
#define TURN_HEATER_ON()	do { HEATER_PORT |=  (1 << HEATER_SELECT); } while(0);

// power of the heater in percent
uint8_t power;

// a turn is a time intervall that will increased every time a decision for the heater is made.
// a period are 100 turns * (n*1000). n is defined by HEATER_PERIOD_FAKTOR. A period is a full cycle.
// 80% power with a HEATER_PERIOD_FAKTOR of 10 means, that 800000 turns will be performed
// with the heater on and 200000 turns will perform with the heater off to fullfill the period.
//uint32_t turn;
uint8_t turn;

/**
 * Initialise the heater module
 */
void heater_init(void);

/**
 * Set ore clear the lock bit
 */
void heater_lock(report_data_t *, bool lock);

/**
 * Set or clear the preheater bit
 */
void heater_preheat(report_data_t *, bool preheat);

/**
 * Set or clear the temperature is reached bit
 */
void heater_reached(report_data_t *, bool reached);

/**
 * Set or clear the device is cooling downbit
 */
void heater_cool(report_data_t *, bool cool);

/**
 * Set the power of the heater in percent
 * 100 means full power, 50 means half power
 */
void heater_setPower(uint8_t);

#endif


