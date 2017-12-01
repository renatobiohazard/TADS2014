.text


main: addi $9, $0, 5     #$9 recebe $0 + 5
	addi $10, $0, 3     #$10 recebe $0 + 3
	addi $20, $0, 12
catupiri:	addi $11, $0, 15     #$11 recebe $0 + 5
  add $8, $9, $10        # dolar 8 recebe dolar 9 mais dolar 10 = $8=$9+$10
  add $8, $8, $11        # dolar 8 recebe dolar 9 mais dolar 10 = $8=$9+$10
  sub  $8, $8,$11 	 # subtrair $8-$11 e colocar no $8
  addi $20, $20, -1
 #j catupiri		 # voltar para o local indicado, no caso catupiri
 bne  $20, $0, catupiri #testa se os valores de $20 e $0 sao iguais, sendo ele executa a de baixo, salta se forem diferentes
 beq  $20, $0, catupiri #testa se os valores de $20 e $0 sao iguais, se forem iguais ele salta, se forem diferentes ele para
 falhou: addi $21, $0,  0x32f1
 
  
  
  
