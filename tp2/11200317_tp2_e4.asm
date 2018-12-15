


#x
ori $t1,$zero, 10
#y
ori $t2,$zero, 10
#z
ori $t3,$zero, 10



#3*z
sll $t6,$t3,2
sll $t5,$t3,1 
sub $t4, $t5, $t6
sub $t3, $t3, $t4


