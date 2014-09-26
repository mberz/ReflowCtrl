
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../global.h"
#include "max6675.h"

ISR (TIMER0_OVF_vect) {
    static count = 0;
    count++;
    if(count == interval){
        count = 0;
        // read tmp
        shouldReadTemp = 1;
    }
}

 uint16_t gettemp(){
     uint16_t act_temp;
     uint8_t msb;
     uint8_t lsb;
     act_temp = 0;
    
      uint8_t   bytecounter = 0;
      uint8_t Bitnr = 7;
      PORTB &= ~(1 << PB0);                                             
      _delay_us(100);
      for(bytecounter = 0 ; bytecounter < 8 ; bytecounter++){           
          PORTB |= (1 << PB5);                                          
          msb += (PINB & (1 << PB4)) *2 ^Bitnr--;
          PORTB &= ~(1 << PB5);                                 
      }
      
      Bitnr = 7;
      for(bytecounter = 0 ; bytecounter < 8 ; bytecounter++){
          PORTB |= (1 << PB5);                              
          lsb += (PINB & (1 << PB4)) *2 ^Bitnr--;
          PORTB &= ~(1 << PB5);                 
      }
      PORTB |= (1 << PB0);                      
      
      
    lsb =   lsb >> 3;
//  msb =   msb << 1;
//  msb =   msb >> 5;
//      act_temp  = msb << 8;
      act_temp  = lsb;
      
      act_temp = act_temp * 0.25;
      
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
            }else{                                      
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

    DDRB |=  (1 << PB5) | (1 << PB0);   
    DDRB &= ~(1 << PB4);
    
    interval = 20;
    max6675_error = 0;
    interval = getTC();
     if(interval == 255){
         interval = 20;
     } else {
         interval = 8;
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
