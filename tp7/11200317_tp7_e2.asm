.data
 string: .asciiz "meu professor e o melhor" 
 
 .text
 
 
lui $a0, 0x1001
lui $a1, 0x1001
ori $t7,$0 ,32


ler:
lbu $t0,0($a0)

beq $t0, $0, fim1 #se for null, pula para o fim
nop

#pegar o vetor anterior 
move $a1,$a0
subi $a1,$a1,1
lbu $t1,0($a1)

beq $t0,$t7 ,pula #comparando se o vetor atual e espaço  
nop
beq  $t1,$zero, mai # compara o vetor  anterior é nulo viara maiuscula
beq  $t1,$t7, mai # se o vetor  anterior é espaço viara maiuscula
nop
pula:

subi $a1,$a1,1
lbu $t1,0($a1)

escreve:
sb $t0, 0($a0)
addi $a0, $a0, 1#incrementa o ponteiro

j ler
nop


mai:
sub $t0 ,$t0,32   
sb $t0, 0($a0)
addi $a0, $a0, 1#incrementa o ponteiro

j ler
nop

fim1: