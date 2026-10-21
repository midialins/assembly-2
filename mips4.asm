.data
msg1:.asciiz "Digite a nota 1:"
msg2:.asciiz "Digite a nota 2:"
msg3:.asciiz "Digite a nota 3:" 
msg4:.asciiz "Digite a nota 4:" 
msg5:.asciiz "\nmédia="
msg6:.asciiz "\naprovado:" 
msg7:.asciiz "\nexame:" 
msg8:.asciiz "\nretido:" 

.text 
main:

	# Ler a nota 1
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Ler a nota 2
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Ler a nota 3
	li $v0, 4
	la $a0, msg3
	syscall

 	li $v0, 5
	syscall
	move $t2, $v0
	
	# Ler a nota 4
	li $v0, 4
	la $a0, msg4
	syscall

 	li $v0, 5
	syscall
	move $t3, $v0
	
	# Calcular média
	
	add $t4, $t0, $t1
	add $t4, $t4, $t2
	add $t4, $t4, $t3
	
	li $t5, 4
	div $t4, $t5
	mflo $t6
	
	# Mostrar mensagem
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	# Verificar situação
	li $t7, 6
	bge $t6, $t7, aprovado
	
	li $t7, 3
	bge $t6, $t7, exame
	
	j retido
	
	# Mostrar resultado
	
	aprovado:
		li $v0, 4
		la $a0, msg6
		syscall
		j fim
	
	exame:
		li $v0, 4
		la $a0, msg7
		syscall
		j fim

	retido:
		li $v0, 4
		la $a0, msg8
		syscall
	
	# Encerrar
	fim:
	li $v0, 10
	syscall
	
	
	  
	