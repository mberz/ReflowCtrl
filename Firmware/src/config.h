#include <avr/io.h>
#ifndef _CONFIG_H_
	#define _CONFIG_H_	

	
	// *** ================================================
	// *** EEPROM
	// *** ================================================
	#define EEPROM_STARTADDR				EE_STARTADDR
	#define EEPROM_MAX_BYTES				EE_MAX_BYTES

	// *** ================================================
	// *** OUTPUTS
	// *** ================================================
	// STATUS LED
	#define STATUS_LED_DDR						DDRD
	#define STATUS_LED_PORT						PORTD
	#define STATUS_LED_PIN						PD5


	// *** ================================================
	// *** USB
	// *** ================================================
	#define USB_DDR								DDRD
	#define USB_DATA_MINUS						PD3
	#define USB_DATA_PLUS						PD2
	
#endif //_CONFIG_H


