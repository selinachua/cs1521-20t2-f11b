#include <stdio.h>
#include <assert.h>

typedef unsigned int Word;

/**
 * Reverses bits of w.
 * 
 *  w      ret
 * 1010 -> 0101
 * 
 * 1. Grab the second from rightmost bit from w (w & mask)
 * 1010
 * 1000 & (1 << 3)
 * ------
 * 1000 != 0 -> bit is = 1
 * 
 * 2. Set the correct bit in ret if bit is = 1
 * ret = 0 // 0100
 * 0100
 * 0001 | -> opp_mask
 * ------
 * 0101
 * 
 * pseudocode:
 * for every bit in w:
 *      masked = w & mask;
 *      if (masked != 0):
 *          ret = ret | opp_mask;
 * return ret
 */
Word reverseBits(Word w) {
    int ret = 0;
    for (int i = 0; i < 32; i++) {
        // First it  -> mask = 0000 ... 0001
        // Second it -> mask = 0000 ... 0010
        // Third it  -> mask = 0000 ... 0100
        int mask = 1 << i;
        int masked = w & mask;
        if (masked != 0) {
            // First it  -> opp_mask = 1000 ... 0000 = 1 << 31
            // Second it -> opp_mask = 0100 ... 0000
            // Third it  -> opp_mask = 0010 ... 0000
            int opp_mask = 1 << (31 - i);
            // i += 1 -> i = i + 1;
            // ret = ret | opp_mask -> ret |= opp_mask
            ret |= opp_mask;
        }
    }

    return ret;
}

// testing
int main(void) {
    Word w1 = 0x01234567;
    // 0000 => 0000 = 0
    // 0001 => 1000 = 8
    // 0010 => 0100 = 4
    // 0011 => 1100 = C
    // 0100 => 0010 = 2
    // 0101 => 1010 = A
    // 0110 => 0110 = 6
    // 0111 => 1110 = E
    assert(reverseBits(w1) == 0xE6A2C480);
    puts("All tests passed!");
    return 0;
}