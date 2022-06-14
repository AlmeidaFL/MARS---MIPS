# Mateus Assatli Santana RA00301457 , Luis Felipe Almeida B. Matos RA00303863
# Programa que  irá armazenar a soma ods ultimos digitos do RA em um endereço de memória específico da memória de dados do MIPS

#RA utilizado 00301457, soma dos ultimos algoritmos => 5 + 7 = 12

#Definindo os ultimos digitos do RA
li $t1 3 #t1 = 5
li $t2 3 #t2 = 7

# Armazena em t0 o endereco base da memoria de dados
addi $t0, $zero, 268500992	

#Obtendo o valor da soma dos ultimos digitos do RA
add $t3 , $t1, $t2    

joao: $t0
# Armazena o conteudo de t3 na posicao de memoria apontada por t0
sw $t3, joao($t0)
sw		

 			
 


										
