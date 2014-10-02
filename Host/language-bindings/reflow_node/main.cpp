/* 
 * File:   main.cpp
 * Author: kris
 *
 * Created on October 1, 2014, 2:35 PM
 */

#include <cstdlib>
#include "../../lib/src/libreflowctrl.h"

using namespace std;

void read(void){
    report_parsed_data_t *data = reflowctrl_read();
    
}

/*
 * 
 */
int main(int argc, char** argv) {
    reflowctrl_init();
    
    return 0;
}

