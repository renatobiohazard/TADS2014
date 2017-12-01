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

pula3: .asciiz " \n" 


.text

main:
 lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória
addi $21, $0, 20#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $19, $0, 0	#regristrador de recepção
addi $18, $0, 0	#regristrador de recepção
addi $17, $0, 0	#regristrador de verificação do maior diferença
addi $16, $0, 0	#indice da maior diferença
addi $15,$0,1	#1 de referencia na compraração de negativo
addi $13,$0,0	#guardador de referencia
addi $11,$0,-1	#variavel de modulo
laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 
 lui  $7, 0x1001 #registrador que guarda meu primeiro endereço de memória
addi $21, $0, 19#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20
laco2:  beq $20, $21, sai_for2 #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       lw $18,0($7)
       lw $19,4($7)
       sub $17,$18,$19
       sle $14,$17,$0
       beq $14,$15,pula
       
       iniciocomparacao:
       slt $12, $17,$13
       beq $12,$15,pula2
       add $13,$17,$0
       
       
       pula2:
       j fimcomparacao
       pula:
       mul $17,$17,$11
       j iniciocomparacao
       fimcomparacao:
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
        addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco2		#pula para o for
sai_for2:
