
.text
lui $s0, 0x1001
ori $s1 ,$0,2
main:


li $v0,4
la $a0,menu 
syscall
nop

li $v0,5
syscall 
move $t0, $v0

nop
beq $t0 ,$0, fim
nop
jal sub
nop

j main
nop

sub:

li $v0,4
la $a0,menu2
syscall

li $v0,5
syscall 
move $t0, $v0
sw  $t0,0($s0)

div $t0,$s1
mfhi $t5
beq $t5,$0, soma# se for par soma 
nop
j pula
nop
soma:

move $t8,$ra
addi $sp,$sp,-4 
sw $t8,($sp)

jal soma1

lw $t8,($sp) 
addi $sp,$sp,4 
move $ra ,$t8


pula:

addi $s0,$s0,4


jr $ra
nop

soma1:

add $s6,$s6,$t0


jr $ra 
nop

fim:

li $v0,4
la $a0,resultado 
syscall
li $v0, 1 # código 1 == imprime inteiro
la $a0, ($s6) # $a0 == 123
syscall 
li $v0,10
syscall

.data
buffer: .space 128
menu2: .asciiz " digite um numero? \n"
menu: .asciiz " 0-sair pra sair\n"
resultado: .asciiz " resultado soma pares\n"
