//
//  main.c
//  USBDevBoard
//  Revision 1.o0
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
#include "sensor/max6675.h"
#include "control/reflow.h"

#include "../src-lib/usbdrv/usbdrv.h"
#include "../src-lib/usbdrv/oddebug.h"

 
/* ------------------------------------------------------------------------- */

int main(void) {	
	uchar   i;

    wdt_enable(WDTO_1S);
    /* Even if you don't use the watchdog, turn it off here. On newer devices,
     * the status of the watchdog (on/off, period) is PRESERVED OVER RESET!
     */
     
    globalInit();
    currentAddress = 0;
    bytesRemaining = 0;
    
	// STATUS LED
	LED_ON;
     
    /* RESET status: all port bits are inputs without pull-up.
     * That's the way we need D+ and D-. Therefore we don't need any
     * additional hardware initialization.
     */
    odDebugInit();
    DBG1(0x00, 0, 0);       /* debug output: main starts */
    usbInit();
    usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
//    LED_OFF;
 
    i = 0;
    while(--i){             /* fake USB disconnect for > 250 ms */
        wdt_reset();
        _delay_ms(1);
    }
    usbDeviceConnect();
    
    globalTemp = 0;
    state = STATE_PREHEAT;
    
    init_max6675();
    control_init();
    
     // Enable Global Interrupts
    sei();
    

    //DBG1(0x01, 0, 0);       /* debug output: main loop starts */
    
    
    LED_OFF;
    for(;;){                /* main event loop */
        //DBG1(0x02, 0, 0);   /* debug output: main loop iterates */
        wdt_reset();
        
        usbPoll();
        globalTemp = read_max6675() * 100;
        
        if( shouldSetTargetTemp == 1){
        	targetTemp = (data_in.temp / 100);
        	shouldSetTargetTemp = 0;
        }
        switch(state){
        	case STATE_PREHEAT:		
        		if(targetTemp > 0){
    	    		LET_LED_TOGGLE = 1;
    	    		control_lock(&data_out, 1);
	        		control_preheat(&data_out, 1);
	        		first_targetTemp = targetTemp;
	
    	    		if(globalTemp/100 >= targetTemp){
         				state = STATE_HOLD;
         				control_lock(&data_out, 0);
         				control_preheat(&data_out, 0);
        			}
        		}
				break;
			
        	case STATE_SOLDER:
        		LED_ON;
        		LET_LED_TOGGLE = 1;
        		if(globalTemp/100 >= (targetTemp - TEMP_JITTER)){
        			control_reached(&data_out, 1);
        			state = STATE_HOLD;
        		}
    	    	break;
        	
        	case STATE_HOLD:
        		LED_OFF
				if(((data_in.control >> CONTROL_SETTEMP_BIT) & 1)){
        		if(!((data_in.control >> CONTROL_PREHEAT_BIT) & 1)){
        			if(!((data_out.control >> CONTROL_ISLOCKED_BIT) & 1)){
        					if(!((data_out.control >> CONTROL_REACHEDTEMP_BIT) & 1)) {		
        					state = STATE_SOLDER;
        					}
        				}
        				if(((data_in.control >> CONTROL_COOLING_BIT) & 1)){
        					state = STATE_COOL;
        				}
        			}
        		}   
	        	break;
        	
        	case STATE_COOL:
				LED_ON;
        		LET_LED_TOGGLE = 1;
        		control_lock(&data_out, 1);
        		control_cool(&data_out, 1);
        		targetTemp = 0;
        		if(globalTemp <= first_targetTemp){
        			control_lock(&data_out, 0);
	        		control_cool(&data_out, 0);
	        		state = STATE_PREHEAT;
	        		// Status LED
        		}
		        break;
        }
        
        
        
    }
    return 0;	
}


