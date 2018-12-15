.data
x: .word 7
y: .space 4

.text

lui $t1 ,0x1001
lw $t2, 0($t1)

#a
ori $t3 ,$0, 0
#b
ori $t4 ,$0, 1

#contador
ori $t6,$zero,1

loop:

beq $t6, $t2 , exit
sll $0,$0,0

add $t5, $t3,$t4
or $t3,$zero,$t4
or $t4,$zero,$t5

addi $t6,$t6,1

J loop
sll $0,$0,0

exit:
sw $t5, 4($t1)