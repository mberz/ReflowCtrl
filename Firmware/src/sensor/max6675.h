
#ifndef _SENSOR_MAX6675_H_
#define _SENSOR_MAX6675_H_

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


    uint8_t interval;
    uint8_t max6675_error;
    uint8_t shouldReadTemp;

    void init_max6675(void);
    uint16_t read_max6675(void);

#endif
