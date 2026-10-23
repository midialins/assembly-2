Os programas foram desenvolvidos em Assembly MIPS, utilizando o simulador MARS 4.5 e operações com números inteiros, conforme as orientações da lista.

Exercícios desenvolvidos

Exercício

Descrição

1 — Volume do paralelepípedo

Calcula o volume a partir de comprimento, largura e altura.

2 — Comprimento da circunferência

Calcula o comprimento utilizando π = 3.

3 — Diferença entre valores

Identifica o maior e calcula a diferença entre os dois números.

4 — Média bimestral

Calcula a média de quatro notas e classifica como APROVADO, EXAME ou RETIDO.

5 — Soma dos ímpares

Soma os números ímpares entre dois valores informados.

6 — Maior e menor valor

Recebe dez números positivos válidos e identifica o maior e o menor.

Como executar os programas

Abrir o simulador MARS 4.5.

Selecionar File → Open e abrir o arquivo .asm.

Pressionar F3 para montar o programa.

Pressionar F5 para executar.

Informar os valores solicitados na aba Run I/O.

Conceitos utilizados

Entrada e saída de dados utilizando syscall.

Operações aritméticas e registradores.

Estruturas condicionais e comparações.

Desvios com beq, bgt, bge e outras instruções.

Laços de repetição.

Validação de entradas e controle de contadores.

Observações

Os exercícios utilizam somente números inteiros. No exercício 4, a média é calculada por divisão inteira, descartando a parte fracionária.

No exercício 5, os extremos do intervalo não são incluídos na soma.

No exercício 6, entradas negativas ou iguais a zero são rejeitadas e solicitadas novamente.

Organização dos arquivos

mips1.asm — Exercício 1

mips2.asm — Exercício 2

mips3.asm — Exercício 3

mips4.asm — Exercício 4

mips5.asm — Exercício 5

mips6.asm — Exercício 6

README.md — Documentação dos exercícios
