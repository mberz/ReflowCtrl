

#include <avr/interrupt.h>
#include "../global.h"
#include "heater.h"

/** 
 * Service vetor that controls the heater module
 */
ISR(TIMER2_OVF_vect) {
    static uint8_t count = 0;
    count++;
    if(count >= DECIDE_HEATING_INTERVAL){
        count = 0;
        if(state != STATE_COOL){
	        int16_t diffTemp = (globalTemp /100)- targetTemp;
	        if( diffTemp > 0 ){
			    TURN_HEATER_OFF();
			    data_out.control &= ~(1 << 6);
    	    } else if( diffTemp < 0 ){
    	    	TURN_HEATER_ON();
    	    	data_out.control |= 1<< 6;
    	    } else {
    	    	// freue ich mich.
    	    }
    	} else {
    		TURN_HEATER_OFF();
    		data_out.control &= ~(1 << 6);
    	}
    }
}

void heater_init(void){
	// set relay port
	DDRB |= (1 << PB1);
	PORTB &= ~(1 << PB1);
	
	// set state to preheat initially 
	state = STATE_PREHEAT;
	targetTemp = 0;

	// Timer 2 
	TCCR2B |= (1<<CS22) | (1<<CS20);        // Prescaler 1024
    TIMSK2 |= (1<<TOIE2);  
}

void heater_lock(report_data_t *data, bool lock){
	if(lock){
		data->control |= (1 << CONTROL_ISLOCKED_BIT);
	} else {
		data->control &= ~(1 << CONTROL_ISLOCKED_BIT);
	}
}

void heater_preheat(report_data_t *data, bool preheat){
	if(preheat){
		data->control |= (1 << CONTROL_PREHEAT_BIT);
	} else {
		data->control &= ~(1 << CONTROL_PREHEAT_BIT);
	}
}

void heater_reached(report_data_t *data, bool reached){
	if(reached){
		data->control |= (1 << CONTROL_REACHEDTEMP_BIT);
	} else {
		data->control &= ~(1 << CONTROL_REACHEDTEMP_BIT);
	}
}

void heater_cool(report_data_t *data, bool cool){
	if(cool){
		data->control |= (1 << CONTROL_COOLING_BIT);
	} else {
		data->control &= ~(1 << CONTROL_COOLING_BIT);
	}
}

