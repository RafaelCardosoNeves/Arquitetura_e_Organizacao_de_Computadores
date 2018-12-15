 
 
#temperatura
ori $t0, $zero,23
#maior ou menor q 80
slti $t2,$t0,81
 
# acima de 80 fora do intervalo
 beq $t2 ,$zero ,var
 sll $0,$0,0
 
#maior ou menor q 60
slti $t3,$t0,60    
 
#maior de 60 e menor de 80
bne $t2,$t3 , var2 
sll $0,$0,0 

#maior ou menor q 40
slti $t2,$t0,41
#mair de 40 e menor de 60
beq $t2,$zero,var
sll $0,$0,0
 
#maior ou menor q 20 
slti $t3,$t0,20
#maoir de 20 e menor de 40
beq $t3,$zero ,var2
sll $0,$0,0
 
var:
ori $t1,$0,0
j exit
sll $0,$0,0
 
var2:
ori $t1,$0,1
 
exit: