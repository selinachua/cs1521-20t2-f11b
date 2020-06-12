/**
 * Program that checks if a number is odd using bitwise operations.
 */

#include <stdio.h>

int is_odd(int num);

int main(void) {
    printf("Please enter a number: ");
    int num = 0;
    scanf("%d", &num);

    if (is_odd(num)) {
        printf("ODD\n");
    } else {
        printf("EVEN\n");
    }

    return 0;
}

/**
 * Returns 1 if the number is odd, and 0 if even.
 * 
 * ..... 
 * is the rightmost bit 1 or 0? num & mask 
 * i want the rightmost bit to be 1. device | mask
 * 
 * 0111 1110 -> even
 * 0111 1111 -> odd
 * 
 * 0111 1111   -> num
 * 0000 0001 & -> mask = 1
 * ------------
 * 0000 0001 != 0 -> that bit at that pos = 1
 * 
 * 0111 1110
 * 0000 0001 & -> mask
 * ------------
 * 0000 0000 -> rightmost bit was 0
 * 
 * pseudocode:
 * if (num & mask == 1):
 *      this is an odd number
 * else if (num & mask == 0):
 *      this is an even number
 */
int is_odd(int num) {
    int mask = 1; // 0000 ... 0001
    // ODD
    if ((num & mask) == 1) {
        return 1;
    // EVEN
    } else if ((num & mask) == 0) {
        return 0;
    } else {
        return -1;
    }
}