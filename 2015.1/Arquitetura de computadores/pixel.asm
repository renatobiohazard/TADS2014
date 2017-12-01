.data

.text

main: addi $8,$0, 0x10010000
      addi $9, $0, 200
      sll   $9, $9, 8
      
	add $7,$0,256
	
  mul $7,$7,6
 add $8,$8,$7
 addi $8,$8,32
sw $9, 0($8)
addi $8,$8,256
sw $9, 0($8)                  
addi $8,$8,256
sw $9, 0($8)                  
addi $8,$8,256
sw $9, 0($8)                  
addi $8,$8,256
sw $9, 0($8)                  
                  

addi $8,$0, 0x10010000
	add $7,$0,256
	
  mul $7,$7,6
 add $8,$8,$7
 addi $8,$8,36
sw $9, 0($8)                                
addi $8,$8,4                      
sw $9, 0($8)                                          
addi $8,$8,260
sw $9, 0($8)                 
addi $8,$8,256
subi $8,$8,4                                  
sw $9, 0($8)                                                        
subi $8,$8,4                                                            
sw $9, 0($8)                                                                  
addi $8,$8,256                                                                        
addi $8,$8,8                                                                              
sw $9, 0($8)                                                                  
addi $8,$8,256                                                                        
sw $9, 0($8)                                                                                                                                                      
                                                                                          
      
      addi $10, $0, 4096
test: beq $10, $0, sai
      
      sw $9, 0($8)
      
      addi $8, $8, 4
      addi $9, $9, 2
      
      
      
      addi $10, $10, -1
      j test
      
sai:  nop      
      
     
