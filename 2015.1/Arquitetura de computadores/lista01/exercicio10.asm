#Questão 10)Desenvolva um programa que dada uma data, representada através três números inteiros, um para o dia, um para o mês e outro para o ano, informe a data do dia seguinte.

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

ble $7,$0, invalida	#verifica se o dia é maior do que 0, se for manda pra invalida
ble $8,$0, invalida	#verifica se o dia é maior do que 0, se for manda pra invalida
ble $9,$0, invalida	#verifica se o dia é maior do que 0, se for manda pra invalida
beq $8,2,fevereiro	#verifica se o mes é fevereiro, se for manda pra fevereiro
beq $7,31,mestr		#verifica se é mes de 31 dias, se for manda pra mesr
beq $7,30,validar30	#verifica se a data é igual a 30, sendo manda para validar30

validargeral:
addi $7,$7,1		#valida se somente for preciso passar um dia
b fim
fevereiro:
beq $7,29,validarF	#verifica se o dia de fevereiro é 29 e sendo manda pra validarF
ble $7,29,validarF2	#verifica se o dia de fereeiro é menor que 29 e sendo manda pra validarF2
b invalida		#não sendo menor ou igual a 29 invalida a data
validarF:
addi $7,$0,1		#como esta no fim do mes de fevereiro muda o dia para 1
addi $8,$8,1		#como esta no fim do mes de fevereiro muda aumenta o mes em + 1

b fim
validarF2:
addi $7,$7,1		#valida uma data antes do fim do mes de fevereiro, aumentando somente o dia


b fim

validar30:
beq $8,4,validar300	#verifica se o mes de abril e sendo manda pra validar300
beq $8,6,validar300	#verifica se o mes de junho e sendo manda pra validar300
beq $8,9,validar300	#verifica se o mes de setembro e sendo manda pra validar300
beq $8,11,validar300	#verifica se o mes de novembro e sendo manda pra validar300
b invalida

validar300:
addi $7,$0,1		#como esta no fim do mes de 30 dias coloca o dia em 1
addi $8,$8,1		#como esta no fim do mes de 30 dias aumenta o mes em +1

b fim
mestr:	
beq $8,1,validar31	#verifica se o mes é janeiro que tem 31 dias, sendo manda pra validar31
beq $8,3,validar31	#verifica se o mes é março que tem 31 dias, sendo manda pra validar31
beq $8,5,validar31	#verifica se o mes é maio que tem 31 dias, sendo manda pra validar31
beq $8,7,validar31	#verifica se o mes é julho que tem 31 dias, sendo manda pra validar31
beq $8,8,validar31	#verifica se o mes é agosto que tem 31 dias, sendo manda pra validar31
beq $8,10,validar31	#verifica se o mes é outublro que tem 31 dias, sendo manda pra validar31
beq $8,12,validar312	#verifica se o mes é dezembro que tem 31 dias, sendo manda pra validar312
b invalida

validar31:
addi $7,$0,1		#como esta no fim do mes de 31 dias coloca o dia em 1
addi $8,$8,1		#como esta no fim do mes de 30 dias aumenta o mes em +1

b fim

validar312:
addi $7,$0,1		#como esta no fim do ano coloca o dia em 1
addi $8,$0,1		#como esta no fim do mes coloca o mes em 1
addi $9,$9,1		#como esta no fim do ano aumenta o ano em amis 1
b fim			#apos validado pula para o fim
invalida:
add $10,$0,0		#a data invalida sera validada com o numero 0 no registrador $10 

fim:
nop