/* Name: hidtool.c
 * Project: hid-data example
 * Author: Christian Starkjohann
 * Creation Date: 2008-04-11
 * Tabsize: 4
 * Copyright: (c) 2008 by OBJECTIVE DEVELOPMENT Software GmbH
 * License: GNU GPL v2 (see License.txt), GNU GPL v3 or proprietary (CommercialLicense.txt)
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "hiddata.h"
#include "hidtool.h"
#include "../../../../Config/usbconfig.h"  /* for device VID, PID, vendor name and product name */

/* ------------------------------------------------------------------------- */

static char *usbErrorMessage(int errCode)
{
static char buffer[80];

    switch(errCode){
        case USBOPEN_ERR_ACCESS:      return "Access to device denied";
        case USBOPEN_ERR_NOTFOUND:    return "The specified device was not found";
        case USBOPEN_ERR_IO:          return "Communication error with device";
        default:
            sprintf(buffer, "Unknown USB error %d", errCode);
            return buffer;
    }
    return NULL;    /* not reached */
}

static usbDevice_t  *openDevice(void)
{
usbDevice_t     *dev = NULL;
unsigned char   rawVid[2] = {USB_CFG_VENDOR_ID}, rawPid[2] = {USB_CFG_DEVICE_ID};
char            vendorName[] = {USB_CFG_VENDOR_NAME, 0}, productName[] = {USB_CFG_DEVICE_NAME, 0};
int             vid = rawVid[0] + 256 * rawVid[1];
int             pid = rawPid[0] + 256 * rawPid[1];
int             err;
    if((err = usbhidOpenDevice(&dev, vid, vendorName, pid, productName, 0)) != 0){
        fprintf(stderr, "error finding %s: %s\n", productName, usbErrorMessage(err));
        return NULL;
    }
    return dev;
}

/* ------------------------------------------------------------------------- */

void hexdump(char *buffer, int len)
{
int     i;
FILE    *fp = stdout;

    for(i = 0; i < len; i++){
        if(i != 0){
            if(i % 16 == 0){
                fprintf(fp, "\n");
            }else{
                fprintf(fp, " ");
            }
        }
        fprintf(fp, "0x%02x", buffer[i] & 0xff);
    }
    if(i != 0)
        fprintf(fp, "\n");
}

/* ------------------------------------------------------------------------- */
usb_dev_handle* hidtool_open(void){
    usb_dev_handle *dev;
    if((dev = openDevice()) == NULL){
        fprintf(stderr, "Can not open device.\n");
        exit(1);
    }
    return dev;
}

void hidtool_close(usb_dev_handle *dev){
    usbhidCloseDevice(dev);
}

char* hidtool_read(usb_dev_handle *dev){
    memset(readbuffer, 0, 5);
    int         err;

    // convert r/w into struct.
    int len = sizeof(readbuffer);
    if((err = usbhidGetReport(dev, 0, readbuffer, &len)) != 0){
        fprintf(stderr, "error reading data: %s\n", usbErrorMessage(err));
    }
    return readbuffer;
}

int hidtool_write(usb_dev_handle *dev, char *data){
    int         err;

    memset(writebuffer, 0, 5);
    memcpy(writebuffer +1, data, 4);
    
    if((err = usbhidSetReport(dev, writebuffer, 5)) != 0){   /* add a dummy report ID */
	    fprintf(stderr, "error writing data: %s\n", usbErrorMessage(err));
	    return 1;
	}
	return 0;
}

/* ------------------------------------------------------------------------- */
