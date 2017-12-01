#Questão 12)Escreva um programa que leia dois arrays de 10 elementos cada e calcule um terceiro array onde cada índice contém a multiplicação dos elementos dos dois primeiros arrays nos índices correspondentes.
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
 lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $14, $0, 1	#constante 1
addi $12, $0, 0	#adicional cont
addi $10, $0, 0	#constante 2
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 

add $9,$0,$7
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
laco4:  beq $20, $21, sai_for4 #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($9) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória  
       addi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco4		#pula para o for
sai_for4: 

add $13,$0,$9
add $8,$0,$9
addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $19, $0, 10#adicionar 4 ao registrador $21(fim do for)
addi $18, $0, 0#adicionar 0 ao registrador $20
subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
subi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
laco2:  beq $19, $18, sai_for2 #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
      lw $17,0($7)
      laco3:  beq $20, $21, sai_for3 #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
      lw $16,0($9)
      seq $15,$17,$16
      beq $15,$14,pula2
      
     
     
     j fimcomparacao
      pula2:
      
      addi $12, $12,1 	#constante 1
      
      fimcomparacao:
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       subi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       j laco3		#pula para o for
sai_for3:
	sgt  $13,$12,$10
	beq $13,$10,pula3
	sw $17,0($8)
	addi $8, $8, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
	pula3:
	
	fimcomp:
      addi $12, $0, 0	#adicional cont
      addi $21, $0, 10#adicionar 4 ao registrador $21(fim do for)
      addi $20, $0, 0	#adicionar 0 ao registrador $20
      subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
      addi $18, $18, 1	#aumenta o inicio do for de um em um
      addi $9, $9, 40	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       j laco2		#pula para o for
sai_for2:

