#Nome: Luis Felipe Almeida Beserra Matos RA00303863
#Descricao: Verifica se um numero enviado pelo usuario eh um quadrado perfeito ou nao
#Explicacao do programa: Temos um "contador" t2 que servira para ficarmos multiplicado t2 * t2,
#Se t2 * t2 for o numero do usuario, saimos do loop, se não, fazemos t2 += 1 e entrando no loop de novo.
#Se essa multiplicacao for maior que o numero enviado pelo usuario, nao eh quadrado perfeito, saindo do loop
#Data: 10/04/2022

.data

 prompt: .asciiz "Digite um numero "
 perfeito: .asciiz "\nQuadrado Perfeito"
 imperfeito: .asciiz "\nNao eh Quadrado Perfeito"
 
.text

#Mandando mensagem
addi $v0, $zero, 4
la $a0, prompt
syscall

#Pedindo numero
addi $v0, $zero, 5
syscall

#Transfere de v0 para t1
add $t1, $zero, $v0

#t2 eh um contador
li $t2, 1

loop: 
	mul $t3, $t2, $t2
	#Verifica se a multiplicacao de t2*t2 dá o numero enviado pelo usuario
	beq $t3, $t1, quadradoPerfeito 
	#t0 = 1 se t3 < t1; se nao t0 = 0, Verifica se t3 ja passou o numero enviado pelo usuario 
	slt $t0, $t3, $t1
	add $t2, $t2, 1 
	#Se o contador * contador for menor que o numero digitado continua no loop, se não, sai
	beq $t0, 1, loop
	#Ele sai do loop por aqui somente se nao encontrou o quadrado perfeito, pois ai t3 ja vai ser maior que t1
	beq $t0, 0, sairLoop

quadradoPerfeito:
addi $v0, $zero, 4
la $a0, perfeito
syscall
j sair

sairLoop:
addi $v0, $zero, 4
la $a0, imperfeito
syscall
j sair

sair:
