#define READING   0x01 // 0000 0001
#define WRITING   0x02 // 0000 0010
#define AS_BYTES  0x04 // 0000 0100
#define AS_BLOCKS 0x08 // 0000 1000
#define LOCKED    0x10 // 0001 0000

unsigned char device; 

// set the device as locked, leaving other flags unchanged

// mark the device as locked for writing blocks

// mark the device as locked for reading bytes

// remove the lock on a device, leaving other flags unchanged

// switch a device to/from reading and writing, leaving other flags unchanged
