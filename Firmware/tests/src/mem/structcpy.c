//
//  menuTest.c
//  AnalyserDude
//
//  Created by Peter Shaw on 3/9/13.
//
//

#include <stdio.h>
#include <stdint.h>
#include "../cu/cu.h"

TEST(test_structcpy_frommem) {
	unsigned char *databuffer = malloc( sizeof( unsigned char ) * 4 );
	memset( databuffer, 0x00, sizeof( unsigned char ) * 4 );
	databuffer[0] = 0x01;
	databuffer[3] = 0x21;
	
	struct teststruct {
		uint8_t    a;
		uint16_t   b;
		char       c;
	} __attribute__ ((packed)) teststruct_IN;
	
    // set Values to IN
    teststruct_IN.a = 2;
    teststruct_IN.b = 258;
    teststruct_IN.c = '~';
    
	// debug output of the values:
     printf("test_structcpy_frommem: uint_8 a = %d, uint_16 b = %d, char c = %c\n"
     	, teststruct_IN.a
     	, teststruct_IN.b
     	, teststruct_IN.c
     	);
     printf("test_structcpy_frommem: databuffer = %s (%d)[%d]\n"
     	, databuffer
     	, strlen(databuffer)
     	, sizeof(databuffer)
     	);

	for ( int i = 0; i < 4; i++ ) {
		printf("Databuffer Element %d = %c, %d\n"
			, i
			, databuffer[ i ]
			, databuffer[ i ]
		);
	}
	
	printf("Size of teststruct_IN = %d \n", sizeof(teststruct_IN));
	
    // check values 
     assertEquals(teststruct_IN.a , 2);
     assertEquals(teststruct_IN.b , 258);
     assertEquals(teststruct_IN.c , '~');
    
	// copy struct to array
	memcpy( databuffer, &teststruct_IN, 4);
    
    printf("Replaced databuffer:\n");
    printf("test_structcpy_frommem: databuffer = %s (%d)[%d]\n"
     	, databuffer
     	, strlen(databuffer)
     	, sizeof(databuffer)
     	);

	for ( int i = 0; i < 4; i++ ) {
		printf("Databuffer Element %d = %c, %d\n"
			, i
			, databuffer[ i ]
			, databuffer[ i ]
		);
	}
	
	assertEquals(databuffer[0] , 2);
    assertEquals(databuffer[1] , 2);
    assertEquals(databuffer[2] , 1);
    assertEquals(databuffer[3] , '~');
    
    // stick uint16 together
    uint16_t number = ((uint16_t)databuffer[2] << 8) | databuffer[1];
    printf("Uint16 = %d\n", number);
    assertEquals(number , 258);
}

TEST(test_structcpy_tomem) {
	printf("test_structcpy_tomem: \n");
	
	unsigned char *databuffer = malloc( sizeof( unsigned char ) * 4 );
	memset( databuffer, 0x00, sizeof( unsigned char ) * 4 );
	databuffer[0] = 0x65;
	databuffer[1] = 0x02;
	databuffer[2] = 0x01;
	databuffer[3] = 0x7E;
	
	struct teststruct {
		uint8_t    a;
		uint16_t   b;
		char       c;
	} __attribute__ ((packed)) teststruct_OUT;

	for ( int i = 0; i < 4; i++ ) {
		printf("Databuffer Element %d = %c, %d\n"
			, i
			, databuffer[ i ]
			, databuffer[ i ]
		);
	}

	memcpy( &teststruct_OUT, databuffer, 4);
	
	printf("test_structcpy_tomem: uint_8 a = %d, uint_16 b = %d, char c = %c\n"
     	, teststruct_OUT.a
     	, teststruct_OUT.b
     	, teststruct_OUT.c
     	);

     assertEquals(teststruct_OUT.a , 101);
     assertEquals(teststruct_OUT.b , 258);
     assertEquals(teststruct_OUT.c , '~');
    

}

