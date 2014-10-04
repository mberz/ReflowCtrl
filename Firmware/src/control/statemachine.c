
#include "statemachine.h"

uint8_t control_run(uint8_t state){
    
    switch(state){
        case STATE_PREHEAT:
            if(targetTemp > 0){
                LET_LED_TOGGLE = 1;
                heater_preheat(&data_out, 1);
                heater_lock(&data_out, 1);
                first_targetTemp = targetTemp;
                
                if(globalTemp/100 >= targetTemp){
                    state = STATE_HOLD;
                    heater_lock(&data_out, 0);
                    heater_preheat(&data_out, 0);
                }
            }
            break;
            
        case STATE_SOLDER:
            LED_ON;
            LET_LED_TOGGLE = 1;
            if(globalTemp/100 >= (targetTemp - TEMP_JITTER)){
                heater_reached(&data_out, 1);
                state = STATE_HOLD;
            }
            break;
            
        case STATE_HOLD:
            LED_OFF;
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
            heater_lock(&data_out, 1);
            heater_cool(&data_out, 1);
            targetTemp = 0;
            if(globalTemp <= first_targetTemp){
                heater_lock(&data_out, 0);
                heater_cool(&data_out, 0);
                state = STATE_PREHEAT;
            }
            break;
    }
    return state;
}
