#Questão 9)Desenvolva um programa que, dado três números inteiros dia, mes e ano, que representam o dia, o mês e o ano de uma data qualquer, informe se esta data é válida.

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
ble $7,30,validar	#verifica se a data é menor ou igual a 30 e o mes não sendo invalido e nem fevereiro, valida o ano.
b invalida		#pula para a data invalida caso nenhum dessas condições sejam satisfeiras
 

fevereiro:
ble $7,29,validar	#verifica se o dia no mes de fevereiro é menor do que 29, sendo ele valida
b invalida		#não sendo menor do que 29 ele pula diretamente para invalida
mestr:	
beq $8,1,validar	#verifica se o mes é janeiro que tem 31 dias
beq $8,3,validar	#verifica se o mes é março que tem 31 dias
beq $8,5,validar	#verifica se o mes é maio que tem 31 dias
beq $8,7,validar	#verifica se o mes é julho que tem 31 dias
beq $8,8,validar	#verifica se o mes é agosto que tem 31 dias
beq $8,10,validar	#verifica se o mes é outublro que tem 31 dias
beq $8,12,validar	#verifica se o mes é dezembro que tem 31 dias
b invalida

validar:
addi $10,$0,1		# a data valida sera validada com o numero 1 no registrador $10
b fim			#apos validado pula para o fim
invalida:
add $10,$0,0		#a data invalida sera validada com o numero 0 no registrador $10 

fim:
nop