#Quest�o 9)Desenvolva um programa que, dado tr�s n�meros inteiros dia, mes e ano, que representam o dia, o m�s e o ano de uma data qualquer, informe se esta data � v�lida.

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

ble $7,$0, invalida	#verifica se o dia � maior do que 0, se for manda pra invalida
ble $8,$0, invalida	#verifica se o dia � maior do que 0, se for manda pra invalida
ble $9,$0, invalida	#verifica se o dia � maior do que 0, se for manda pra invalida
beq $8,2,fevereiro	#verifica se o mes � fevereiro, se for manda pra fevereiro
beq $7,31,mestr		#verifica se � mes de 31 dias, se for manda pra mesr
ble $7,30,validar	#verifica se a data � menor ou igual a 30 e o mes n�o sendo invalido e nem fevereiro, valida o ano.
b invalida		#pula para a data invalida caso nenhum dessas condi��es sejam satisfeiras
 

fevereiro:
ble $7,29,validar	#verifica se o dia no mes de fevereiro � menor do que 29, sendo ele valida
b invalida		#n�o sendo menor do que 29 ele pula diretamente para invalida
mestr:	
beq $8,1,validar	#verifica se o mes � janeiro que tem 31 dias
beq $8,3,validar	#verifica se o mes � mar�o que tem 31 dias
beq $8,5,validar	#verifica se o mes � maio que tem 31 dias
beq $8,7,validar	#verifica se o mes � julho que tem 31 dias
beq $8,8,validar	#verifica se o mes � agosto que tem 31 dias
beq $8,10,validar	#verifica se o mes � outublro que tem 31 dias
beq $8,12,validar	#verifica se o mes � dezembro que tem 31 dias
b invalida

validar:
addi $10,$0,1		# a data valida sera validada com o numero 1 no registrador $10
b fim			#apos validado pula para o fim
invalida:
add $10,$0,0		#a data invalida sera validada com o numero 0 no registrador $10 

fim:
nop