#include "bits.h"

int bit_xor(int x,int y){
    return ~(~(x & ~y) & ~(~x & y));
}

int is_tmax(int x){
    int y = x + 1;
    return !(~(x ^ y)) & !!y;
}

//x     = 01111111 11111111 11111111 11111111 maximum 32-bit signed integer
//x + 1 = 10000000 00000000 00000000 00000000
//x ^ y = all 1 == -1
//!(~(x ^ y)): x and x+1 bitwise reverse?
//why use !!y? example: if x+1 equal to 0, so x = -1 
//x     = 11111111 11111111 11111111 11111111
//x + 1 = 00000000 00000000 00000000 00000000 = y
//-1 ^ 0 = -1 so !(~(x ^ y)) will consider -1 as maximum we use !!y to filter
//y == 0    → !!y == 0
//y != 0    → !!y == 1


int negate_int(int x){
    return ~x + 1;
}

int is_ascii_digit(int x){
    int lower = x + (~0x30 + 1);
    int upper = 0x39 + (~x + 1);

    return !(lower >> 31) & !(upper >> 31);
}

int is_less_or_equal(int x, int y){
    int sign_x = (x >> 31) & 1;
    int sign_y = (y >> 31) & 1;
    int signs_differ = sign_x ^ sign_y;

    int difference = y + (~x + 1);
    int difference_nonnegative = !((difference >> 31) & 1);

    return (signs_differ & sign_x) |
           ((!signs_differ) & difference_nonnegative);
}

