/**
 * We have 32 bits, and we want to get the middle 6 bits.
 * 
 * u = 0000 1101 0000 0111 0110 0000 0000 0000 >> 13
 * 0000 ... 1101 ... 111011
 * 0000 ............ 111111 & -> 0x3F 
 * -------------------------
 * six_middle_bits(u) = 
 * 0000 .... 00111011
 * 
 * 1. Shifting
 * 2. Masking 
 */
uint32_t six_middle_bits(uint32_t u) {
    // TODO 
    return (u >> 13) & 0x3F;
}