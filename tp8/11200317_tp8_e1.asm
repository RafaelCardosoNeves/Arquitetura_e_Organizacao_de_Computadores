

.text


lui $t0, 0x1001



loop:

#quilometros viajador 
li $v0,4
la $a0,string 
syscall



li $v0,5
syscall 
move $t1, $v0

#se quilometro igual a 0 fim 
beq $t1,$zero,fim
nop

#litros utilizados
li $v0,4
la $a0,stringg 
syscall


li $v0,5
syscall 
move $t2, $v0


div $t1,$t2
mflo $t3


sw $t3,0($t0)
addi $t0,$t0,4

j loop
nop


fim:
li $v0,10 
syscall 
 
 
 
 .data 

buffer: .space 256
string: .asciiz "quantos quilometros?\n"
stringg: .asciiz "quntos litros?\n"


