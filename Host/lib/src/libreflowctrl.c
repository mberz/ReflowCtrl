
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>


#include "libreflowctrl.h"

#ifdef __cplusplus
extern "C" {
#endif
#include "usb/hidtool.h"
#include "usb/hiddata.h"
#ifdef __cplusplus
}
#endif

// Macros to handle the status
#define CHECK_STATUS(var,statusbit) ((var) & (1<<(statusbit)))
#define SET_STATUS(var,statusbit) ((var) |= (1<<(statusbit)))
#define CLEAR_STATUS(var,statusbit) ((var) & ~(1<<(statusbit)))

void reflowctrl_init(void){
    recived = calloc(1, sizeof(report_parsed_data_t));
    send = calloc(1, sizeof(report_parsed_data_t));
    check = 0;
}

void reflowctrl_destroy(void){
    free(send);
    free(recived);
}

void setDataToRaw(char *data, report_raw_data_t *rarPtr){
    // check integer - must be different on each read.
    static int8_t lastcheck = -1;
    
    // copy raw data into the struct
    memcpy(rarPtr, data +1, 4);
    
    // parse into readable struc
    recived->direction = false;
    
    if(CHECK_STATUS(rarPtr->control, STATUS_DIRECTION)){
        recived->direction = true;
        fprintf(stderr, "Reviced data is not coming from the device.\n");
    }
    
    recived->pre_heat = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_PREHEAT)){
        recived->pre_heat = true;
    }
    
    recived->set_temp = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_SETTEMP)){
        recived->set_temp = true;
    }
    
    recived->reached_temp = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_REACHEDTEMP)){
        recived->reached_temp = true;
    }
    
    recived->is_locked = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_IS_LOCKED)){
        recived->is_locked = true;
    }
    
    recived->is_cooling = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_IS_COOLING)){
        recived->is_cooling = true;
    }
    
    recived->is_heating = false;
    if(CHECK_STATUS(rarPtr->control, STATUS_IS_HEATING)){
        recived->is_heating = true;
    }
    
    if(lastcheck == -1){
        // first read
        lastcheck = 0;
        if(CHECK_STATUS(rarPtr->control, STATUS_CHECK)){
            lastcheck = 1;
        }
    } else {
        // check toggeling;
        if(CHECK_STATUS(rarPtr->control, STATUS_CHECK) == lastcheck){
            //fprintf(stderr, "WARNING: check bit is not correct\n");
        }
        lastcheck = CHECK_STATUS(rarPtr->control, STATUS_CHECK);
    }
    
    recived->temperature = (rarPtr->temp /100);
    recived->command = rarPtr->command;
}

void reflowctrl_read_cb(int *running, void *callback(report_parsed_data_t *)){
    usbDevice_t* device = (usbDevice_t *) hidtool_open();
    while(running) {
        char *data = hidtool_read((usb_dev_handle *)device);
        setDataToRaw(data, &current_device_raw_data);
        callback(recived);
        sleep(running);
    }
    hidtool_close((usb_dev_handle *)device);
}

report_parsed_data_t *reflowctrl_read(void){
    // open device
    usbDevice_t* device = (usbDevice_t *) hidtool_open();
    // get data bytes from usb
    char *data = hidtool_read((usb_dev_handle *)device);
    // set into raw_struc
    setDataToRaw(data, &current_device_raw_data);
    hidtool_close((usb_dev_handle *)device);
    return recived;
}

void reflowctrl_write(report_parsed_data_t *data){
    set_next_raw_data.control = 0;
    set_next_raw_data.temp = 0; //data->temperature;
    set_next_raw_data.command = 0; //data->command;
    
    // CONTROL
    recived->direction = false;
    if(data->direction){
        SET_STATUS(set_next_raw_data.control, STATUS_DIRECTION);
    } else {
        CLEAR_STATUS(set_next_raw_data.control, STATUS_DIRECTION);
    }
    
    if(data->pre_heat){
        SET_STATUS(set_next_raw_data.control, STATUS_PREHEAT);
    } else {
        CLEAR_STATUS(set_next_raw_data.control, STATUS_PREHEAT);
    }
    
    if(data->set_temp){
        SET_STATUS(set_next_raw_data.control, STATUS_SETTEMP);
    } else {
        CLEAR_STATUS(set_next_raw_data.control, STATUS_SETTEMP);
    }
    
    if( data->check){
        SET_STATUS(set_next_raw_data.control, STATUS_CHECK);
    } else {
        CLEAR_STATUS(set_next_raw_data.control, STATUS_CHECK);
    }
    
    // TEMPERATURE
    set_next_raw_data.temp = (data->temperature * 100);
    
    // COMMAND
    set_next_raw_data.command = data->command;
    
    // open device
    usbDevice_t* device = (usbDevice_t *) hidtool_open();
    hidtool_write((usb_dev_handle *)device, (char *)&set_next_raw_data);
    hidtool_close((usb_dev_handle *)device);
}



