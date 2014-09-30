
#ifndef _SENSOR_MAX6675_H_
#define _SENSOR_MAX6675_H_

    uint8_t interval;
    uint8_t max6675_error;
    uint8_t shouldReadTemp;

    uint16_t measurements[5];

    /*
     * Initialise the Sensor
     */
    void init_max6675(void);

    /* 
     * Read the current temperature
     * in *100 notation. 
     * Only full °C are supported. 
     */
    uint16_t read_max6675(void);

#endif
