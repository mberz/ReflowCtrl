
#ifndef IN_TEST_MODE
#define IN_TEST_MODE 1
#endif

#include "mem/cpy.h"
#include "mem/structcpy.h"

void *dummy(void);

// This struct contains all test suites
TEST_SUITES {
	TEST_SUITE_ADD(IOBUFFER_TEST),
	TEST_SUITE_ADD(STRUCTCPY_TEST),
    TEST_SUITES_CLOSURE
};

int main(int argc, char *argv[]) {
    // Set up directory where are stored files with outputs from test
    // suites
    CU_SET_OUT_PREFIX("regressions/");
    
    // Run all test suites
    CU_RUN(argc, argv);
    
    return 0;
}
