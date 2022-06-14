#Nome: Luis Felipe Almeida Beserra Matos RA00303863
#Nome: Mateus Assalti Santana RA00301457
#Data: 13/04/2022
#Descricao: Bubble Sort de 4 numeros
#Explicacao do programa: Adicionamos 4 numeros nos registradores. Depois os movemos para a memoria
# (t6), 4(t6), 8(t6), 12(t6). O registrador t6 eh fundamental para o programa, pois eh ele que 
#aponta para a memoria onde esta localizado os numeros. Constantemente o alteramos no Loop2 para
#"Subir ou descer na memoria". Rodamos cada loop 4x.

#Endereço de memoria 
li $t6, 268500992

#Colocando valores arbitrarios nos registradores t0, t1, t2, t3
li $t0 , 5
sw $t0, ($t6) 
 
li $t1 , 4
sw $t1, 4($t6)

li $t2 , 2
sw $t2, 8($t6)

li $t3 , 1
sw $t3, 12($t6)

#Contadores do loop
li $t4, 0
li $t5, 0

Loop1:
  beq $t4, 3, sair
  add $t4, $t4, 1
  
  #Resetando o endereco para utiliza-lo novamente
  li $t6, 268500992
  li $t5, 0
  
Loop2:
   beq $t5, 3, Loop1
   add $t5, $t5, 1
   
   #Carregando da memoria pros registradores auxiliares (t1 e t2)
   lw $t1, ($t6)
   add $t6, $t6, 4
   lw $t2, ($t6)
  
   #t1 > t2? Se sim, 1 (faz a troca), se nao, 0 (volta pro loop) 
   slt $t3, $t2, $t1
   beq $t3, 0, Loop2
   
   #t4 = aux para armazenar t1. Faz a troca de t1 com t2
   add $t8, $zero, $t1
   add $t1, $zero, $t2
   add $t2, $zero, $t8
  
   #Coloca na memoria ($t2 aqui eh o maior), aproveitamos o apontador t6 para ja adicionar na memoria
   sw $t2, ($t6)
   sub $t6, $t6, 4
   sw $t1, ($t6)

   #Pula o endereco para a proxima posicao que fazer comparacao com as demais
   add $t6, $t6, 4
   j Loop2

sair:

#Resetando a memoria para poder colocar nos registradores
li $t6, 268500992
#Carregar os valores nas pocicoes solicitadas do exercicio
lw $t0,   ($t6)
lw $t1,  4($t6)
lw $t2,  8($t6)
lw $t3, 12($t6)
