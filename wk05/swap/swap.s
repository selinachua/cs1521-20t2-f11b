main:
	li 	$t0, 0 		# i = 0
while:
	bge 	$t0, 5, end_while

	la 	$t1, numbers
	mul 	$t2, $t0, 4
	add 	$t2, $t2, $t0
	lw 	$t3, ($t2)	# x = numbers[i]

	li      $t7, 9
	sub	$t4, $t7, $t0
	mul 	$t4, $t4, 4
	add 	$t5, $t4, $t1
	lw 	$t6, ($t5)	# y = numbers[9-i]

	sw 	$t6, ($t2)
	sw 	$t3, ($t5)

	addi 	$t0, $t0, 1	# i++
	j 	while
end_while:
	jr 	$ra

################################################
	.data
numbers:
	.word	0 1 2 3 4 5 6 7 8 9