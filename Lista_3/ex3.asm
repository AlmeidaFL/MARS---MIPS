#Nome: Luis Felipe Almeida Beserra Matos RA00303863
#Descricao: Calcula o resto da divisao de dois numeros A e B enviados pelos usuario
#Explicacao: Divide A / B, dando um inteiro c. A - C * B = resto
#Data: 10/04/2022

.data

numA: .asciiz "Digite o numero A: "
numB: .asciiz "\nDigite o numero B: "
resto: .asciiz "\nO resto da divisao eh: "

.text

#Coloca a mensagem do num A na tela
addi $v0, $zero, 4
la $a0, numA
syscall

#Pega o numero digitado e armazena em t0
addi $v0, $zero, 5
syscall
add $t0, $zero, $v0

#Coloca a mensagem do num B na tela
addi $v0, $zero, 4
la $a0, numB
syscall

#Pega o numero digitado e armazena em t1
addi $v0, $zero, 5
syscall
add $t1, $zero, $v0

#Divide o numero A por B e armazena em t2
div $t2, $t0, $t1

#Multiplica t2 por t1. Ou seja, t2 = A / B (t2 inteiro). Depois faz t2 * B
mul $t2, $t2, $t1

#Faz t3 = A - t2, sendo t3 finalmente o resto da divisao de A por B
sub $t3, $t0, $t2

#Coloca a mensagem de resto na tela
addi $v0, $zero, 4
la $a0, resto
syscall

#Coloca o resto da divisao na tela
addi $v0, $zero, 1
add $a0, $t3, $zero
syscall