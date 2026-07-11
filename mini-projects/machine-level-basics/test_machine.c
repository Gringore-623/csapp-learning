#include "machine.h"
#include "stdio.h"

static int tests_run = 0;
static int tests_failed = 0;

static void check(const char *name, long actual, long expected)
{
    ++tests_run;

    if (actual != expected) {
        ++tests_failed;
        printf("[FAIL] %-25s actual=%ld expected=%ld\n",
               name, actual, expected);
    } else {
        printf("[PASS] %s\n", name);
    }
}

int main(void)
{
    long values[] = {10, 20, 30, 40, 50};

    check("add_numbers", add_numbers(7, 5), 12);
    check("get_element index 0", get_element(values, 0), 10);
    check("get_element index 3", get_element(values, 3), 40);
    check("sum_array", sum_array(values, 5), 150);
    check("sum empty array", sum_array(values, 0), 0);

    printf("\nTests run: %d\n", tests_run);
    printf("Failures:  %d\n", tests_failed);

    return tests_failed == 0 ? 0 : 1;
}