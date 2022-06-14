# Mateus Assatli Santana RA00301457 , Luis Felipe Almeida B. Matos RA00303863
# Programa que realiza a multiplicação de dois numeros que armazena na memoria 

#Definindo dois numeros arbitrarios

li $t0 10 #t0 = 10
li $t1 5  #t1 = 5

addi $t3, $zero, 268500992	# Armazena em t3 o endereco base da memoria de dados

#Criando uma variavel auxiliar para guarfdar o valor do primeiro fator 
add $t2, $t0, 0 

loop: 	
	# controla quantas vezes a instruçôes abaixos serâo feitos
	beq $t1, 1, sair 
	add $t0, $t0, $t2 # t0 = t0 + t2 (t2 = t0)
	sub $t1, $t1, 1  #Subtrai 1 de t1
	j loop #voltar pro loop

#label para saida
sair: 

#Armazenado o valor de $t0 no endereco "apontado" por $t3
sw $t0, ($t3)
