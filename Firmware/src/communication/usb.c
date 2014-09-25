
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <util/delay.h>

#include "usb.h"
#include "../global.h"


/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */

PROGMEM const char usbHidReportDescriptor[22] = {
 0x06, 0x00, 0xff, // USAGE_PAGE (Generic Desktop)
    0x09, 0x01,                    // USAGE (Vendor Usage 1)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x95, 0x04,                    //   REPORT_COUNT (4)
    0x09, 0x00,                    //   USAGE (Undefined)
    0xb2, 0x02, 0x01,              //   FEATURE (Data,Var,Abs,Buf)
    0xc0                           // END_COLLECTION
};


unsigned char globalTransmissionBuffer[32] = {
	127, 0, 0, 0, 0, 0, 0, 0
	, 0, 0, 0, 0, 0, 0, 0, 0
};


uchar   usbFunctionRead(uchar *data, uchar len){
//	data_out.control = 0x00;
//	data_out.temp = 0;
//	data_out.command = 0;
	
    //data_out = data_in;
    data_out.temp = globalTemp;
    
    // # testing
    //data_out = data_in;
    
     if(len > bytesRemaining) {
         len = bytesRemaining;
     }
     //eeprom_read_block(data, (uchar *)0 + currentAddress, len);
     //memcpy(data, globalTransmissionBuffer +currentAddress,  len);
     memcpy(data, &data_out +currentAddress, len);
     
     currentAddress += len;
     bytesRemaining -= len;

     return len;	

}

uchar   usbFunctionWrite(uchar *data, uchar len){

    if(bytesRemaining == 0){
        return 1;               // end of transfer
    }
    if(len > bytesRemaining){
        len = bytesRemaining;
    }
    //eeprom_write_block(data, (uchar *)0 + currentAddress, len);
    memcpy(globalTransmissionBuffer +currentAddress, data, len);
    memcpy(&data_in +currentAddress, data, len);
    
    currentAddress += len;
    bytesRemaining -= len;
    
    
    
    return bytesRemaining == 0; // return 1 if this was the last chunk

}

usbMsgLen_t usbFunctionSetup(uchar data[8]) {
	usbRequest_t    *rq = (void *)data;
    if((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS){    /* HID class request */
        if(rq->bRequest == USBRQ_HID_GET_REPORT){  /* wValue: ReportType (highbyte), ReportID (lowbyte) */
            /* since we have only one report type, we can ignore the report-ID */
//            bytesRemaining = 128;
            bytesRemaining = 4;
            currentAddress = 0;
            return USB_NO_MSG;  /* use usbFunctionRead() to obtain data */
        }else if(rq->bRequest == USBRQ_HID_SET_REPORT){
            /* since we have only one report type, we can ignore the report-ID */
//            bytesRemaining = 128;
            bytesRemaining = 4;            
            currentAddress = 0;
            return USB_NO_MSG;  /* use usbFunctionWrite() to receive data from host */
        }
    }else{
        /* ignore vendor type requests, we don't use any */
    }
    return 0;
}

