#Questão 8)Escreva um programa que leia 10 números, armazenando-os em um array e troque de lugar o maior elemento com o último elemento, mostrando em que índice estava o maior elemento e qual é esse elemento e mostrando o valor que estava no último índice.
.data
  .word 0  #0x10010000
  .word 0  #0x10010004
  .word 0  #0x10010008
  .word 0  #0x100100012
  .word 0  #0x100100016
  .word 0  #0x100100020
  .word 0  #0x100100024
  .word 0  #0x100100028
  .word 0  #0x100100032
  .word 0  #0x100100036


ind: .asciiz " \n" 

.text

main:
 lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória

addi $21, $0, 10 #adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $8,$0,0	#variavel maior
addi $9,$0,0	#indice
addi $10,$0,0	#ultimo valor
addi $12,$0,4	#constante de multiplicação
addi $13,$0,0	#variavl de troca
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       slt  $10,$8,$2
       beq $10,$0,pula
       add $8,$0,$2
       add $9,$0,$20
       
       
       
       pula:
       
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 
sub $7,$7,4
lw $10, 0($7)
beq $8,$10,ultimo

sw $8,0($7)
lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória

mul $13,$9,$12
add $7,$7,$13
sw $10,0($7)

add $4,$0,$8
 addi $2, $0, 1	#adiciona 1 ao registrador $2(1 serve como escrita de inteiro no sistema)
       syscall		#chamada do sistema
       
       addi $2, $0, 4	#adiciona 4 indica impressão de string
	la $4,ind
	syscall
	addi $2, $0, 1	#adiciona 1 ao registrador $2(1 serve como escrita de inteiro no sistema)
	add $4,$0,$9
	syscall
	addi $2, $0, 4	#adiciona 4 indica impressão de string
	la $4,ind
	syscall
	addi $2, $0, 1	#adiciona 1 ao registrador $2(1 serve como escrita de inteiro no sistema)
	add $4,$0,$10
	syscall
ultimo:

