
#ifndef _global_h
#define _global_h

#include "config.h"

// GLOBAL DEFINES AND MACROS
#define LED_ON 		STATUS_LED_PORT |= ( 1 << STATUS_LED_PIN); 
#define LED_OFF 	STATUS_LED_PORT &= ~( 1 << STATUS_LED_PIN); 
#define LED_TOGGEL	STATUS_LED_PORT ^= ( 1 << STATUS_LED_PIN); 

// DUMMY FUNCTION
// ---------------------------------------------
void *dummy(void);


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
volatile uint16_t globalTemp;

#endif
