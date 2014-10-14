
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <math.h>
#include <stdint.h>

#include "../../lib/src/libreflowctrl.h"
#include "io/read.h"
#include "io/write.h"

static struct option long_options[] =
{
    {"time",  required_argument, 0, 't'},
    {0, 0, 0, 0}
};
/* getopt_long stores the option index here. */
int option_index = 0;

char* YN(i){
    if(i == 0){ return (char*)"No"; } else { return (char*)"Yes"; }
}

void printline(report_parsed_data_t *recived){
    printf("\e[1;1H\e[2J");
    printf("%-15s %-10s %-10s %-10s %-10s\n", "Temperature",     "Preheat", "Heating", "Cooling", "Reached");
    printf("%15s %10s %10s %10s %10s\n", "---------------", "----------", "----------", "----------", "----------");
    
    printf("%15.2f %10s %10s %10s %10s\n", recived->temperature, YN( recived->pre_heat ), YN( recived->is_heating ), YN( recived->is_cooling ), YN( recived->reached_temp ));

}

void tail(int time){
    reflowctrl_read_cb(1, &printline);
}

int main(int argc, char **argv){
	reflowctrl_init();
    
    
    if(argc == 1 ){
        tail(5);    // default 5 sec
        
    } else {
        // write to device
        int c;
        c = getopt_long (argc, argv, "t:", long_options, &option_index);
        
        while (c != -1){
            switch (c) {
                case 't':
                    printf("");
                    int t;
                    t = atoi(optarg);
                    tail(t);
                    break;
                default:
                    tail(5);
            }
            c = getopt_long (argc, argv, "t:", long_options, &option_index);
        }
    }
    
    reflowctrl_destroy();
	
}
