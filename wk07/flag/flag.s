	.text
main:
# $t0 = row
# $t1 = col
        li      $t0, 0          # row = 0
loop0:
        bge     $t0, 6, end_loop0
        li      $t1, 0          # col = 0
loop1:
        bge     $t1, 12, end_loop1

        mul     $t2, $t0, 12    # row * N_COL
        add     $t2, $t2, $t1   # $t2 += col
        lb      $t2, flag($t2)  

        # la      $t3, flag       # $t3 = &flag
        # add     $t3, $t3, $t2   # $t3 = &flag + offset
        # lb      $t3, ($t3)      # $t3 = flag[row][col]

        move    $a0, $t2        # $a0 = flag[row][col]
        li      $v0, 11         # $v0 = print_char
        syscall

        addi    $t1, $t1, 1     # col++
        j       loop1
end_loop1:
        li      $a0, '\n'       # $a0 = '\n'
        li      $v0, 11         # $v0 = print_char
        syscall

        addi    $t0, $t0, 1     # row++
        j       loop0
end_loop0:
        jr      $ra             # return

###########################
	.data
flag:
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'