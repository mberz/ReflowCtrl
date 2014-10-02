
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "read.h"
#include "../../../lib/src/libreflowctrl.h"

char* YESNO(i){
    if(i == 0){ return (char*)"No"; } else { return (char*)"Yes"; }
}

void io_read(void){
    report_parsed_data_t *data = reflowctrl_read();
    printf("%-30s %.2f°C\n", "Temperature:",            data->temperature           );
    printf("%-30s %c\n", "Command:",                data->command               );
    printf("%-30s %3s\n", "------------------------------", "---");
    printf("%-30s %s\n", "Device is locked:",       YESNO( data->is_locked )    );
    printf("%-30s %s\n", "Preheating phase:",       YESNO( data->pre_heat )     );
    printf("%-30s %s\n", "Is Heating:",             YESNO( data->is_heating )   );
    printf("%-30s %s\n", "Is Cooling:",             YESNO( data->is_cooling )   );
    printf("%-30s %s\n", "Temperature is reached:", YESNO( data->reached_temp ) );
    printf("%-30s %3s\n", "------------------------------", "---");
}
