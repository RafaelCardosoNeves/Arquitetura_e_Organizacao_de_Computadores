.data 


 tam: .word 10
 v: .word 1,2,3,4,5,5,8,8,9,10
 
 .text
 
 
 
lui $t1,0x1001
lw $t2, 0($t1)
ori $t3 ,$0 ,0 #contador 
ori $t7 ,$0 ,1 
 


loop:
add $t3, $t3, 1
beq $t3 ,$t2, fim2 #fim ordenado 
nop

lw $t4,4($t1) 
lw $t5,8($t1) 

slt $t6,$t5,$t4


beq $t6,$t7 ,fim1  #nao ordenado 

add $t1,$t1,4
beq $t3 ,$t2, fim2 #fim ordenado  
nop


j loop
nop


fim1:
ori $t0,$0,1

j fim3
nop

fim2:

ori $t0,$0,0


j fim3
nop

fim3:
