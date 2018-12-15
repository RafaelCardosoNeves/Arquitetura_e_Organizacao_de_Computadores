.data 


 
 v: .word 1,2,3,4,5
 
 .text
 
 
 
 lui $t1,0x1001

 
ori $t2,$0,5#tamanho


sub $s5,$t2,1
ori $t8 ,$0 ,0 #contador laco   
ori $t7,$0,4
mult $s5,$t7  
mflo $t7






laco:

beq $t2,$t8,fim

nop

ori $t3 ,$0 ,0 #contador Loop
lui $t1,0x1001
add $t1,$t1,$t7





move $t3,$t8
add $t8, $t8, 1


loop:
nop
add $t3, $t3, 1
beq $t2,$t3,laco # t5 igual a tamanho
nop

lw $t4,0($t1) 
lw $t5,-4($t1) 






#troca

move $s0,$t4
move $t4,$t5
move $t5,$s0
sw   $t4,0($t1)
sw   $t5 , -4($t1)


add $t1,$t1,-4

beq $t2,$t3,laco # t3 igual a tamanho
nop



J loop
nop


fim: 
