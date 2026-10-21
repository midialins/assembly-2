.data
msg1:.asciiz "Digite o raio:"
msg2:.asciiz "\ncomprimento="

.text 
main:

	# Ler raio
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Calcular o comprimento (C = 2 x 3 x raio)
	
	li $t1, 6
	mul $t2, $t0, $t1
	
	# Mostrar mensagem
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Mostrar resultado
	li $v0, 1
	move $a0, $t2
	syscall
	
	# Encerrar
	li $v0, 10
	syscall
	
	
	  
	