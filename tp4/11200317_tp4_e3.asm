.data
a: .word -3
b: .word 7
c: .word 5
d: .word -2
e: .word 8
x: .word 4
y: .space 4

.text


#y = - ax**4 + bx**3- cx**2 + dx - e
#y =  -3x**4 + 7x**3- 5x**2 + (-2x) - 8

lui $t1,0x1001
#-3
lw $t2,0($t1)
#7
lw $t3,4($t1)
#5
lw $t4,8($t1)
#-2
lw $t5,12($t1)
#8
lw $t6,16($t1)
#x=4
lw $t7,20($t1)

#-3*x
mult $t2,$t7
mflo $t8

#(-3*x)+7
add $t8 ,$t8,$t3

#((-3*x)+7)*x
mult $t8,$t7
mflo $t8

#(((-3*x)+7)*x)+5
sub $t8,$t8,$t4

#((((-3*x)+7)*x)+5)*x
mult $t8,$t7
mflo $t8

#(((((-3*x)+7)*x)+5)*x)-2
add $t8,$t5,$t8

#(((((((-3*x)+7)*x)+5)*x)-2)*x
mult $t8,$t7
mflo $t8

#(((((((-3*x)+7)*x)+5)*x)-2)*x)-8
sub $t8,$t8,$t6

sw $t8,24($t1)

