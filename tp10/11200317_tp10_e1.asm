.text
ori $s0,$0,0
ori $s1,$0,10
lui $t1 ,0x1001
lui $t8 ,0x1001
main:



beq $s0,$s1,fim


lw $t2,0($t1)

addi $s0,$s0,1
addi $t1,$t1,4

li $v0, 1
la $a0, ($t2)
syscall 

sw $t2 ,256($t8)
addi $t8,$t8,4

beq $s0,$s1,fim


li $v0,4
la $a0,virg
syscall

j main
nop

fim:
li $v0,10
syscall


.data 



vetor1: .word 1,5,4,3,5
vetor2: .word 2,3,4,6,8
saida: .space 256
virg :.asciiz ","