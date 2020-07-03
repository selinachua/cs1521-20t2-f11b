        .text
main:
# x = $t0
# y = $t1
# sum = $t3
        # Set up main stack frame
	sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
	addi	$sp, $sp, -8
        
        li      $v0, 5
        syscall
        move    $t0, $v0        # scanf("%d", &x);

        li      $v0, 5
        syscall
        move    $t1, $v0        # scanf("%d", &y);

        # TODO: Add code here
        # 1. Set up arguments
        move    $a0, $t0        # $a0 = x
        move    $a1, $t1        # $a1 = y
        # 2. Call function with jal
        jal     add_nums
        # 3. Assume return value is in $v0
        move    $t3, $v0        # $t3 = return value = $v0

        # We've assumed here that $t3 = sum
        move    $a0, $t3
        li      $v0, 1
        syscall

        li      $a0, '\n'
        li      $v0, 11
        syscall

        # Tear down main stackframe
	lw	$ra, -4($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

        jr      $ra             # return

# Assume that arguments are in $a0-a3
# Set up $v0 with return value
add_nums:
        # Set up add_nums stack frame
	sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
	addi	$sp, $sp, -8

        add     $v0, $a0, $a1   # $v0 = x + y

        # Tear down add_nums stack frame
	lw	$ra, -4($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

        jr      $ra             # return

#######################################
        .data