
#ifndef _global_h
#define _global_h

#include "config.h"
#include <stdbool.h>

// GLOBAL DEFINES AND MACROS
#define LED_ON 		STATUS_LED_PORT |= ( 1 << STATUS_LED_PIN); 
#define LED_OFF 	STATUS_LED_PORT &= ~( 1 << STATUS_LED_PIN); 
#define LED_TOGGEL	STATUS_LED_PORT ^= ( 1 << STATUS_LED_PIN); 

// DUMMY FUNCTION
// ---------------------------------------------
void *dummy(void);

/*
* CONTROLS
*/
#define CONTROL_DIRECTION_BIT	0
#define CONTROL_PREHEAT_BIT		1
#define CONTROL_SETTEMP_BIT		2
#define CONTROL_REACHEDTEMP_BIT	3  
#define CONTROL_ISLOCKED_BIT	4
#define CONTROL_COOLING_BIT		5
#define CONTROL_HEATING_BIT		6
#define CONTROL_CHECK_BIT		7 

// GLOBAL SYS FUNCTIONS
// ---------------------------------------------
void (*reboot)(void);
void globalInit(void);

// DEBUGGING
// ---------------------------------------------
#ifdef DEBUGFN
#define debug_uart(...) do{ DEBUGFN( __VA_ARGS__ ); } while(0)
#else
#define debug_uart(...) do{ } while (0)
#endif

// DEVICE DATA
// ---------------------------------------------
typedef struct {
	uint8_t	 control;
    uint16_t temp;
    char     command;
} __attribute__ ((packed)) report_data_t;

report_data_t data_in;
report_data_t data_out;

bool shouldSetTargetTemp;

volatile uint16_t globalTemp;
volatile uint16_t targetTemp;
uint16_t first_targetTemp;

#endif
