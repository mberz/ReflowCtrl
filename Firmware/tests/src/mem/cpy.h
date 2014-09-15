#include "../cu/cu.h"

// Declarations of tests
TEST(test_self);
TEST(test_memcpy);
TEST(test_array_memcpy);
TEST(test_overwrite_memcpy);

// Collect tests into test suite
TEST_SUITE(IOBUFFER_TEST) {
    TEST_ADD(test_self),
    TEST_ADD(test_memcpy),
    TEST_ADD(test_array_memcpy),
    TEST_ADD(test_overwrite_memcpy),
    TEST_SUITE_CLOSURE
};
