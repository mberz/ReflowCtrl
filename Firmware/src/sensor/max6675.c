
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

 #define SPI_BUSY_WAIT() while(!(SPSR & (1<<SPIF))){}
 #define spi_get_byte() spi_put_byte(0)
 uint8_t spi_put_byte(uint8_t data) {
     SPDR = data;
     SPI_BUSY_WAIT();
     return SPDR;
 }

 uint16_t gettemp(){
     uint16_t act_temp;
     uint8_t msb;
     uint8_t lsb;
     act_temp = 0;
//     
    // TEST 1 
//     PORTB &= ~(1 << PB0);
// for(int i = 0; i <= 10; ++i){
//     act_temp = (spi_get_byte() << 8);
//     act_temp |= spi_get_byte();
// }
//     PORTB |= (1 << PB0);
//     return act_temp >> 3;
    
    // TEST 2
      uint8_t	bytecounter = 0;
      uint8_t Bitnr = 7;
      PORTB &= ~(1 << PB0);												//Chip select anlegen
      _delay_us(100);
      for(bytecounter = 0 ; bytecounter < 8 ; bytecounter++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
          PORTB |= (1 << PB5);											//SCK hi
          msb += (PINB & (1 << PB4)) *2 ^Bitnr--;
          PORTB &= ~(1 << PB5);										//SCK LO
      }
      
      Bitnr = 7;
	  for(bytecounter = 0 ; bytecounter < 8 ; bytecounter++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
          PORTB |= (1 << PB5);											//SCK hi
          lsb += (PINB & (1 << PB4)) *2 ^Bitnr--;
          PORTB &= ~(1 << PB5);										//SCK LO
      }
      PORTB |= (1 << PB0);												//CS HI	//Alles auf Standardkonfig.
      
      
	lsb = 	lsb >> 3;
//	msb = 	msb << 1;
//	msb = 	msb >> 5;
//      act_temp  = msb << 8;
      act_temp  = lsb;
      
      act_temp = act_temp * 0.25;
      
 	return act_temp;
 }

// getTC() returns 0 if Thermocouple is not connected, 255 if thermocuple is connected
// (to enable this feature T- must be connected to GND)
// uint8_t getTC(void){													//Temperatur holen.										//Variablen
//     uint8_t TC = 0;
//     uint8_t	bytecounter = 0;
//     CS_Port &= ~(1 << CS);												//Chip select anlegen
//     for(bytecounter = 0 ; bytecounter < 16 ; bytecounter++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
//         SCK_Port |= (1 << SCK);											//SCK hi
//         if(bytecounter == 2){											//das 3. bit ist f¸r uns relevant.
//             if((SO_Pin & (1 << SO))){									//WENN SO 1 ist, dann...
//                 TC = 0;
//             }else{														//WENN dem NICHT so ist, dann...
//                 TC = 255;
//             }
//         }
//         SCK_Port &= ~(1 << SCK);										//SCK LO
//     }
//     CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
//     return TC;															//Das ist doch mal was ;D
// }

void init_max6675(){
    shouldReadTemp = 0;

    // From http://www.tobias-schlegel.de/?page_id=295&lang=en
//    SO_DDR &= ~(1 << SO);
//    CS_DDR |= (1 << CS);
//    SCK_DDR |= (1 << SCK);												//IOs setzen
//    SO_Port |= (1<<SO);													//Pullups an.
//    CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
//    SCK_Port &= ~(1 << SCK);											//SCK LO

	DDRB |=  (1 << PB5) | (1 << PB0);	
    DDRB &= ~(1 << PB4);
    
    // SPCR = (1<<SPE)|(1<<SPR0)|(1<<MSTR);
    
    interval = 20;
    max6675_error = 0;
    //interval = getTC();
//     if(interval == 255){
//         interval = 50;
//     } else {
//         interval = 8;
//         max6675_error = 1;
//     }
    // Enable timer
    TCCR0B |= (1<<CS02) | (1<<CS00);        // Prescaler 1024
    TIMSK0 |= (1<<TOIE0);
    
}

uint16_t read_max6675(){
    static uint16_t lasttemp;
    if(shouldReadTemp){
        LED_TOGGEL;
//        SCK_Port ^= (1 << SCK);	
//        CS_Port ^= (1 << CS);
//        SO_Port ^= (1<<SO);	
        
//        PORTB ^= (1<< PB4);
        
        
        //if(max6675_error == 0){
        uint16_t t = gettemp();
            if(t > 0){
                lasttemp = t;
            }
        //} else {
        //    init_max6675();
        //}
        shouldReadTemp = 0;
    }
    interval = 50;
    return lasttemp;
}
