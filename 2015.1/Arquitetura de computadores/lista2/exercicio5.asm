#Questão 5) Escreva  um  programa  que  leia  notas  de  30  alunos,  depois  mostre  a  média  da  turma, quantos alunos estão acima da média e liste todas as notas dos alunos acima da média
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
addi $8,$0,0	#registrador do somatorio
addi $21, $0, 30	#adicionar 4 ao registrador $21(fim do for)
addi $20, $0, 0	#adicionar 0 ao registrador $20

laco:  beq $20, $21, sai_for #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       addi $2, $0, 5	#adicionar 5 ao registrador 2
       syscall		#chamada do sistema
       sw $2, 0($7) 	#colocar na memória o conteudo do registrador 2, "0" é uma constante a adicionar e ($7) é o registrador que guarda meu primeiro endereço de memória. Colocando uma constante em ordem de 4 será colocado valores na outra memória  
       addi $7, $7, 4	#adiciona 4 ao $7, pois vai para o proximo endereço de memória
       add $8,$8,$2
       addi $20, $20, 1	#aumenta o inicio do for de um em um
       j laco		#pula para o for
sai_for: 
div $8,$21
mflo $9

addi $20, $0, 0	#adicionar 0 ao registrador $20
addi $21,$21,1
laco3:  beq $20, $21, sai_for2 #verifica se o valor do registrador $20 é igual ao do $21, não sendo  passa direto, sendo ele pula pro fim do for.
       lw $10, 0($7)	#coloca no registrador $4 o valor da que está na primeiro posição da memoria
       slt $11,$10,$9	#verifica se a nota é menor do que a media
       beq $11,$0,laco2
       j fimlaco2
       
       laco2:
       addi $2, $0, 1	#adiciona 1 ao registrador $2(1 serve como escrita de inteiro no sistema)
       lw $4, 0($7)	#coloca no registrador $4 o valor da que está na primeiro posição da memoria
       syscall		#chamada do sistema
       addi $2, $0, 4	#adiciona 4 indica impressão de string
	la $4,pula
	syscall
       fimlaco2:
       addi $20, $20, 1	#aumenta o inicio do for de um em um
         subi $7, $7, 4	#diminui de 4 em 4 o valor do registrador 7 o queal indica a memoria
       j laco3		#pula para o for
sai_for2: