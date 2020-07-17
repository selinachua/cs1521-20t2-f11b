        .text
main:
	sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
	addi	$sp, $sp, -8

        # $t1 = num
        li      $t1, 100

        li      $a0, 10
        li      $a1, 20
        jal     add_nums
        move    $t0, $v0

        move    $a0, $t1
        li      $v0, 1
        syscall

        li      $a0, '\n'
        li      $v0, 11
        syscall

        lw	$ra, -4($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

        jr      $ra            # return 

add_nums:
        sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
        sw      $s0, -8($fp)
        sw      $s1, -12($fp)
	addi	$sp, $sp, -20

        # $s0 = num1
        # $s1 = num2
        move    $t0, $a0
        move    $t1, $a1
        add     $v0, $t0, $t1

        lw	$ra, -4($fp)
        lw      $s0, -8($fp)
        lw      $s1, -12($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

	jr 	$ra