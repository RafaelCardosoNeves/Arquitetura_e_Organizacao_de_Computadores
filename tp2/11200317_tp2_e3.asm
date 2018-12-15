ori $t0, $zero,0x7000
sll $t0 ,$t0, 16

#add $t0,$t0,$t0  

addu $t0,$t0,$t0 # 0xE0000000

# utilizando o addu o resultado final ficou negativo ja que a capacidade de representacao do mips foi ultrapassada
# utilizando o add o programa retorna um erro:"arithmetic overflow" ja que o valor final é muito alto
