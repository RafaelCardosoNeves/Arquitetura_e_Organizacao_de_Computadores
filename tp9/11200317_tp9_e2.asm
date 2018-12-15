ori $t0,$0,6
ori $t1,$0,1


move $v0,$t1
move $a0,$t0 
nop

jal sub
nop

j fim1
nop
sub:

beq $a0,$0, fim
nop



move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)

jal sub1
nop

move $t1,$v0

lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8
j sub
nop

fim:
jr $ra
nop

sub1:




mult $a0,$v0
mflo $v0
sub $a0,$a0,1
jr $ra
nop





fim1:
li $v0,10 
syscall 
