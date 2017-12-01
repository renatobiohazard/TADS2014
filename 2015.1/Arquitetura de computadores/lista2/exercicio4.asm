#Questão 4) Escreva um programa que leia 20 números e diga quantos são pares e quais são impar.

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
  
  impar: .asciiz " impar.\n"
  ypar: .asciiz " par.\n" 
 

.text
main:  lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 4($7)	#colocar na memória o conteudo do registrador 2, "4" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 8($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória

       addi $2, $0,5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 12($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 16($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 20($7)	#colocar na memória o conteudo do registrador 2, "4" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 24($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória

       addi $2, $0,5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 28($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $2, $0, 5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 32($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória

       addi $2, $0,5 	#registrador que guarda meu primeiro endereço de memória
       syscall		#chamada do sistema
       sw $2, 36($7)	#colocar na memória o conteudo do registrador 2, "8" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória
       
       addi $20, $0, 0	#adicionar 0 ao registrador $20(inicio do for)
       addi $9, $0, 0	#adicionar 0 ao registrador 9(contagem par
       addi $10, $0, 0	#adicionar 0 ao registrador 10(contagem impar
       addi $21, $0, 10	#adicionar 4 ao registrador $21(fim do for)
       addi $19, $0, 2	#adiciona 2 ao registrador $19 para verificar se é par ou impar
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
        
       lw $8, 0($7)	#coloca no registrador $4 o valor da que está na primeiro posição da memoria
      
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       div  $8,$19	#dividir o valor do registrador $4 por $19 com o resto no HI
	mfhi $18	#guardar o resto
	beq $18,$0,par
	addi $10,$10,1
	j fimpar
	par:
	addi $9,$9,1	
	fimpar:
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 
addi $2,$0,1
add $4,$0,$9
syscall
addi $2, $0, 4	#adiciona 4 indica impressão de string
la $4,ypar
syscall
addi $2,$0,1
add $4,$0,$10
syscall
addi $2, $0, 4	#adiciona 4 indica impressão de string
la $4,impar
syscall