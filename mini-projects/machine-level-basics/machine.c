#include "machine.h"
#include "stdio.h"

long add_numbers(long x, long y)
{
    return x + y;
}

long get_element(const long *array, long index)
{
    return array[index];
}

long sum_array(const long *array, long length)
{
    long sum = 0;

    for (long i = 0; i < length; ++i) {
        sum += array[i];
    }

        return sum;
}