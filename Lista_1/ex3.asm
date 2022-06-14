#Autor: Luis Felipe A. B. Matos - RA00303863
#Exercicio 3
#Descricao: O programa verifica se dois numeros são iguais. Se sim, t5 (z) = 2, se não, 
#t5 (z) = 3

#Armazenando dois a serem comparados nos registradores 0 e 1. E no registrador 5, o num 0
li $t0, 125 # t0 = 125
li $t1, 126 # t1 = 125
li $t5, 0 # t5 = 0

li $t5, $t1
beq $t0, $t1, iguais # t0 (x) é igual a t1 (y)? Se sim, vai para "iguais", se não, continua

add $t5, $t5, 3 #Continua o programa, armazenando 3 em t5 (z)
j exit #Jump para exit - fim do programa

iguais: #label usada quando t0 for igual a t1
	add $t5, $t5, 2 #Se forem iguais, armazena 2 em t5 (z)
	
exit:
