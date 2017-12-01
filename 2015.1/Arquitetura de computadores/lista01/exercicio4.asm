		#Questão 04) Desenvolva um programa que leia três números e mostre o maior
.text

addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $9,$0,$2	#colocar o valor de $2 no registrador $8

slt $10,$7,$8	#verifica se $7 é menor que $8, sendo menor adiciona 1 a $10, sendo maior adiciona 0 a $10
slt $11,$7,$9	#verifica se $7 é menor que $9, sendo menor adiciona 1 a $10, sendo maior adiciona 0 a $11
slt $12,$9,$8	#verifica se $8 é menor que $9, sendo menor adiciona 1 a $10, sendo maior adiciona 0 a $10

			#legenda das situações: 
			# $7 é maior se: $10=0 && $11=0
			# $8 é maior se: $10=1 && $12=1
			# $9 é maior se: $11=1 && $12=0