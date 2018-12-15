ori $s1,$0,1
lui $t1, 0x1001

#main principal
loop:

lui $t2, 0x1001
lw $a0,0($t1)
lw $a1,28($t2)



jal sub
nop
j print
nop
volta:

addi $t6,$t6,1
beq $a1 ,$t6,fim
nop

addi $t1,$t1,4 

j loop
nop
# fim main




#print f
print:

ori $s5,$0,0
lui $s4, 0x1001
lw $s3,0($s4)

jj:
lw $s3,0($s4)
beq $s5,$a1,esse
li $v0,1
la $a0,($s3)
addi $s4,$s4,4
addi $s5,$s5,1
syscall

j jj
nop
esse:
li $v0,4
la $a0,c
syscall

j volta
nop
#fim print f



# fazendo insertin sort
sub:
move $t7, $t1
move $t5, $t6
move $t3, $t1
subi $t3,$t3,4


#compara se o vetor anterior e menor e faz a troca
looop:

lw $t8,0($t7)
lw $t4,0($t3)

sltu $t0,$t8,$t4
beq $s1,$t0 troca


beq $t5,$0,fimm

subi $t5,$t5,1
subi $t7,$t7,4
subi $t3,$t3,4




j looop
nop


#trocando uma posiçao com a outra
troca :

move $s7,$t8
move $t8,$t4
move $t4,$s7

sw $t8,0($t7)
sw $t4,0($t3)


j looop
nop



fimm:


jr $ra
nop



#fim do programa
fim:
li $v0,10 
syscall 

.data
a: .word 3, 7, 4, 9, 5, 2, 6
b: .word 7
c: .asciiz "\n"