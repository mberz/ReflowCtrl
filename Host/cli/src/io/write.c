
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "read.h"
#include "../../../lib/src/libreflowctrl.h"


void io_write(report_parsed_data_t *data){
    // read bevore send!
    report_parsed_data_t *read = reflowctrl_read();
    
    // checks
    if( read->is_cooling ){
        fprintf(stderr, "Device is cooling down. Please wait.\n");
        return;
    }
    
    if( data->pre_heat && read->is_locked){
        fprintf(stderr, "Device is locked. Please wait.\n");
        return;
        
    }

    reflowctrl_write(data);    
}
