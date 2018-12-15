.data
y: .space 4
.text


ori $t1,$zero,333


Loop:
beq $t2,$t1,igual
sll $0,$0,0
addi $t2,$t2,1
add $t3,$t3,$t2

J Loop
sll $0,$0,0

igual:
lui $t5,0x1001
sw $t3,0($t5)