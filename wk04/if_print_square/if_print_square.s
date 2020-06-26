	.text
main:
# $t0 = x
# $t1 = y
	la 	$a0, prompt	# $a0 = prompt
	li 	$v0, 4		# print string
	syscall

	li 	$v0, 5		# read int into $v0
	syscall
	move 	$t0, $v0	# $t0 = $v0

	blt 	$t0, 46340, else 
if:
	la 	$a0, too_big
	li 	$v0, 4
	syscall

	j 	end_if
else:
	mul 	$t1, $t0, $t0

	move 	$a0, $t1
	li 	$v0, 1
	syscall
end_if:

	jr 	$ra

	.data
prompt:
	.asciiz "Enter a number: "
too_big:
	.asciiz "Square too big for 32 bits\n"