#Autor: Luis Felipe A. B. Matos - RA00303863
#Exercicio 4
#Descrição: o programa armazena valores nos registradores t0, t1 e t2. Faz uma
#comparacao com a variavel auxiliar t2 até ela ser igual a 0, pulando para o "sai"
#e somando o valor de t1(y) e t0(x) em t5(z)

#Armazenando variaveis
li $t0, 8 #t0 = 8
li $t1, 4 #t1 = 4
li $t2, 2 #t2 = 2
li $t5, 0 #t5 = 0

while: #label para ser usada toda vez que t0 (i) não for 0

	beq $t2, 0, sai	#Compara t2 (i) com 0, se der true vai para "sai", se não continua
	add $t1, $t1, 2 #t1 = t1 + 2
	sub $t2, $t2, 1 #t2 = t2 - 1
	j while #vai para "while"
	
sai: #label para ser usada quando t0 for 0

add $t5, $t0, $t1 #t5 = t0 + t1