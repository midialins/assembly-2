.data
msg1:.asciiz "Digite o primeiro número:"
msg2:.asciiz "Digite o segundo número:" 
msg3:.asciiz "\nsomatória:" 
 

.text 
main:

	# Ler o primeiro número
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Ler o segundo número
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Verificar o maior e o menor
	
	ble $t0, $t1, ordem
	
	move $t2, $t1
	move $t3, $t0
	j iniciar
	
ordem:
	move $t2, $t0
	move $t3, $t1
	
iniciar:
	#iniciar soma com zero
	li $t4, 0
	
	#comceçar após o menor
	addi $t2, $t2,1
	
repetir:
	#verificar o fim do intevalo
	bge $t2, $t3, mostrar
	
	
	#verificar se é impar
	andi $t5, $t2, 1
	beq $t5, $zero, proximo
	
	#somar número impar
	add $t4, $t4, $t2
	
proximo:
	#avançar para o próximo número
	addi $t2, $t2,1
	j repetir
	
mostrar:	
	# Mostrar mensagem
	li $v0, 4
	la $a0, msg3
	syscall
	
	# Mostrar resultado
	li $v0, 1
	move $a0, $t4
	syscall
	
	# Encerrar
	li $v0, 10
	syscall
	
	
	  
	