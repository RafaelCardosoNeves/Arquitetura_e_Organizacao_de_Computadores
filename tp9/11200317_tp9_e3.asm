.text 


ori $s1,$0,1
ori $s2,$0,2
ori $s3,$0,3

li $v0,4
la $a0,menu 
syscall

li $v0,5
syscall 
move $t0, $v0


beq $t0,$s1,circ1
nop
beq $t0,$s2,ret1
nop
beq $t0,$s3,tri1
nop
beq $t0,$0,fim
nop

#calculo da circuferencia 
circ1:
jal circ
nop
j fim
nop

#calculo do retangulo
ret1:
jal ret
nop
j fim
nop

#calculo do triangulo
tri1:
jal tri
nop
j fim 
nop

#sub rotina triangulo
tri: 
ori $t8,$0,2

li $v0,4
la $a0,base
syscall

li $v0,5
syscall 
move $t0, $v0

li $v0,4
la $a0,altura
syscall

li $v0,5
syscall 
move $t1, $v0

mult $t1,$t0
mflo $t4
div $t4,$t8
mflo $t4


li $v0,4
la $a0,resultado
syscall

li $v0, 1
la $a0, ($t4) 
syscall 



jr $ra
nop


#sub rotina retangulo
ret:

li $v0,4
la $a0,base
syscall

li $v0,5
syscall 
move $t0, $v0

li $v0,4
la $a0,altura
syscall

li $v0,5
syscall 
move $t1, $v0

mult $t1,$t0
mflo $t4



li $v0,4
la $a0,resultado
syscall

li $v0, 1
la $a0, ($t4) 
syscall 

jr $ra
nop


#sub rotina circuferencia
circ :

#pi
ori $t5,$0,3

li $v0,4
la $a0,raio
syscall

li $v0,5
syscall 
move $t0, $v0

mult $t0,$t0
mflo $t4
mult $t4,$t5
mflo $t4


li $v0,4
la $a0,resultado
syscall

li $v0, 1
la $a0, ($t4) 
syscall 


jr $ra
nop

fim:
li $v0,10 
syscall



.data

menu: .asciiz " 1-circuferencia\n 2-retangulo\n 3-triangulo\n 0-sair\n"
raio: .asciiz "digite o raio:\n"
resultado:.asciiz "resultado:\n"
base:.asciiz "base :\n"
altura:.asciiz "altura:\n"