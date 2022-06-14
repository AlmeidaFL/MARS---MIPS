#Autor: Luis Felipe A. B. Matos - RA00303863
#Exercicio 1
#Descrição: O programa armazena cada algarismo do ra em um registrador e depois soma e os
#aloca no registrador t4

li $t1, 3 #t1 = 3
li $t2, 0 #t2 = 0
li $t3, 3 #t3 = 3
li $t4, 8 #t4 = 8
li $t5, 6 #t5 = 6
li $t6, 3 #t6 = 3

add $t0, $t1, $t2 # 3 + 0 = 3
add $t1, $t3, $t4 # 3 + 8 = 11
add $t2, $t5, $t6 # 6 + 3 = 9
add $t3, $t0, $t1 # 3 + 11 = 14
add $t4, $t2, $t3 # 9 + 14 = 23