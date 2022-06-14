#Nome: Luis Felipe Almeida Beserra Matos RA00303863
#Descricao: Verifica se um numero enviado pelo usuario faz parte da faixa de 1 a 50, ou
#de 51 a 99, ou de 100
#Data: 10/04/2022

.data

 prompt: .asciiz "Digite um nivel de radicao "
 
.text
li $t1, 51
li $t2, 100
li $t4, 0

#Display uma mensagem
addi $v0, $zero, 4
la $a0, prompt
syscall 

#Recebe um numero
addi $v0, $zero, 5
syscall

#Transfere o num de v0 para t3 - t3 eh o numero do usuario
add $t3, $zero, $v0

#Verifica se o numero eh igual a cem, se for, ja vai para label.
beq $t3, 100, igualCEM

#t0 = 1 se t3 < t1 (51), t0 = 0 se t3 > t1.
slt $t0, $t3, $t1

#Se t0 for 1, vai pra rotina menor que cinqunta e um, pois t3 eh menor que 51
beq $t0, 1, menorCIQUM

#Se t0 for 0, vai pra rotina maior que cinquenta, pois t3 eh maior que 50
beq $t0, 0, maiorCIQUM

menorCIQUM:
addi $t5, $zero, 1
j sair

maiorCIQUM:
addi $t5, $zero, 2
j sair

igualCEM:
addi $t5, $zero, 3

sair:



