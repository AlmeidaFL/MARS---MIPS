#Nome: Luis Felipe A. B. Matos RA00303863
#Nome: Mateus Assalti Santana RA00301457
#Data: 13/04/2022
#Descricao: Algoritmo para verificar se um numero eh par ou impar com I/O
.data

prompt: .asciiz "Digite um numero: "
parV: .asciiz "O numero eh par!"
imparV: .asciiz "O numero eh impar!"

.text

#Mostra uma mensagem
addi $v0, $zero, 4
la $a0, prompt
syscall

#Pede um num e transfere para t0
addi $v0, $zero, 5
syscall
add $t0, $zero, $v0

#Transferindo de t0 para a0 (argumento da funcao)
add $a0, $t0, $zero

#Indo pra funcao
jal parImpar

#Voltando da funcao
add $t4, $zero, $v0
beq $t4, 1, par


#Impar
addi $t5, $zero, 3
add $v0, $zero, 4
la $a0, imparV
syscall
j sair

#Par
par:
addi $t5, $zero, 2
add $v0, $zero, 4
la $a0, parV
syscall
j sair

#Funcao
parImpar:
	li $t1, 2
	rem $t0, $a0, 2 #resto da divisao
	slti $v0, $t0, 1 #resto < 1? Se sim, 1 (par), se não, 0 (impar)
	jr $ra

sair:

