.txt



ori $t0,$0,150
ori $t1,$0,230
ori $t2,$0,991
ori $t3,$0,0

jal sub
nop


j fim
nop
#soma3
sub :

move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)


move $s1,$t0
move $s2,$t1
jal sub1 
nop
move $t3 , $s0
lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8



move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)

move $s1,$t2
move $s2,$t3
jal sub1 
nop
move $t3 , $s0

lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8

jr $ra


#soma
sub1:


add $s0,$s1,$s2


jr $ra

fim:
li $v0,10 
syscall 
 
