.data
a: .word 3
y: .space 4
.text

#y = 9a**3- 5a**2 + 7a + 15

#a
lui $t1,0x1001
lw $t2,0($t1)

#9
ori $t3,$zero,9

#5
ori $t4,$zero,5
nor $t4,$zero,$t4
addi $t4,$t4,1
#7
ori $t5,$zero,7
#15
ori $t6,$zero,15


# a*9 
mult $t2 ,$t3
mflo $t3

#a*9 - 5
add $t8,$t3,$t4

#((a*9 - 5)*a)
mult $t2,$t8 
mflo $t8

#(((a*9 - 5)*a)+7
add $t8,$t5,$t8

#((((a*9 - 5)*a)+7)a
mult $t2,$t8 
mflo $t8

#((((((a*9 )- 5)*a)+7)a)+15
add $t8,$t6,$t8


sw $t8,4($t1)



