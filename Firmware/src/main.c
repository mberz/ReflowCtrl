//
//  main.c
//  Reflow oven 
//  ccc-ffm.de
//  Revision 1.00
//	
// For any questions contact pertershaw or fast on  irc://irc.hackint.org #ccc-ffm
//

#include <stdlib.h>
#include <stdbool.h>

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <avr/eeprom.h>

#include "config.h"
#include "global.h"
#include "../../Config/usbconfig.h"

#include "communication/usb.h"
#include "periphery/max6675.h"
#include "periphery/heater.h"
#include "control/statemachine.h"

#include "../src-lib/usbdrv/usbdrv.h"
#include "../src-lib/usbdrv/oddebug.h"

 
/*
   ===============================================================
   Setup the chip and run the state machine 
   ===============================================================
*/
int main(void) {	
	// Enable the Watchdog
    wdt_enable(WDTO_1S);

	// Initialise the board and all global variables 
    globalInit();
    
    // Set the USB Adresscounter to zero
    currentAddress = 0;
    bytesRemaining = 0;
    
	// Light up the status LED
	LED_ON;
     
    /* RESET status: all port bits are inputs without pull-up.
     * That's the way we need D+ and D-. Therefore we don't need any
     * additional hardware initialization.
     */
    odDebugInit();
    usbInit();
    usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
    uchar i;
    i = 0;
    while(--i){             /* fake USB disconnect for > 250 ms */
        wdt_reset();
        _delay_ms(1);
    }
    usbDeviceConnect();
    
    // Initialise the temperature sensor
    init_max6675();
    
    // Initialise the heat controller 
    heater_init();
    
    // Enable Global Interrupts
    sei();
    
    // Switch the Light off. - End of initialisation phase    
    LED_OFF;
	heater_setPower(100);
	
    // Mainloop
    for(;;){   
        // pet the dog
        wdt_reset();
        
        // poll the usb for new data
        usbPoll();
        
        // get the global temperature from the sensor
        globalTemp = read_max6675() * 100;
        
        // If a new temperature is set by the host software, get the new target temperature
        if( shouldSetTargetTemp == 1){
        	targetTemp = (data_in.temp / 100);
        	shouldSetTargetTemp = 0;
            state = STATE_SOLDER;
        }
        
        // check controls
        if(data_in.command == 'x'){
        	shouldSetTargetTemp = 0;
        	state = STATE_PREHEAT;
        	LED_OFF;
        	heater_lock(&data_out, 0);
            heater_cool(&data_out, 0);
            heater_preheat(&data_out, 0);
            heater_reached(&data_out, 0);
            heater_setPower(100);
            data_in.command = '\0';
            data_in.temperature = 0;
            data_out.command = '\0';
            data_out.temperature = 0;
        }
        
        state = control_run(state);
        
        // adjust temperature
        heater_adjust_power(state);

    }
    return 0;	
}


