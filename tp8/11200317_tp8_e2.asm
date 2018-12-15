
.text

li $v0,8 # código 8 == lê string
la $a0,buffer # $a0 == endereço do buffer
li $a1,32 # $a1 == tamanho do buffer
syscall 


ori $s5,$0,1

ori $t8,$0,10
lui $a0, 0x1001


#descobrir tamanho da string 
tam:

lbu $t0, 0($a0)
beq $t0, $0, desc# encontrou null
beq $t0, $t8, desc#encontrou /n
nop


addi $a0, $a0, 1#incrementa o ponteiro
mult $s5,$t8
mflo $s5




j tam 
nop


desc:
lui $a0, 0x1001
div $s5,$t8
mflo $s5

ler:
lbu $t0, 0($a0)
beq $t0, $0, fim #se for null, pula para o fim
nop
subi $t0,$t0,48# subtrai de acordo com a tabela asc 
mult $t0,$s5 # mult por multiplo de 10 
mflo $t6

add $t2,$t2,$t6

div $s5,$t8 #desincrementa o mult de 10
mflo $s5


addi $a0, $a0, 1#incrementa o ponteiro


j ler
nop

#fim do programa
fim:
move $t0,$t2


li $v0,10 
syscall 

.data


buffer: .space 32 