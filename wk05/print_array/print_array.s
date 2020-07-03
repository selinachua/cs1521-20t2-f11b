# Load things from array:
# 1. Load the address of the array 
# 2. Calculate the offset from the start of the array
# 3. Load the array element into a register

# array = 0x100
# ith element = array + 4*i = $t1 + $t2
	.text 
main:
# $t0 = i
	li 	$t0, 0 		# i = 0
while:
	bge 	$t0, 10, end_while

	la 	$t1, numbers 	# $t1 = &numbers
	mul 	$t2, $t0, 4	# $t2 = i * 4
	add 	$t3, $t1, $t2 	# $t3 = &numbers[i]
	lw 	$t3, ($t3)	# $t3 = *(&numbers[i]) = numbers[i]

	move 	$a0, $t3
	li 	$v0, 1
	syscall

	li 	$a0, '\n'
	li 	$v0, 11
	syscall

	addi 	$t0, $t0, 1 	# i++;
	j 	while
end_while:
	jr 	$ra 		# return 0;

##############################
	.data
numbers:
	.word 	0 1 2 3 4 5 6 7 8 9