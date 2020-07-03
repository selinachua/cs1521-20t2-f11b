# Practice how to convert C variables into MIPS data directives.
# int x; -> uninitialised  -> .space
# int i = 0; -> initalised -> 

# int u; -> uninitialised -> 4 bytes
u:
	.space 	4
# int v = 42;
v:
	.word 	42
# char w;
w:
	.space 	1
# char x = 'a';
x:
	.byte 	'a'
# double y;
y:
	.space 	8
# int z[20];
z:
	.space 	80
# int numbers = {0, 1, 2, 3};
numbers:
	.word 	0, 1, 2, 3
# char chs = {'a', 'b'};
chs:
	.byte 	'a', 'b'
