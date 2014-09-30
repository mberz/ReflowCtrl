
#ifndef _HEATER_H_
#define _HEATER_H_

#include <stdbool.h>
#include "../global.h"

#define DECIDE_HEATING_INTERVAL 140

#define TURN_HEATER_OFF()	(HEATER_PORT &= ~(1 << HEATER_SELECT));
#define TURN_HEATER_ON()	(HEATER_PORT |= (1 << HEATER_SELECT));

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


#endif


