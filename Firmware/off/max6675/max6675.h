

/*
Max6675 library by Tobias Schlegel, 5.2009
www.tobias-schlegel.de

Report bugs to tobias@drschlegel.de

This software is deliveres as-is and comes with absolute NO warranty.
This software is published under GNU license.
*/


//Define hardware-specific issues here:

#include "../../src/config.h"

#define SCK MAX6675_SCK						//SCK (serial clock) pin number
#define CS MAX6675_CS						//CS (chip select) pin number
#define SO MAX6675_SO						//SO (serial out, also MISO) pin number

#define SCK_Port MAX6675_SCK_PORT				//SCK port name
#define CS_Port MAX6675_CS_PORT				//CS port name
#define SO_Pin MAX6675_SO_PIN					//SO pin name
#define SO_Port MAX6675_SO_PORT				//so pin name

#define SCK_DDR MAX6675_SCK_DDR				//SCK DDR name
#define CS_DDR MAX6675_CS_DDR					//CS DDR name
#define SO_DDR MAX6675_SO_DDR					//SO DDR name



uint16_t gettemp(void);
void init_6675(void);
uint8_t getTC(void);
