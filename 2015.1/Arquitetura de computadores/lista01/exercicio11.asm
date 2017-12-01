#Questão 11)Desenvolva um programa que leia três números (a, b e c) e deixe-os em ordem decrescente, ou seja, o maior deverá ficar armazenado na variável a, o menor na c e o outro da b.

.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $9,$0,$2	#colocar o valor de $2 no registrador $7
bgt $7,$8, veri
bgt $8,$9, veri2
add $10,$7,$0
add $7,$9,$0
add $9,$10,$0
blt $8,$9,verimen3

b fim
veri2:
add $10,$7,$0
add $7,$8,$0
add $8,$10,$0
blt $8,$9,verimen2
b fim
verimen3:
add $10,$8,$0
add $8,$9,$0
add $9,$10,$0
b fim
veri:
bgt $7,$9,verimen
add $10,$7,$0
add $7,$9,$0
add $9,$10,$0
add $10,$9,$0
add $9,$8,$0
add $8,$10,$0

b fim
verimen2:
add $10,$8,$0
add $8,$9,$0
add $9,$10,$0
b fim


verimen:
blt $8,$9,trocamen
b fim

trocamen:
add $10,$8,$0
add $8,$9,$0
add $9,$10,$0

fim:
nop