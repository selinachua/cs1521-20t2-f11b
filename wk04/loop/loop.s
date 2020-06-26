	.text
main:
# $t0 = x
	li 	$t0, 24
while:
	li 	$t1, 42
	bge 	$t0, $t1, end_while

	move 	$a0, $t0 	# $a0 = $t0
	li 	$v0, 1
	syscall

	li 	$a0, '\n'
	li 	$v0, 11
	syscall

	addi	$t0, $t0, 3
	j 	while
end_while:

	jr 	$ra

	# .data