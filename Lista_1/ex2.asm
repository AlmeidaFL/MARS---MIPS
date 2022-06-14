#Autor: Luis Felipe A. B. Matos - RA00303863
#Exercicio 2
#Descricao: O programa compara dois numeros alocados em registradores e coloca o maior 
#no registrador t5

#Armazenando dois a serem comparados nos registradores 0 e 1. E no registrador 5, o num 0
li $t0, 2 #t0 = 2
li $t1, 3 #t1 = 3
li $t5, 0 #t5 = 0

#Compara t0 < t1. Se true, t2 = 1; false t2 = 0
slt $t2, $t0, $t1

beq $t2, 1, maior_1 # t2 é igual a 1? false, então não vai para maior_1

add $t5, $t5, $t0 #Continua o programa, armazenando t0 em t5
j exit #Jump para exit - fim do programa

maior_1: #Se t2 for igual a 1, então vem para cá, adicionando t1 em t5
	add $t5, $t5, $t1 #t5 = t5 + t1
	
exit: 
