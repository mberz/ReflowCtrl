
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../global.h"
#include "max6675.h"

ISR (TIMER0_OVF_vect) {
    static count = 0;
    count++;
    if(count >= interval){
        count = 0;
        // read tmp
        shouldReadTemp = 1;
    }
}

 uint16_t gettemp(){
     uint16_t act_temp;
     act_temp = 0;
    
      uint8_t   bytecounter = 0;
      uint8_t Bitnr = 0;
      PORTB &= ~(1 << PB0);                                             
      _delay_us(100);

      // for(bytecounter = 0 ; bytecounter < 16 ; bytecounter++){           
//           PORTB |= (1 << PB5);       
//           if(bytecounter >= 3 && bytecounter <= 14 ){                                   
//           	act_temp += (PINB & (1 << PB4)) *2 ^ Bitnr++;
//           }
//           PORTB &= ~(1 << PB5);                                 
//       }
  for(int i=0; i<10; i++){

    //clk-toggle for next bit (skips irrelevant msb in first iteration)
    PORTB |= (1 << PB5);
    _delay_ms(1);
    PORTB &= ~(1 << PB5);
    _delay_ms(1);

    // shift
    act_temp = act_temp << 1;
    
    // add pin state (0 or 1)
    act_temp += ((PINB >> PB4) & 1);       
  }

       PORTB |= (1 << PB0);                      
    
   //   act_temp = act_temp * 0.25;
      
    return act_temp;
 }

uint8_t getTC(void){                                            
    uint8_t TC = 0;
    uint8_t bytecounter = 0;
    PORTB &= ~(1 << PB0);   
    for(bytecounter = 0 ; bytecounter < 16 ; bytecounter++){
        PORTB |= (1 << PB5);                            
        if(bytecounter == 2){                           
            if((PINB & (1 << PB4))){          
                TC = 0;
            } else {                                      
                TC = 255;
            }
        }
        PORTB &= ~(1 << PB5);                                       
    }
    PORTB |= (1 << PB0);                                                
    return TC;                                                          
}

void init_max6675(){
    shouldReadTemp = 0;

	//clk and cs as output
    DDRB |=  (1 << PB5) | (1 << PB0);   
    DDRB &= ~(1 << PB4);
        
	// pullup
	PORTB |= (1<<PB4); 
    
    //cs high for measure
	DDRB |= (1<<PB0);
    
    max6675_error = 0;
     if(getTC() == 255){
         interval = 20;
     } else {
         interval = 1;
         max6675_error = 1;
     }
    // Enable timer
    TCCR0B |= (1<<CS02) | (1<<CS00);        // Prescaler 1024
    TIMSK0 |= (1<<TOIE0);   
}

uint16_t read_max6675(){
    static uint16_t lasttemp;
    if(shouldReadTemp){
        LED_TOGGEL;
        if(max6675_error == 0){
            uint16_t t = gettemp();
            if(t > 0){
                lasttemp = t;
            }
        } else {
            // failsave reinitialize
            init_max6675();
        }
        shouldReadTemp = 0;
    }
    return lasttemp;
}
