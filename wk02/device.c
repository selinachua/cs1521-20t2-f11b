#define READING   0x01 // 0000 0001
#define WRITING   0x02 // 0000 0010
#define AS_BYTES  0x04 // 0000 0100
#define AS_BLOCKS 0x08 // 0000 1000
#define LOCKED    0x10 // 0001 0000

/**
 * device: 
 * 0000 0000
 * 
 * 0001 0101 -> locked and reading as bytes
 */
unsigned char device;

// mark the device as locked for writing blocks
// LOCKED, WRITING, AS_BLOCKS
// 0001 0000
// 0000 0010
// 0000 1000 |
// ---------
// 0001 1010

// device = 0001 1111
// device = 0001 1010
device = LOCKED | WRITING | AS_BLOCKS;

// mark the device as locked for reading bytes
device = LOCKED | READING |AS_BYTES;

// remove the lock on a device, leaving other flags unchanged
// & (~LOCKED)
// ~ 0001 0000 = 1110 1111
device = device & (~LOCKED);

// switch a device to/from reading and writing, leaving other flags unchanged

// set the device as locked, leaving other flags unchanged
