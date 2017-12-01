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
add $10,$9,$8 	#soma dos anos de nascimento e total
addi $11,$9, 2015 #ano corrente e total
addi $12,$0,19 	#constante de divisão
addi $15,$0,13 #constante de meses 13
addi $16,$0,12 #constante de meses 12


addi $7,$0,3
addi $11,$11,-1
b fimtreze
calculo:

div $11,$12
mfhi $13
beq $13,3,treze
beq $13,6,treze
beq $13,8,treze
beq $13,11,treze
beq $13,14,treze
beq $13,17,treze
beq $13,19,treze


add $7,$7,$16
addi $11,$11,-1

treze:

add $7,$7,$15
addi $10,$10,1


fimtreze:
bgt  $11,$10,calculo


beq $18,4,treze1
beq $18,5,treze1
beq $18,6,treze1
beq $18,7,treze1
beq $18,8,treze1
beq $18,9,treze1
beq $18,10,treze1
beq $18,11,treze1
beq $18,12,treze1
beq $18,1,treze123
beq $18,2,treze123
beq $18,3,treze123

treze1:
addi $18,$18,-3
add $7,$7,$18
b fim
treze123:
addi $18,$18,9
add $7,$7,$18

fim:




