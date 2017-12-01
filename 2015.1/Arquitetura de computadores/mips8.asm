.data
buffer:	.space 20
	.asciiz "Hello world"
	.asciiz "Cabra\n \n\n\n\n\n\n\nda Peste"
	      
	
.text
main: 
    li $2,8       #comando imprimir string no sistema

     la $4, buffer #colocar espaço livre na memoria
     li $5,20     #como parametro passado a quantidade de caracteres digitado
     syscall
      
      

