// For each of the following struct definitions, what are the likely 
// offset values for each field, and the total size of the struct:

// 1.
// 0x0000
struct _coord {
	double x;   // 0
	double y;   // 8
};
size: 16

// 2.
typedef struct _node Node;
struct _node {
	int value;  // 0
	Node *next;	// 4
};
size: 8


// 3.
Addresses of multiples of size of its data type
struct _enrolment {
	int stu_id;         // 0  e.g. 5012345     -> 0x0, 0x4, 0x8, 0xC
	char course[9]:     // 4  e.g. "COMP1521"  -> 0x0, 0x1, 0x2
	char term[5];       // 13 e.g. "17s2"
	char grade[3];      // 18 e.g. "HD"
	double mark;        // 24 e.g. 87.3        
};
size: 32

0x0 -> read all 4 bytes 0x0
0x3 -> 0x3, 0x4, 0x5, 0x6
0x3 -> read from 0x0 (0x0 - 0x3), take the last byte 
       read from 0x4 (0x4 - 0x7), take the first 3 bytes 
       reconstruct it by last_byte + first_3_bytes

// 4.
struct _queue {
	int nitems;     // # items currently in queue
	int head;       // index of oldest item added
	int tail;       // index of most recent item added
	int maxitems;   // size of array
	Item *items;    // malloc'd array of Items
};