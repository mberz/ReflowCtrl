#include "../cu/cu.h"

// Declarations of tests
TEST(test_structcpy_frommem);
TEST(test_structcpy_tomem);

// Collect tests into test suite
TEST_SUITE(STRUCTCPY_TEST) {
    TEST_ADD(test_structcpy_frommem),
    TEST_ADD(test_structcpy_tomem),
    TEST_SUITE_CLOSURE
};
