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

    // *** ================================================
    // *** max6675
    // *** ================================================
    #define MAX6675_SCK_PORT					PORTB       // SCK port name
    #define MAX6675_CS_PORT                     PORTB       // CS port name
    #define MAX6675_SO_PORT                     PORTB       // SO pin name
    #define MAX6675_SCK_DDR                     DDRB        // SCK DDR name
    #define MAX6675_CS_DDR                      DDRB        // CS DDR name
    #define MAX6675_SO_DDR                      DDRB        // SO DDR name
    #define MAX6675_SO_PIN                      PINB        // SO pin name
    #define MAX6675_SCK                         5           // SCK (serial clock) pin number
    #define MAX6675_CS                          0           // CS (chip select) pin number
    #define MAX6675_SO                          4           // SO (serial out, also MISO) pin number

#endif //_CONFIG_H


