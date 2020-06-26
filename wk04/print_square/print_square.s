	.data 
# prompt = "Enter.."
prompt:
	.asciiz "Enter a number: "

	.text
main:
# $t0 = x
# $t1 = y

	la 	$a0, prompt 	# $a0 = prompt
	li 	$v0, 4		# $v0 = 4
	syscall			# printf...

	li 	$v0, 5		# $v0 = 5
	syscall			# scanf
	move 	$t0, $v0 	# $t0 = $v0

	mul 	$t1, $t0, $t0 	# $t1 = $t0 * $t0

	move 	$a0, $t1	# $a0 = $t1
	li 	$v0, 1
	syscall 

	jr 	$ra

