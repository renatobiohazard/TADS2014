		#Questão 3) Desenvolva um programa que leia dois números e mostre o maior
.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8

slt $10,$7,$8	#verifica se $7 é menor que $8, sendo menor adiciona 1 a $10, sendo maior adiciona 0 a $10