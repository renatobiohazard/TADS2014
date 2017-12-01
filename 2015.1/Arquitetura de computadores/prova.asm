.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $8
addi $9,$0, 3760 #constante de anos
add $10,$9,$8 	#soma dos anos de nascimento e total
addi $11,$9, 2015 #ano corrente
addi $12,$0,19 	#constante de divisão
addi $15,$0,13 #constante de meses 13
addi $16,$0,12 #constante de meses 12
div $10,$12
mfhi $13
beq $13,3,treze1
beq $13,6,treze1
beq $13,8,treze1
beq $13,11,treze1
beq $13,14,treze1
beq $13,17,treze1
beq $13,0,treze1
sub $14,$16,$7
add $7,$7,$14
addi $10,$10,1
b fimtreze1
treze1:
sub $14,$15,$7
add $7,$7,$14
addi $10,$10,1
fimtreze1:
calculo:

div $10,$12
mfhi $13
beq $13,3,treze
beq $13,6,treze
beq $13,8,treze
beq $13,11,treze
beq $13,14,treze
beq $13,17,treze
beq $13,0,treze


add $7,$7,$16
addi $10,$10,1

treze:

add $7,$7,$15
addi $10,$10,1


fimtreze:
blt $10,$11,calculo