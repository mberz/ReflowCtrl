//
//  menuTest.c
//  AnalyserDude
//
//  Created by Peter Shaw on 3/9/13.
//
//

#include <stdio.h>
#include "../cu/cu.h"

TEST(test_self) {
    assertTrue(1);
    assertEquals(1, 1);
}

TEST(test_memcpy) {
	char t = 'a';
	char r;
	memcpy(&r, &t, 1);
	assertEquals(t, r);
}

TEST(test_array_memcpy) {
	char t[12] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '\0'};
	char r[12];
	memcpy(&r, &t, 12);
	printf("t: %s\nr: %s", t, r);
	assertEquals(t[1], r[1]);
}


TEST(test_overwrite_memcpy) {
	char t = 'a';
	char o = 'b';
	char r;
	memcpy(&r, &t, 1);
	assertEquals(t, r);
	memcpy(&r, &o, 1);
	assertEquals(o, r);
}

