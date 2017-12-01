           #Questão 2) Desenvolva um programa que leia dois nú?meros e informe se eles são iguais ou não.

.text
addi $2,$0,5	#adiciona 5 a $2
syscall		# chama o sistema
add  $8,$0,$2	# coloca o valor de $2 em $8
addi $2,$0,5	#adiciona 5 em $2
syscall		#chama o sistema
add  $7,$0,$2	#adiciona o valor de $2 a $7
seq $9,$7,$8	#verifica se o valor de $7 é igual ao de $8, sendo igual o $9 recebe 1, não sendo igual o $9 recebe 0
