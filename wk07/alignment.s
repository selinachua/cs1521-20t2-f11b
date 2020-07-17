# int x -> 0x0, 0x4, 0x8, 0xC
# double y -> 0x0, 0x8, 0x10

# char ch = 'a';
# int x = 10;
# char ch2 = 'z';
    .text
main:
    lw      $t0, x 

    move    $a0, $t0
    li      $v0, 1
    syscall

    li      $a0, '\n'
    li      $v0, 11
    syscall

    jr      $ra


    .data
# char ch = 'a';
ch:
    .byte   'a'     # 0x00

    .align  0       # n, 2^n

x:
    .word   10      # 0x01