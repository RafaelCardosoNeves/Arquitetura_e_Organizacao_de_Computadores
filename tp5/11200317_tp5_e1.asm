.data 


a: .half 30
b: .half 5
y: .space 4
.text


lui $t1,0x1001
#a
lw $t2,0($t1)
sll $t2,$t2, 16
srl $t2,$t2,16
#b
lw $t3,0($t1)
srl $t3,$t3, 16

# if ( a = b)
beq $t2 ,$t3 ,mult
sll $t0,$t0,0

#div
div $t2,$t3
mflo $t4


j Exit
sll $t0,$t0,0

#else 
#mult
mult: 
mult $t2,$t3
mflo $t4

Exit:
#colocando o resultado na memoria 
sw $t4 , 4($t1)