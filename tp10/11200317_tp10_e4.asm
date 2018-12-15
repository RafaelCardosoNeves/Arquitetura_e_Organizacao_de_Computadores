.text
main:
lui $s6,0x1001
ori $t1,$0,1
ori $t2,$0,0


li $v0,4
la $a0,menu 
syscall
nop

li $v0,5
syscall 

move $t0, $v0



jal fib
nop
j fim
nop

fib:

beq $t4,$t0,fim1
nop
addi $t4 , $t4 ,1

move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)


jal soma
nop



lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8

j fib
nop

fim1:


jr $ra
nop

soma:

add $t5 , $t1,$t2
move $t2,$t1
move $t1, $t5

li $v0, 1 
la $a0, ($t1)
syscall


sw $t1,0($s6)
addi $s6,$s6,4


jr $ra
nop

fim:
li $v0,10
syscall

.data 
buffer: .space 128
menu: .asciiz " digite o n? \n"