
#ifndef _hidtool_h
#define _hidtool_h

char        readbuffer[5];    /* room for dummy report ID */
char        writebuffer[5];    /* room for dummy report ID */

#include <usb.h>

void hexdump(char *, int);

usb_dev_handle* hidtool_open(void);
void hidtool_close(usb_dev_handle*);

char* hidtool_read(usb_dev_handle*);
void hidtool_write(usb_dev_handle*, char *);

#endif
