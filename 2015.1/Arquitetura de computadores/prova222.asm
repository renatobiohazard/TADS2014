.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
add $18,$0,$7	#mes de refeerncia do mes pra se usar no final
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8
addi $9,$0, 3760 #constante de anos
add $10,$9,$8 	#soma dos anos de nascimento e constante dos anos
addi $11,$9, 2015 #ano corrente e constante de anos
addi $12,$0,19 	#constante de divis�o 
addi $15,$0,13 #constante de meses 13
addi $16,$0,12 #constante de meses 12
addi $19,$0,10 #constante 10
addi $20,$0,22 #constante 10

addi $7,$0,9	#levando em considera��o que estamos no mes 3 desse ano hebraico, adiciono 3 ao meu registrador 7
addi $11,$11,-1	#e diminuo o ano hebraico de 5775 para 5774
b fimtreze	#pulo diretamente para o inicio do la�o
calculo:

div $11,$12	#divido o ano corrente em hebraico por 19
mfhi $13	#pego o resto da divisao
beq $13,3,treze	#verifica��o se o ano � de treze meses
beq $13,6,treze	#verifica��o se o ano � de treze meses
beq $13,8,treze	#verifica��o se o ano � de treze meses
beq $13,11,treze#verifica��o se o ano � de treze meses
beq $13,14,treze#verifica��o se o ano � de treze meses
beq $13,17,treze#verifica��o se o ano � de treze meses
beq $13,19,treze#verifica��o se o ano � de treze meses


add $7,$7,$16	#n�o sendo de 13 meses ele passa por todas aquelas condi��es e adiciona 12 ao registrador 7
addi $11,$11,-1 #e diminui o ano corrente
b fimtreze	#pula para o inicio do la�o

treze:
add $7,$7,$15	# se o ano for de 13 meses ele adiciona 13 ao calculo
addi $11,$11,-1	# e diminui o ano corrente


fimtreze:
bgt  $11,$10,calculo #verifica se o ano corrente � maior do que o do seu nascimento, se for maior ele pula para o inicio do lado, n�o sendo maior ele ser� igual e assim voc� esta no ano do seu nascimento


beq $18,4,treze1 #verifica se o ems � abril se for ele pula para o treze1
beq $18,5,treze1 #verifica se o ems � maio se for ele pula para o treze1
beq $18,6,treze1 #verifica se o ems � junho se for ele pula para o treze1
beq $18,7,treze1 #verifica se o ems � julho se for ele pula para o treze1
beq $18,8,treze1 #verifica se o ems � agosto se for ele pula para o treze1
beq $18,9,treze1 #verifica se o ems � setembro se for ele pula para o treze1
beq $18,10,treze12 #verifica se o ems � outubro se for ele pula para o treze1
beq $18,11,treze12 #verifica se o ems � novembro se for ele pula para o treze1
beq $18,12,treze12 #verifica se o ems � dezembro se for ele pula para o treze1
beq $18,1,treze1 #verifica se o ems � janeiro se for ele pula para o treze123
beq $18,2,treze1 #verifica se o ems � fevereiro se for ele pula para o treze123
beq $18,3,treze1 #verifica se o ems � mar�o se for ele pula para o treze123

treze1:
sub $18,$19,$18	#uma vez que o mes deles na condi��o dos meses que direcionam para treze1 s�o 3 menor do que o nosso, temos de diminuir 3 pra igualhar ao deles
add $7,$7,$18	# e adicionar esses meses aos meses totais
b fim
treze12:
sub $18,$20,$18	#uma vez que o mes deles na condi��o dos meses que direcionam para treze1 s�o 3 menor do que o nosso, temos de diminuir 3 pra igualhar ao deles
add $7,$7,$18	# e adicionar esses meses aos meses totais


fim:



#calculando ano da maioria



