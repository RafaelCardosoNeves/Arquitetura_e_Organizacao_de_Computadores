

ori  $t1,$zero,326
#684 complemento de 2
ori  $t2,$zero,211
nor  $t2, $zero ,$t2
addi  $t2,$t2,1 

#326-211
add  $t0,$t1 ,$t2

ori  $t1,$zero,311
#684 complemento de 2
ori  $t2,$zero,684
nor  $t2, $zero ,$t2
addi  $t2,$t2,1 
#311 -684
add  $t3,$t1 ,$t2


#resultado final 
add  $t0,$t0 ,$t3