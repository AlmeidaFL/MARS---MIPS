# Mateus Assatli Santana RA00301457 , Luis Felipe Almeida B. Matos RA00303863
# Programa realiza o calculo do fatorial de um numero dado


#Definindo $t0 como 5 (numero a ser fatorado)
li $t5 5

#Definindo $t2 como um auxiliar1 e sera decrescido durante o loop
li $t2 0

#Definindo $t2 como um auxiliar e sera decrescido durante o loop
li $t1 0


#Esta instruçôes servem para modificars variaveis de acordo com o valor de $t0 

add $t1, $t1 $t5 #  $t1 = n
sub $t2, $t5, 1 #   $t2 = n - 1 

loop: 
	beq $t1, 1, sair
	mul $t5, $t2, $t5  # $t0 = n * (n - 1)
	sub $t2, $t2, 1    #Decrescendo em uma unidade o $t2 = n - 1
	sub $t1, $t1, 1    #Decrescendo em uma unidade o $t1  = (n - 1) - 1

j loop
  
sair:
