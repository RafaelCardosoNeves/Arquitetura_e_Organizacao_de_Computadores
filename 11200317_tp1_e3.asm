#Fa�a um programa que escreva o valor 0xDECADA70 no
#registrador $t7, incluindo um d�gito hexadecimal por vez (isto �,
#insira letra por letra, individualmente) no registrador.

ori $t1, $zero, 0x01
ori  $t2 ,$zero ,0xFFFFFFFF 
or  $t1 ,$zero , $t2
