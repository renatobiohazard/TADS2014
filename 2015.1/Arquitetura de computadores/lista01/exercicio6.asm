#Quest�o 6) Desenvolva um programa que leia dois n�?meros a e b e deixe-os em ordem crescente, ou seja, o menor dever� ficar armazenado na vari�vel a e o maior na vari�vel b. 

.text
main:
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $7,$0,$2	#colocar o valor de $2 no registrador $7
addi $2,$0,5	#adicionar 5 ao $2
syscall		#chamada do sistema
add $8,$0,$2	#colocar o valor de $2 no registrador $7
bgt $7,$8, troca

add $9,$7,$0
add $7,$8,$0
add $8,$9,$0
troca:
nop