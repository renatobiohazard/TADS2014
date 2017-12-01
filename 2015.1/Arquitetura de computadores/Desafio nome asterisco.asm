.data
buffer: .space 9
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.asciiz "*"	#0x010010060		#imprimir cada linha de cada letra verificando uma a uma e imprimindo linha por linha
	.word 0
	.asciiz " "	##0x010010068
	.word 0
	.asciiz "\n"	##0x010010076
	.word 0
	.word 0
.text
add $10,$0,$0
add $11,$0,$0
add $12,$0,$0
add $13,$0,$0
add $14,$0,$0
add $15,$0,$0
add $16,$0,$0
add $17,$0,$0
addi $25,$0,0x010010064	#asterisco
addi $26,$0,0x01001006c #espaço
addi $27,$0,0x010010074 #/n
addi $20,$0,0x0000000a
addi $6,$0,4
main: 
    li $2,8       #comando imprimir string no sistema

     la $4, buffer #colocar espaço livre na memoria
     li $5,9     #como parametro passado a quantidade de caracteres digitado
     syscall
    lui $9, 0x1001
      lw $8,0($9)
      lw $23,0($9)
      lw $7,4($9)
      lw $22,4($9)
      sw $23,12($9)
      sw $22,16($9)
      beq $8,$20,nada #pula se fou /n
      beq $8,$0,nada #pula se for 0
      					#para cada registrador eu verifico todas as letras e imprimo a linha ex: para $13=a eu verifico todas as letras sao a e depois imprimo
      					#PARA PEGAR CADA LETRA EU GUARDO TODAS NA MEMORIA E VOU BUSCANDO DE UMA EM UMA.
      
      div $8,$8,256
      mfhi $10
      addi $6,$6,1
      add $24,$0,$6
      
      beq $8,$20,nada #pula se fou /n
      beq $8,$0,nada #pula se for 0
      div $8,$8,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $11

      add $24,$0,$6            
      beq $8,$20,nada #pula se fou /n
      beq $8,$0,nada #pula se for 0
      div $8,$8,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $12

      add $24,$0,$6
            beq $8,$20,nada #pula se fou /n
      beq $8,$0,nada #pula se for 0
      div $8,$8,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $13
      addi $6,$6,1
      add $24,$0,$6
      
      beq $7,$20,nada #pula se fou /n
      beq $7,$0,nada #pula se for 0
      div $7,$7,256
      mfhi $14

      add $24,$0,$6
      beq $7,$20,nada #pula se fou /n
      beq $7,$0,nada #pula se for 0
      div $7,$7,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $15

      add $24,$0,$6
      beq $7,$20,nada #pula se fou /n
      beq $7,$0,nada #pula se for 0
      div $7,$7,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $16

      add $24,$0,$6
      beq $7,$20,nada #pula se fou /n
      beq $7,$0,nada #pula se for 0
      div $7,$7,256	#dividir para pegar a ultima letra hexadecimal
      mfhi $17

     
      
      
      
      nada:
      addi $2,$0,4
      
      div $23,$23,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha
        beq $10,$20,fimprimeiralinha #pula se for /n
	beq $10,0x00000061,letraA1
        beq $10,0x00000062,letraB1
        beq $10,0x00000063,letraC1
        beq $10,0x00000064,letraD1
        beq $10,0x00000065,letraE1
        beq $10,0x00000066,letraF1
        beq $10,0x00000067,letraG1
        beq $10,0x00000068,letraH1
        beq $10,0x00000069,letraI1
        beq $10,0x0000006a,letraJ1
        beq $10,0x0000006b,letraK1
        beq $10,0x0000006c,letraL1
        beq $10,0x0000006d,letraM1
        beq $10,0x0000006e,letraN1
        beq $10,0x0000006f,letraO1
        beq $10,0x00000070,letraP1
        beq $10,0x00000071,letraQ1
        beq $10,0x00000072,letraR1
        beq $10,0x00000073,letraS1
        beq $10,0x00000074,letraT1
        beq $10,0x00000075,letraU1
        beq $10,0x00000076,letraV1
        beq $10,0x00000077,letraW1
        beq $10,0x00000078,letraX1
        beq $10,0x00000079,letraY1
        beq $10,0x0000007a,letraZ1        
      
      
      letraA1:    

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall


j fimletra
     letraB1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra
     letraC1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraD1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra
     letraE1:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraF1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraG1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraH1:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraI1:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraJ1:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra
     letraK1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraL1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraM1:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraN1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraO1:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraP1:
add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra
     letraQ1:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraR1:
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra
     letraS1:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraT1:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall 
j fimletra
     letraU1:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraV1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra
     letraW1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra
     letraX1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
       j fimletra
     letraY1:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
        j fimletra
     letraZ1:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     
     fimletra:
     j nada
     fimprimeiralinha:

     
nada2:
      
      div $22,$22,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha2
        beq $10,$20,fimprimeiralinha2 #pula se for /n
	beq $10,0x00000061,letraA12
        beq $10,0x00000062,letraB12
        beq $10,0x00000063,letraC12
        beq $10,0x00000064,letraD12
        beq $10,0x00000065,letraE12
        beq $10,0x00000066,letraF12
        beq $10,0x00000067,letraG12
        beq $10,0x00000068,letraH12
        beq $10,0x00000069,letraI12
        beq $10,0x0000006a,letraJ12
        beq $10,0x0000006b,letraK12
        beq $10,0x0000006c,letraL12
        beq $10,0x0000006d,letraM12
        beq $10,0x0000006e,letraN12
        beq $10,0x0000006f,letraO12
        beq $10,0x00000070,letraP12
        beq $10,0x00000071,letraQ12
        beq $10,0x00000072,letraR12
        beq $10,0x00000073,letraS12
        beq $10,0x00000074,letraT12
        beq $10,0x00000075,letraU12
        beq $10,0x00000076,letraV12
        beq $10,0x00000077,letraW12
        beq $10,0x00000078,letraX12
        beq $10,0x00000079,letraY12
        beq $10,0x0000007a,letraZ12       
      
      
      letraA12:    

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall


j fimletra2
     letraB12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra2
     letraC12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraD12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra2
     letraE12:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraF12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraG12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraH12:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraI12:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraJ12:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra2
     letraK12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraL12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraM12:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall

add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraN12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraO12:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraP12:
add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra2
     letraQ12:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraR12:
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra2
     letraS12:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraT12:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall 
j fimletra2
     letraU12:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraV12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra2
     letraW12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra2
     letraX12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
       j fimletra2
     letraY12:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
        j fimletra2
     letraZ12:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     
     fimletra2:
     j nada2
     fimprimeiralinha2:
      lw $23,12($9)
      lw $22,16($9)
      
      add $4,$0,$27
     syscall
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
 
   
     
       
         
             nada3:
      addi $2,$0,4
      
      div $23,$23,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha3
        beq $10,$20,fimprimeiralinha3 #pula se for /n
	beq $10,0x00000061,letraA13
        beq $10,0x00000062,letraB13
        beq $10,0x00000063,letraC13
        beq $10,0x00000064,letraD13
        beq $10,0x00000065,letraE13
        beq $10,0x00000066,letraF13
        beq $10,0x00000067,letraG13
        beq $10,0x00000068,letraH13
        beq $10,0x00000069,letraI13
        beq $10,0x0000006a,letraJ13
        beq $10,0x0000006b,letraK13
        beq $10,0x0000006c,letraL13
        beq $10,0x0000006d,letraM13
        beq $10,0x0000006e,letraN13
        beq $10,0x0000006f,letraO13
        beq $10,0x00000070,letraP13
        beq $10,0x00000071,letraQ13
        beq $10,0x00000072,letraR13
        beq $10,0x00000073,letraS13
        beq $10,0x00000074,letraT13
        beq $10,0x00000075,letraU13
        beq $10,0x00000076,letraV13
        beq $10,0x00000077,letraW13
        beq $10,0x00000078,letraX13
        beq $10,0x00000079,letraY13
        beq $10,0x0000007a,letraZ13        
      
      
      letraA13:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra3
     letraB13:
 

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     j fimletra3
     letraC13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraD13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra3
     letraE13:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraF13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraG13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraH13:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraI13:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraJ13:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra3
     letraK13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraL13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraM13:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraN13:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraO13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraP13:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra3
     letraQ13:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraR13:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra3
     letraS13:
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraT13:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra3
     letraU13:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraV13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra3
     letraW13:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra3
     letraX13:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra3
     letraY13:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra3
     letraZ13:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     
     fimletra3:
     j nada3
     fimprimeiralinha3:



     
nada4:
      
      div $22,$22,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha4
        beq $10,$20,fimprimeiralinha4 #pula se for /n
	beq $10,0x00000061,letraA14
        beq $10,0x00000062,letraB14
        beq $10,0x00000063,letraC14
        beq $10,0x00000064,letraD14
        beq $10,0x00000065,letraE14
        beq $10,0x00000066,letraF14
        beq $10,0x00000067,letraG14
        beq $10,0x00000068,letraH14
        beq $10,0x00000069,letraI14
        beq $10,0x0000006a,letraJ14
        beq $10,0x0000006b,letraK14
        beq $10,0x0000006c,letraL14
        beq $10,0x0000006d,letraM14
        beq $10,0x0000006e,letraN14
        beq $10,0x0000006f,letraO14
        beq $10,0x00000070,letraP14
        beq $10,0x00000071,letraQ14
        beq $10,0x00000072,letraR14
        beq $10,0x00000073,letraS14
        beq $10,0x00000074,letraT14
        beq $10,0x00000075,letraU14
        beq $10,0x00000076,letraV14
        beq $10,0x00000077,letraW14
        beq $10,0x00000078,letraX14
        beq $10,0x00000079,letraY14
        beq $10,0x0000007a,letraZ14       
      
      
     
      letraA14:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra4
     letraB14:
 

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     j fimletra4
     letraC14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraD14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra4
     letraE14:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraF14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraG14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraH14:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraI14:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraJ14:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra4
     letraK14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraL14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraM14:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraN14:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraO14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraP14:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra4
     letraQ14:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraR14:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra4
     letraS14:
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraT14:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra4
     letraU14:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraV14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra4
     letraW14:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra4
     letraX14:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra4
     letraY14:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra4
     letraZ14:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall     
     
     fimletra4:
     j nada4
     fimprimeiralinha4:
      lw $23,12($9)
      lw $22,16($9)
       add $4,$0,$27
     syscall

nada5:
      
      div $23,$23,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha5
        beq $10,$20,fimprimeiralinha5 #pula se for /n
	beq $10,0x00000061,letraA15
        beq $10,0x00000062,letraB15
        beq $10,0x00000063,letraC15
        beq $10,0x00000064,letraD15
        beq $10,0x00000065,letraE15
        beq $10,0x00000066,letraF15
        beq $10,0x00000067,letraG15
        beq $10,0x00000068,letraH15
        beq $10,0x00000069,letraI15
        beq $10,0x0000006a,letraJ15
        beq $10,0x0000006b,letraK15
        beq $10,0x0000006c,letraL15
        beq $10,0x0000006d,letraM15
        beq $10,0x0000006e,letraN15
        beq $10,0x0000006f,letraO15
        beq $10,0x00000070,letraP15
        beq $10,0x00000071,letraQ15
        beq $10,0x00000072,letraR15
        beq $10,0x00000073,letraS15
        beq $10,0x00000074,letraT15
        beq $10,0x00000075,letraU15
        beq $10,0x00000076,letraV15
        beq $10,0x00000077,letraW15
        beq $10,0x00000078,letraX15
        beq $10,0x00000079,letraY15
        beq $10,0x0000007a,letraZ15       
      
      
     
      letraA15:    

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra5
     letraB15:
 

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     j fimletra5
     letraC15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraD15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra5
     letraE15:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraF15:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraG15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraH15:
     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraI15:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraJ15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra5
     letraK15:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraL15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraM15:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraN15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraO15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraP15:
add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra5
     letraQ15:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraR15:
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra5
     letraS15:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraT15:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra5
     letraU15:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraV15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra5
     letraW15:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra5
     letraX15:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra5
     letraY15:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra5
     letraZ15:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall     
     
     fimletra5:
     j nada5
     fimprimeiralinha5:


nada6:
      
      div $22,$22,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha6
        beq $10,$20,fimprimeiralinha6 #pula se for /n
	beq $10,0x00000061,letraA16
        beq $10,0x00000062,letraB16
        beq $10,0x00000063,letraC16
        beq $10,0x00000064,letraD16
        beq $10,0x00000065,letraE16
        beq $10,0x00000066,letraF16
        beq $10,0x00000067,letraG16
        beq $10,0x00000068,letraH16
        beq $10,0x00000069,letraI16
        beq $10,0x0000006a,letraJ16
        beq $10,0x0000006b,letraK16
        beq $10,0x0000006c,letraL16
        beq $10,0x0000006d,letraM16
        beq $10,0x0000006e,letraN16
        beq $10,0x0000006f,letraO16
        beq $10,0x00000070,letraP16
        beq $10,0x00000071,letraQ16
        beq $10,0x00000072,letraR16
        beq $10,0x00000073,letraS16
        beq $10,0x00000074,letraT16
        beq $10,0x00000075,letraU16
        beq $10,0x00000076,letraV16
        beq $10,0x00000077,letraW16
        beq $10,0x00000078,letraX16
        beq $10,0x00000079,letraY16
        beq $10,0x0000007a,letraZ16       
      
      
     
      letraA16:    

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra6
     letraB16:
 

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     j fimletra6
     letraC16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraD16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra6
     letraE16:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraF16:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraG16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraH16:
     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraI16:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraJ16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra6
     letraK16:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraL16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraM16:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraN16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraO16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraP16:
add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra6
     letraQ16:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraR16:
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
 add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra6
     letraS16:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraT16:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra6
     letraU16:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraV16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra6
     letraW16:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra6
     letraX16:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra6
     letraY16:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra6
     letraZ16:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall     
     
     fimletra6:
     j nada6
     fimprimeiralinha6:


lw $23,12($9)
      lw $22,16($9)
       add $4,$0,$27
     syscall
     
     
     
     
     
     nada7:
      
      div $23,$23,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha7
        beq $10,$20,fimprimeiralinha7 #pula se for /n
	beq $10,0x00000061,letraA17
        beq $10,0x00000062,letraB17
        beq $10,0x00000063,letraC17
        beq $10,0x00000064,letraD17
        beq $10,0x00000065,letraE17
        beq $10,0x00000066,letraF17
        beq $10,0x00000067,letraG17
        beq $10,0x00000068,letraH17
        beq $10,0x00000069,letraI17
        beq $10,0x0000006a,letraJ17
        beq $10,0x0000006b,letraK17
        beq $10,0x0000006c,letraL17
        beq $10,0x0000006d,letraM17
        beq $10,0x0000006e,letraN17
        beq $10,0x0000006f,letraO17
        beq $10,0x00000070,letraP17
        beq $10,0x00000071,letraQ17
        beq $10,0x00000072,letraR17
        beq $10,0x00000073,letraS17
        beq $10,0x00000074,letraT17
        beq $10,0x00000075,letraU17
        beq $10,0x00000076,letraV17
        beq $10,0x00000077,letraW17
        beq $10,0x00000078,letraX17
        beq $10,0x00000079,letraY17
        beq $10,0x0000007a,letraZ17       
      
      
     
      letraA17:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra7
     letraB17:
 

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     j fimletra7
     letraC17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraD17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra7
     letraE17:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraF17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraG17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraH17:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraI17:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraJ17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra7
     letraK17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraL17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraM17:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraN17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraO17:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraP17:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra7
     letraQ17:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraR17:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra7
     letraS17:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraT17:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra7
     letraU17:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraV17:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra7
     letraW17:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra7
     letraX17:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra7
     letraY17:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra7
     letraZ17:     
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall     
     
     fimletra7:
     j nada7
     fimprimeiralinha7:
     




nada8:
      
      div $22,$22,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha8
        beq $10,$20,fimprimeiralinha8 #pula se for /n
	beq $10,0x00000061,letraA18
        beq $10,0x00000062,letraB18
        beq $10,0x00000063,letraC18
        beq $10,0x00000064,letraD18
        beq $10,0x00000065,letraE18
        beq $10,0x00000066,letraF18
        beq $10,0x00000067,letraG18
        beq $10,0x00000068,letraH18
        beq $10,0x00000069,letraI18
        beq $10,0x0000006a,letraJ18
        beq $10,0x0000006b,letraK18
        beq $10,0x0000006c,letraL18
        beq $10,0x0000006d,letraM18
        beq $10,0x0000006e,letraN18
        beq $10,0x0000006f,letraO18
        beq $10,0x00000070,letraP18
        beq $10,0x00000071,letraQ18
        beq $10,0x00000072,letraR18
        beq $10,0x00000073,letraS18
        beq $10,0x00000074,letraT18
        beq $10,0x00000075,letraU18
        beq $10,0x00000076,letraV18
        beq $10,0x00000077,letraW18
        beq $10,0x00000078,letraX18
        beq $10,0x00000079,letraY18
        beq $10,0x0000007a,letraZ18       
      
      
     
      letraA18:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra8
     letraB18:
 

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     j fimletra8
     letraC18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraD18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra8
     letraE18:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraF18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraG18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraH18:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraI18:     
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraJ18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra8
     letraK18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraL18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraM18:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraN18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraO18:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraP18:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra8
     letraQ18:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraR18:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra8
     letraS18:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraT18:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra8
     letraU18:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraV18:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra8
     letraW18:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra8
     letraX18:
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
       j fimletra8
     letraY18:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra8
     letraZ18:     
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall     
     
     fimletra8:
     j nada8
     fimprimeiralinha8:
     
lw $23,12($9)
      lw $22,16($9)
       add $4,$0,$27
     syscall
     
     
     
     
     
     
     
nada9:
      
      div $23,$23,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha9
        beq $10,$20,fimprimeiralinha9 #pula se for /n
	beq $10,0x00000061,letraA19
        beq $10,0x00000062,letraB19
        beq $10,0x00000063,letraC19
        beq $10,0x00000064,letraD19
        beq $10,0x00000065,letraE19
        beq $10,0x00000066,letraF19
        beq $10,0x00000067,letraG19
        beq $10,0x00000068,letraH19
        beq $10,0x00000069,letraI19
        beq $10,0x0000006a,letraJ19
        beq $10,0x0000006b,letraK19
        beq $10,0x0000006c,letraL19
        beq $10,0x0000006d,letraM19
        beq $10,0x0000006e,letraN19
        beq $10,0x0000006f,letraO19
        beq $10,0x00000070,letraP19
        beq $10,0x00000071,letraQ19
        beq $10,0x00000072,letraR19
        beq $10,0x00000073,letraS19
        beq $10,0x00000074,letraT19
        beq $10,0x00000075,letraU19
        beq $10,0x00000076,letraV19
        beq $10,0x00000077,letraW19
        beq $10,0x00000078,letraX19
        beq $10,0x00000079,letraY19
        beq $10,0x0000007a,letraZ19       
      
      
     
      letraA19:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra9
     letraB19:
 

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     j fimletra9
     letraC19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraD19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra9
     letraE19:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraF19:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraG19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraH19:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraI19:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraJ19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra9
     letraK19:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraL19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraM19:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraN19:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraO19:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraP19:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra9
     letraQ19:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraR19:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra9
     letraS19:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraT19:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra9
     letraU19:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraV19:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra9
     letraW19:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra9
     letraX19:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
       j fimletra9
     letraY19:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra9
     letraZ19:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall     
     
     fimletra9:
     j nada9
     fimprimeiralinha9:
     






nada10:
      
      div $22,$22,256
      mfhi $10
      # CADA MEMORIA EU FAÇO A DIVISAO QUATRO VEZES E SEMPRE VERIFICANDO SE ELA SE TORNA 0, SE SIM, PULE E SE NÃO CONTINUE USAR BEQ
     
        beq $10,$0,fimprimeiralinha10
        beq $10,$20,fimprimeiralinha10 #pula se for /n
	beq $10,0x00000061,letraA110
        beq $10,0x00000062,letraB110
        beq $10,0x00000063,letraC110
        beq $10,0x00000064,letraD110
        beq $10,0x00000065,letraE110
        beq $10,0x00000066,letraF110
        beq $10,0x00000067,letraG110
        beq $10,0x00000068,letraH110
        beq $10,0x00000069,letraI110
        beq $10,0x0000006a,letraJ110
        beq $10,0x0000006b,letraK110
        beq $10,0x0000006c,letraL110
        beq $10,0x0000006d,letraM110
        beq $10,0x0000006e,letraN110
        beq $10,0x0000006f,letraO110
        beq $10,0x00000070,letraP110
        beq $10,0x00000071,letraQ110
        beq $10,0x00000072,letraR110
        beq $10,0x00000073,letraS110
        beq $10,0x00000074,letraT110
        beq $10,0x00000075,letraU110
        beq $10,0x00000076,letraV110
        beq $10,0x00000077,letraW110
        beq $10,0x00000078,letraX110
        beq $10,0x00000079,letraY110
        beq $10,0x0000007a,letraZ110      
      
      
     
      letraA110:    

     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall




j fimletra10
     letraB110:
 

     add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     j fimletra10
     letraC110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraD110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra10
     letraE110:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraF110:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraG110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraH110:
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraI110:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraJ110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra10
     letraK110:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraL110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraM110:     
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraN110:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraO110:
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraP110:
add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
j fimletra10
     letraQ110:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraR110:
 add $4,$0,$25
     syscall
 add $4,$0,$26
     syscall
 add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$26
     syscall
j fimletra10
     letraS110:
 add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraT110:
 add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
     add $4,$0,$26
     syscall
add $4,$0,$26
     syscall 
j fimletra10
     letraU110:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraV110:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
j fimletra10
     letraW110:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
      j fimletra10
     letraX110:
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
       j fimletra10
     letraY110:
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$25
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
add $4,$0,$26
     syscall
        j fimletra10
     letraZ110:     
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
add $4,$0,$25
     syscall
     add $4,$0,$25
     syscall
add $4,$0,$26
     syscall     
     
     fimletra10:
     j nada10
     fimprimeiralinha10:
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     addi $2,$0,10
     syscall
     
