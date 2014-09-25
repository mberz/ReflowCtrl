
#include <avr/interrupt.h>
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
uint8_t spi_put_byte(uint8_t data)
{
    SPDR = data;
    SPI_BUSY_WAIT();
    return SPDR;
}

uint16_t gettemp(){
    int16_t act_temp;
    
    // TEST 1 
//    CS_Port &= ~(1 << CS);
//    act_temp = (spi_get_byte() << 8);
//    act_temp |= spi_get_byte();
//    CS_Port |= (1 << CS);
//    return act_temp >> 3;
    
    // TEST 2
    uint8_t	bytecounter = 0;
    uint8_t Bitnr = 0;
    CS_Port &= ~(1 << CS);												//Chip select anlegen
    for(bytecounter = 0 ; bytecounter < 16 ; bytecounter++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
        SCK_Port |= (1 << SCK);											//SCK hi
        if(bytecounter >= 3 && bytecounter <= 14 ){
            if((SO_Pin & (1 << SO))){									//WENN SO 1 ist, dann...
                act_temp |= (1<< Bitnr++);
            } else {													//WENN dem NICHT so ist, dann...
                act_temp &= ~(1<< Bitnr++);
            }
        }
        SCK_Port &= ~(1 << SCK);										//SCK LO
    }
    CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.

}

// getTC() returns 0 if Thermocouple is not connected, 255 if thermocuple is connected
// (to enable this feature T- must be connected to GND)
uint8_t getTC(void){													//Temperatur holen.										//Variablen
    uint8_t TC = 0;
    uint8_t	bytecounter = 0;
    CS_Port &= ~(1 << CS);												//Chip select anlegen
    for(bytecounter = 0 ; bytecounter < 16 ; bytecounter++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
        SCK_Port |= (1 << SCK);											//SCK hi
        if(bytecounter == 2){											//das 3. bit ist f¸r uns relevant.
            if((SO_Pin & (1 << SO))){									//WENN SO 1 ist, dann...
                TC = 0;
            }else{														//WENN dem NICHT so ist, dann...
                TC = 255;
            }
        }
        SCK_Port &= ~(1 << SCK);										//SCK LO
    }
    CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
    return TC;															//Das ist doch mal was ;D
}

void init_max6675(){
    shouldReadTemp = 0;

    // From http://www.tobias-schlegel.de/?page_id=295&lang=en
    SO_DDR &= ~(1 << SO);
    CS_DDR |= (1 << CS);
    SCK_DDR |= (1 << SCK);												//IOs setzen
    SO_Port |= (1<<SO);													//Pullups an.
    CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
    SCK_Port &= ~(1 << SCK);											//SCK LO
    
    SPCR = (1<<SPE)|(1<<SPR0)|(1<<MSTR);
    
    interval = 0;
    max6675_error = 0;
    interval = getTC();
    if(interval == 255){
        interval = 200;
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
    return lasttemp;
}
