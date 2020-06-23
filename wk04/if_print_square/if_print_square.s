	.text
main:
	la 	$a0, prompt	# $a0 = prompt
	li 	$v0, 4		# print string
	syscall

	li 	$v0, 5		# read int into $v0
	syscall
	move 	$t0, $v0	# $t0 = $v0


	jr 	$ra

	.data
prompt:
	.asciiz "Enter a number: "
too_big:
	.asciiz "Square too big for 32 bits\n"