#Questão 8) Desenvolva um programa que leia 5 números e informe e maior e o menor

.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $9,$0,$2	#colocar o valor de $2 no registrador $9
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $10,$0,$2	#colocar o valor de $2 no registrador $10
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $11,$0,$2	#colocar o valor de $2 no registrador $11


slt $12,$7,$8	#verifica se $7 é menor que $8, sendo menor adiciona 1 a $12, sendo maior adiciona 0 a $12
slt $13,$7,$9	#verifica se $7 é menor que $9, sendo menor adiciona 1 a $13, sendo maior adiciona 0 a $13
slt $14,$7,$10	#verifica se $7 é menor que $10, sendo menor adiciona 1 a $14, sendo maior adiciona 0 a $14
slt $15,$7,$11	#verifica se $7 é menor que $11, sendo menor adiciona 1 a $14, sendo maior adiciona 0 a $15
slt $16,$8,$9  	#verifica se $8 é menor que $9, sendo menor adiciona 1 a $16, sendo maior adiciona 0 a $16
slt $17,$8,$10	#verifica se $8 é menor que $10, sendo menor adiciona 1 a $17, sendo maior adiciona 0 a $17
slt $18,$8,$11	#verifica se $8 é menor que $11, sendo menor adiciona 1 a $18, sendo maior adiciona 0 a $18
slt $19,$9,$10	#verifica se $9 é menor que $10, sendo menor adiciona 1 a $19, sendo maior adiciona 0 a $19
slt $20,$9,$11 	#verifica se $9 é menor que $11, sendo menor adiciona 1 a $20, sendo maior adiciona 0 a $20
slt $21,$10,$11	#verifica se $10 é menor que $11, sendo menor adiciona 1 a $21, sendo maior adiciona 0 a $21


			#legenda das situações: 
			# $7 é maior se: $12==0 && $13==0 && $14==0 && $15==0 e numeros contrários para o menor
			# $8 é maior se: $12==1 && $16==0 && $17==0 && $18==0 e numeros contrários para o menor
			# $9 é maior se: $13==1 && $16==1 && $19==0 && $20==0 e numeros contrários para o menor
			# $10 é maior se:$14==1 && $17==1 && $19==1 && $21==0 e numeros contrários para o menor
			# $11 é maior se:$15==1 && $18==1 && $20==1 && $21==1 e numeros contrários para o menor