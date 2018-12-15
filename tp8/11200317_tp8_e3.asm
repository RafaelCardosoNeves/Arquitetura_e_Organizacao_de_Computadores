.text

lui $t7,0x1001
lw $t1,0($t7)
lw $t2,4($t7)
lw $t3,8($t7)
ori $t5,$zero,3


jal sub
nop
move $t5,$t4


j fim 
nop

sub:	

add $t4,$t2,$t1
add $t4,$t4,$t3
div $t4 ,$t5
mflo $t4



jr $ra
nop

fim:
li $v0,10 
syscall 



.data
a: .word 3
b: .word 5
c: .word 8
