#include <limits.h>
#include <stdio.h>

#include "bits.h"

static int tests_run = 0;
static int tests_failed = 0;

static void check(const char *name, int actual, int expected)
{
    ++tests_run;

    if (actual != expected) {
        ++tests_failed;
        printf("[FAIL] %-25s actual=%d expected=%d\n",
               name, actual, expected);
    } else {
        printf("[PASS] %s\n", name);
    }
}

int main(void)
{
    check("bit_xor(4, 5)", bit_xor(4, 5), 4 ^ 5);
    check("bit_xor(-1, 0)", bit_xor(-1, 0), -1 ^ 0);

    check("is_tmax(INT_MAX)", is_tmax(INT_MAX), 1);
    check("is_tmax(-1)", is_tmax(-1), 0);
    check("is_tmax(0)", is_tmax(0), 0);

    check("negate_int(1)", negate_int(1), -1);
    check("negate_int(-42)", negate_int(-42), 42);
    check("negate_int(0)", negate_int(0), 0);

    check("is_ascii_digit('0')", is_ascii_digit(0x30), 1);
    check("is_ascii_digit('9')", is_ascii_digit(0x39), 1);
    check("is_ascii_digit('/')", is_ascii_digit(0x2f), 0);
    check("is_ascii_digit(':')", is_ascii_digit(0x3a), 0);

    check("is_less_or_equal(3, 4)", is_less_or_equal(3, 4), 1);
    check("is_less_or_equal(4, 3)", is_less_or_equal(4, 3), 0);
    check("is_less_or_equal(-3, 2)", is_less_or_equal(-3, 2), 1);
    check("is_less_or_equal(2, -3)", is_less_or_equal(2, -3), 0);
    check("is_less_or_equal(INT_MIN, INT_MAX)",
          is_less_or_equal(INT_MIN, INT_MAX), 1);
    check("is_less_or_equal(INT_MAX, INT_MIN)",
          is_less_or_equal(INT_MAX, INT_MIN), 0);

    printf("\nTests run: %d\n", tests_run);
    printf("Failures:  %d\n", tests_failed);

    return tests_failed == 0 ? 0 : 1;
}