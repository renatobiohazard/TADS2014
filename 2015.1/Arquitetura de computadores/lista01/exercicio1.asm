	# Questão 1) Desenvolva um programa que leia um nú?mero inteiro e informe se ele é positivo, negativo ou nulo.


.text
main: addi $2,$0,5 #adiciona 5 ao registrador 2
syscall		   #chama o sistema para a leitura do registrador 2 	
sle  $7,$2,$0	   #verifica se $2 é menor ou igual a $0(que é 0), sendo menor igual $7<-1 sendo maior $7<-0
seq  $8,$2,$0      #verifica se $2 é igual a $0(que é 0), sendo igual $8<-1 e sendo diferente $8<-0

			#legenda das situações: 
			# numero positivo: $7=0 && $8=0
			# numero negativo: $7=1 && $8=0
			# numero nulo:	   $7=1 && $8=1		


