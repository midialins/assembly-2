.data
msg1:.asciiz "Digite o valor de A:"
msg2:.asciiz "Digite o valor de B:"
msg3:.asciiz "\ndiferença="

.text 
main:

	# Ler valor de A
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Ler valor de B
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	
	# Calcular diferença
	
	bgt $t0, $t1, maior1
	
	sub $t2, $t1, $t0
	j mostrar

	maior1:		
	sub $t2, $t0, $t1 
	
	mostrar:
	# Mostrar mensagem
	li $v0, 4
	la $a0, msg3
	syscall
	
	# Mostrar resultado
	li $v0, 1
	move $a0, $t2
	syscall
	
	# Encerrar
	li $v0, 10
	syscall
	
	
	  
	