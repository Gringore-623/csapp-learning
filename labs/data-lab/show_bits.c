#include <limits.h>
#include <stdio.h>

static void print_bits(unsigned int value)
{
    int width = (int)(sizeof(value) * CHAR_BIT);

    for (int i = width - 1; i >= 0; --i) {
        unsigned int bit = (value >> i) & 1U;
        putchar(bit ? '1' : '0');

        if (i % 4 == 0 && i != 0) {
            putchar(' ');
        }
    }
}

int main(void)
{
    int values[] = {
        0,
        1,
        -1,
        5,
        -5,
        INT_MAX,
        INT_MIN
    };

    int count = (int)(sizeof(values) / sizeof(values[0]));

    for (int i = 0; i < count; ++i) {
        printf("%12d  0x%08x  ",
               values[i],
               (unsigned int)values[i]);

        print_bits((unsigned int)values[i]);
        putchar('\n');
    }

    return 0;
}
