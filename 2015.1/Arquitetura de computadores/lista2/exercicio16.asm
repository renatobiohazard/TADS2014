#Quest�o 12)Escreva um programa que leia dois arrays de 10 elementos cada e calcule um terceiro array onde cada �ndice cont�m a multiplica��o dos elementos dos dois primeiros arrays nos �ndices correspondentes.
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
addi $21, $0, 5#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $14, $0, 0	#constante 1
addi $12, $0, 0	#adicional cont
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na mem�ria o conteudo do registrador 2, "0" � uma constante a adicionar e ($7) � o registrador que guarda meu primeiro endere�o de mem�ria. Colocando uma constante em ordem de 4 ser� colocado valores na outra mem�ria  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 

add $9,$0,$7
addi $21, $0, 5#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
laco4:  beq $20, $21, sai_for4 #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($9) 	#colocar na mem�ria o conteudo do registrador 2, "0" � uma constante a adicionar e ($7) � o registrador que guarda meu primeiro endere�o de mem�ria. Colocando uma constante em ordem de 4 ser� colocado valores na outra mem�ria  
       addi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco4		#pula para o for
sai_for4: 

add $8,$0,$9
addi $21, $0, 5#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
 subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
  subi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
laco2:  beq $20, $21, sai_for2 #verifica se o valor do registrador $20 � igual ao do $21, n�o sendo  passa direto, sendo ele pula pro fim do for.
        lw $14,0($7)
        sw $14,0($8)
        subi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
        addi $8, $8, 4	#adicionar 0 ao registrador $20
        lw $12,0($9)
        sw $12,0($8)
        subi $9, $9, 4	#adiciona 4 ao $7, pois vai para o proximo endere�o de mem�ria
        addi $8, $8, 4	#adicionar 0 ao registrador $20
        addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco2		#pula para o for
sai_for2: 

