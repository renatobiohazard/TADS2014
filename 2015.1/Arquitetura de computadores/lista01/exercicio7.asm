#Questão 7) Desenvolva um programa que dado um número inteiro n, informe se o número é par ou ímpar.

.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $8,$0,2	#colocar o valor de $2 no registrador $7
div $7,$8	#divide o valor de $7 pelo de $8
mfhi $9		#pega o valor do resto presente no registrador hi e coloca no $9
seq $10,$9,$0 	#verifica se o resto presente no $9 é igual a 0. Se for PAR o registrador $10 recebe 1, ao contrário o registrador $10 recebe 0.