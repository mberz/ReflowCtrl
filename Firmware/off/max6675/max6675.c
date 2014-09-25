
/*
Max6675 library by Tobias Schlegel, 5.2009
www.tobias-schlegel.de

Report bugs to tobias@drschlegel.de

This software is deliveres as-is and comes with absolute NO warranty.
This software is published under GNU license.
*/



#include <avr/io.h>
#include "max6675.h"



uint16_t gettemp(void);													//Funktionsdeklarationen
void initavr(void);



//gettemp () returns absolute Temperature in Temp * 4 °C - in 1/4°-steps
//
uint16_t gettemp(void){													//Temperatur holen.
	uint8_t bit = 0, bitnr = 12;										//Variablen
	uint8_t foo1 = 0;
	uint16_t Rohdata = 0;
	

	
	CS_Port &= ~(1 << CS);												//Chip select anlegen

	for(foo1 = 0 ; foo1 < 16 ; foo1++){									//16 Bits einlesen

		bit = 15 - foo1;												//Die Aktuelle Bitnr berechnen.
	

		SCK_Port |= (1 << SCK);											//SCK hi
	

		if((bit <= 14) && (bit >= 3)){									//Einfach mal die 12 relevanten von den 16 Bits ausfiltern

			if((SO_Pin & (1 << SO))){										//WENN SO 1 ist, dann...
				bitnr--;												//zählen wir runter...
				Rohdata |= (1 << bitnr);								// und schieben eine 1 an bit x
			}else{														//WENN dem NICHT so ist, dann...
				bitnr--;												//zählen wir runter...
				Rohdata &= ~(1 << bitnr);								//und schieben eine 0 an bit x
			} 

		}else{															//weis au nimmer, was das soll.
			bitnr = 12;
		}

		SCK_Port &= ~(1 << SCK);										//SCK LO	
	}


	CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
		

	return Rohdata;														//Das ist doch mal was ;D
}


// getTC() returns 0 if Thermocouple is not connected, 255 if thermocuple is connected
// (to enable this feature T- must be connected to GND)
uint8_t getTC(void){													//Temperatur holen.										//Variablen
	uint8_t TC = 0;
	uint8_t	foo1 = 0;
	

	
	CS_Port &= ~(1 << CS);												//Chip select anlegen

	for(foo1 = 0 ; foo1 < 16 ; foo1++){									//16 Bits einlesen												//Die Aktuelle Bitnr berechnen.
	

		SCK_Port |= (1 << SCK);											//SCK hi
	

		if(foo1 == 2){													//das 3. bit ist für uns relevant.

			if((SO_Pin & (1 << SO))){										//WENN SO 1 ist, dann...
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




//Initiates the MAX6675 and IO-pins
void init_6675(void){													//AVR initialisieren

	SO_DDR &= ~(1 << SO);
	CS_DDR |= (1 << CS);
	SCK_DDR |= (1 << SCK);												//IOs setzen
	
	SO_Port |= (1<<SO);													//Pullups an. (Wichtig für MAX6675, der kann nicht anders, hab ich festgestellt...

	CS_Port |= (1 << CS);												//CS HI	//Alles auf Standardkonfig.
	SCK_Port &= ~(1 << SCK);											//SCK LO


}

