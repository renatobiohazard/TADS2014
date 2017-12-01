#Questão 5 Desenvolva um programa que leia as duas notas de um aluno nota1 e nota2 e informe se o aluno passou, considerando o cálculo da média do IFRN.

.text
main:
addi $5,$0,2	#adiciona o peso 2 ao registrador $5
addi $6,$0,3	#adiciona o peso 3 ao registrador $6
addi $4,$0,5	#adiciona a soma dos pesos ao registrador $4
addi $3,$0,60	#adiciona a media para passar ao registrador 3
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8
mul $10,$7,$5	#multiplica a nota de $7 por $5 e coloca em $10
mul $11,$8,$6	#multiplica a nota de $8 por $6 e coloca em $11
add $12,$10,$11 #soma as notas de $10 e $11 e coloca em $12
div $13,$12,$4	#divide $12 pela soma dos pesos em $4 e coloca e $13

slt $14,$13,$3 #testa se o resultado é menor do que a media, sendo retorna 1 em $14, nao sendo retorna 0 em $14