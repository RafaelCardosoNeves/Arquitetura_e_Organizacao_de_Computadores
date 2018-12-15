.data
string: .asciiz "Eu amo muito meu professor de AOC-I" 

.text



lui $a0, 0x1001
lui $a1, 0x1001 
ori $t8,$0,32

ler:
lbu $t0, 0($a0)
beq $t0, $0, fim1 #se for null, pula para o fim
nop

beq $t0, $t8, apaga#se for um espcso  apaga
nop

escreve:
sb $t0, 0($a1)
addi $a0, $a0, 1#incrementa o ponteiro
addi $a1, $a1, 1#incrementa o ponteiro
j ler
nop

apaga:
addi $a0, $a0, 1#incrementa o ponteiro
j ler
nop

fim1:
nop
beq $a1,$a0,fim2 
ori $t0,$0,0
sb $t0,0($a1)
addi $a1,$a1,1
J fim1
nop 


fim2:
nop

