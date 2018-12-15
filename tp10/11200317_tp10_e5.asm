.text
main:

ori $s4,$0,1
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


#fibonacc
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

li $v0,4
la $a0,vig 
syscall



#chamando o fatorial

move $a0,$t1


move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)


addi $v0,$0,1

jal fat
nop

lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8



li $v0,4
la $a0,barra 
syscall

jr $ra
nop


fat:

beq $a0,$s0, fim5
nop



move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)

jal fato
nop

move $s3,$v0

lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8
j fat
nop

fim5:


li $v0, 1 
la $a0, ($s3)
syscall
jr $ra
nop

fato:


mult $a0,$v0
mflo $v0
sub $a0,$a0,1

jr $ra
nop


fim:
li $v0,10
syscall

.data 
buffer: .space 128
menu: .asciiz " digite o n? \n"
barra: .asciiz "\n"
vig: .asciiz ","