
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <math.h>

#include "../../lib/src/libreflowctrl.h"
#include "io/read.h"
#include "io/write.h"

int verbose_flag = 0;

static struct option long_options[] =
{
    /* These options set a flag. */
    {"verbose", no_argument,       &verbose_flag, 1},
    /* These options don’t set a flag.
     We distinguish them by their indices. */
    {"preheat", optional_argument,       0, 'p'},
    {"temperature",  required_argument, 0, 't'},
    {"command",  required_argument, 0, 'c'},
    {0, 0, 0, 0}
};
/* getopt_long stores the option index here. */
int option_index = 0;

int main(int argc, char **argv){
	reflowctrl_init();
    
    
    if(argc == 1 ){
        io_read();
        
    } else {
        // write to device
        int c;
        c = getopt_long (argc, argv, "p:t:c:", long_options, &option_index);
        
        send->direction     = 1;
        send->pre_heat      = 0;
        send->set_temp      = 0;
        send->reached_temp  = 0;
        send->is_locked     = 0;
        send->is_cooling    = 0;
        send->is_heating    = 0;
        send->check         = 0;
        
        while (c != -1){
            switch (c) {
                case 'p':
                    send->pre_heat = 1;
                    double_t p = atoi(optarg);
                    send->temperature = p;
                    printf("Initialize pre heat phase to %.2f°C. \n", send->temperature);
                    break;
                    
                case 't':
                    send->temperature = 0; // first line bevore declaration. (dummy)
                    double_t t;
                    t = atoi(optarg);
                    if(t > 655){
                        fprintf(stderr, "Temperature limit is 655°C.\n");
                        exit(1);
                    }
                    send->temperature = t;
                    printf("Set temperature to %.2f \n", send->temperature );
                    break;
                    
                case 'c':
                    send->command = 0; // first line bevore declaration. (dummy)
                    send->command = (char) optarg[0];
                    printf("Set command '%c' \n", send->command );
                    break;
                    
            }
            c = getopt_long (argc, argv, "pt:", long_options, &option_index);
        }
        
        send->check = send->direction ^ send->pre_heat ^ send->set_temp ^ send->reached_temp ^ send->is_locked ^ send->is_cooling ^ send->is_heating ^ send->check;
        
        io_write(send);
        
    }
    
    reflowctrl_destroy();
	
}