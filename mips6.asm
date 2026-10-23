.data
msg1: .asciiz "Digite um numero positivo: "
msg2: .asciiz "\nNumero invalido. Tente novamente.\n"
msg3: .asciiz "\nMaior numero: "
msg4: .asciiz "\nMenor numero: "

.text

main:
    # Iniciar contador
    li $t0, 0
    li $t4, 10

ler:
    # Verificar se já leu 10 numeros
    beq $t0, $t4, mostrar

    # Solicitar numero
    li $v0, 4
    la $a0, msg1
    syscall

    # Ler numero
    li $v0, 5
    syscall
    move $t3, $v0

    # Verificar numero positivo
    blez $t3, invalido

    # Verificar primeiro numero
    beq $t0, $zero, primeiro

    # Comparar com maior
    bgt $t3, $t1, novo_maior

    # Comparar com menor
    blt $t3, $t2, novo_menor

    j contar

primeiro:
    # Primeiro valor define maior e menor
    move $t1, $t3
    move $t2, $t3
    j contar

novo_maior:
    move $t1, $t3
    j contar

novo_menor:
    move $t2, $t3
    j contar

contar:
    # Contar numero valido
    addi $t0, $t0, 1
    j ler

invalido:
    # Mostrar mensagem de erro
    li $v0, 4
    la $a0, msg2
    syscall
    j ler

mostrar:
    # Mostrar maior numero
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    # Mostrar menor numero
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # Encerrar
    li $v0, 10
    syscall

	