# Load things from array:
# 1. Load the address of the array 
# 2. Calculate the offset from the start of the array
# 3. Load the array element into a register
	.text
main:
# $t0 = i
	li 	$t0, 0 			# i = 0;
main_while:				#
	bge 	$t0, 10, end_while	# askdjasdjas
					#
	# Calculating the offset	#
	la 	$t1, numbers 		# $t1 = &numbers
	mul 	$t2, $t0, 4 		# $t2 = i * 4
	add 	$t3, $t2, $t0 		# $t2 = &numbers[i]
	lw 	$t2, ($t3)		# $t2 = numbers[i]
					#
	bge 	$t2, 0, end_if		#
main_if:				#
	addi 	$t2, $t2, 42		# num += 42
	sw 	$t2, ($t3)		# numbers[i] = num
main_end_if:
	addi 	$t0, $t0, 1		# i++;
	j 	while 
main_end_while:
	jr 	$ra 			# return 0;

##########################################
	.data
numbers:
	.word 	0 1 2 -3 4 -5 6 -7 8 9