#Quest�o 10)Escreva um programa que leia 10 n�meros, armazenando-os em um array A1 e calcule um segundo array A2, onde cada �ndice de A2 � o quadrado do valor do �ndice correspondente em A1. Ao final imprima cada valor com seu quadrado.
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

pula: .asciiz " \n" 


.text

main:
 lui  $7, 0x1001 #registrador que guarda meu primeiro endere�o de mem�ria
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $19, $0, 0	#regristrador de troca
addi $18, $0, 0	#regristrador de troca
addi $8, $0, 0	#segunda memoria
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na mem�ria o conteudo do registrador 2, "0" � uma constante a adicionar e ($7) � o registrador que guarda meu primeiro endere�o de mem�ria. Colocando uma constante em ordem de 4 ser� colocado valores na outra mem�ria  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
add $8,$0,$7
laco2:  beq $20, $21, sai_for2 #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
       lw $18, 0($8)
       mul $19,$18,$18
       subi $8, $8, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
       sw $19,0($7)
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco2		#pula para o for
sai_for2: 
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20


laco3:  beq $20, $21, sai_for3 #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
        
       addi $2, $0, 1	#adiciona 1 ao registrador $2(1 serve como escrita de inteiro no sistema)
       lw $4, 0($7)	#coloca no registrador $4 o valor da que est� na primeiro posi��o da memoria
       syscall		#chamada do sistema
      subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
      addi $2, $0, 4	#adiciona 4 indica impress�o de string
	la $4,pula
	syscall
       

       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco3		#pula para o for
sai_for3: nop