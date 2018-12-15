


ori $t1 ,$zero ,0x1234
sll $t1 , $t1 , 16
ori $t1 ,$t1 ,0x5678

sll $t3,$t1 ,28
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4


sll $t3,$t1 ,24
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,20
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,16
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,12
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,8
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,4
srl $t3,$t3, 28
or $t2,$t2,$t3
sll $t2,$t2, 4

sll $t3,$t1 ,0
srl $t3,$t3, 28
or $t2,$t2,$t3
