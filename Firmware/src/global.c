
// GLOBAL FUNCTIONS

#include <stdlib.h>
#include "global.h"
#include "config.h"

// PRAGMA HACK TO PRINT DEFINES
// ---------------------------------------------
#define VALUE_TO_STRING(x) #x
#define VALUE(x) VALUE_TO_STRING(x)
#define VAR_NAME_VALUE(var) #var "="  VALUE(var)


// DUMMY FUNCTION
// ---------------------------------------------
void *dummy(void){return (void *) NULL;};


// GLOBAL SYS FUNCTIONS
// ---------------------------------------------
void (*reboot)(void) = (void *) 0x0000;

// CHECK REVISION
// ---------------------------------------------
#ifndef REVISION
	#define REVISION 0
#endif
#if REVISION < 1
	#warning *-----------------------------------------------------------
	#warning *
	#pragma message(VAR_NAME_VALUE(REVISION))
	#warning THIS SOFTWARE IS NOT BUILD FOR A REVISION
	#warning *
	#warning *-----------------------------------------------------------
#endif 

void globalInit(void){
	STATUS_LED_DDR = (1 << STATUS_LED_PIN);
    globalTemp = 0;
	
}