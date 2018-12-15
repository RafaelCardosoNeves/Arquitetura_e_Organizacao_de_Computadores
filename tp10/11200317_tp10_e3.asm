.data
buffer: .space 128

.text

lui $t0,0x1001
li $v0,8 # código 8 == lê string
la $a0,buffer # $a0 == endereço do buffer
li $a1,128 # $a1 == tamanho do buffer
sw  $a0,0($t0)

syscall 




ori $t7,$0 ,32
ori $s1,$0,96
lui $t0,0x1001
ler:
lbu $t1, 0($t0)
beq $t1, $0, fim1 #se for null, pula para o fim
nop

beq $t1,$t7,pula

slt $s2,$s1,$t1
beq $s2,$0,soma
subi $t1,$t1,32

volta:

pula:
sb $t1,0($t0)
addi $t0,$t0,1
j ler
nop


soma:
addi $t1,$t1,32
j volta
nop

fim1:
li $v0,10
syscall