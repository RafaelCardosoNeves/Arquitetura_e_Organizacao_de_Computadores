.data
a: .word 3
b: .word 5
y: .space 4

.text 

#y = 32ab - 3a + 7b - 13


#carregando a e b
lui $t1,0x1001
lw $t2,0($t1)
lw $t3,4($t1)

#32
ori $t4,$zero,32

#3
ori $t5,$zero,3

#7
ori $t6,$zero,7

#13
ori $t7,$zero,13

#ab
mult $t2,$t3
mflo $t8

#32ab
mult $t8,$t4
mflo $t8

#3a
mult $t5,$t2
mflo $t5

#7b
mult $t6,$t3
mflo $t6

#32ab-3a
sub $t8,$t8,$t5

#32ab-3a+7b
add $t8,$t8,$t6

#y = 32ab - 3a + 7b - 13
sub $t8,$t8,$t7
sw $t8,8($t1)
        
