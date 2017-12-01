.data

.text

main: addi $5,$0, 0x10010000
      addi $6, $0, 0x4169E1
      addi $25, $0, 0x4169E1
      addi $7,$0,2560
      addi $10,$0,5120
      addi $14,$0,0x1001f120
      addi $12,$0,0x00000061
      addi $13,$0,0x00000064
      addi $15,$0, 0x10010000
      addi $15,$15,31520
      addi $21,$0,1      
      
      telasuperior:
      beq $7,$0,sairtelasuperior
      sw $6,0($5)
      addi $5,$5,4
      subi $7,$7,4      
      j telasuperior
      sairtelasuperior:
      
      addi $7,$0,62976
      telaesquerda:
      beq $7,$0,sairtelaesquerda
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
      addi $5,$5,512
      subi $7,$7,512     
      j telaesquerda
      sairtelaesquerda:
      
       addi $7,$0,63488
      teladireita:
      beq $7,$0,sairteladireita
      sw $6,508($5)
       sw $6,504($5)
       sw $6,500($5)
      subi $5,$5,512
      subi $7,$7,512     
      j teladireita
      sairteladireita:
      
      
        
        
         addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,25624
        pilardireito:
      beq $7,$0,sairpilardireito
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito
      sairpilardireito:
       
        addi $7,$0,15360
         addi $5,$0, 0x10010000
         addi $5,$5,55336
        pilardireito1:
      beq $7,$0,sairpilardireito1
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito1
      sairpilardireito1:
      
      addi $7,$0,15360
         addi $5,$0, 0x10010000
         addi $5,$5,57400
        pilardireito2:
      beq $7,$0,sairpilardireito2
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito2
      sairpilardireito2:
       
       addi $7,$0,15360
         addi $5,$0, 0x10010000
         addi $5,$5,59464
        pilardireito3:
      beq $7,$0,sairpilardireito3
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito3
      
      sairpilardireito3:
      
      
      addi $7,$0,15360
         addi $5,$0, 0x10010000
         addi $5,$5,61528
        pilardireito4:
      beq $7,$0,sairpilardireito4
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito4
      sairpilardireito4:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63592
        pilardireito5:
      beq $7,$0,sairpilardireito5
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilardireito5
      sairpilardireito5:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63608
        inferiordireito:
      beq $7,$0,sairinferiordireito
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferiordireito
      sairinferiordireito:
           
       addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,26072
        pilaresquerdo:
      beq $7,$0,sairpilaresquerdo
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo
      sairpilaresquerdo:
      
       addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,55752
        pilaresquerdo1:
      beq $7,$0,sairpilaresquerdo1
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo1
      sairpilaresquerdo1:
      
      addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,57784
        pilaresquerdo2:
      beq $7,$0,sairpilaresquerdo2
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo2
      sairpilaresquerdo2:
      
      addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,59816
        pilaresquerdo3:
      beq $7,$0,sairpilaresquerdo3
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo3
      sairpilaresquerdo3:
      
      
        addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,61848
        pilaresquerdo4:
      beq $7,$0,sairpilaresquerdo4
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo4
      sairpilaresquerdo4:
      
      addi $7,$0,63488
         addi $5,$0, 0x10010000
         addi $5,$5,63880
        pilaresquerdo5:
      beq $7,$0,sairpilaresquerdo5
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j pilaresquerdo5
      sairpilaresquerdo5:
      
      	addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63864
        inferioresquerdo:
      beq $7,$0,sairinferioresquerdo
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo
      sairinferioresquerdo:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63848
        inferioresquerdo1:
      beq $7,$0,sairinferioresquerdo1
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo1
      sairinferioresquerdo1:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63832
        inferioresquerdo2:
      beq $7,$0,sairinferioresquerdo2
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo2
      sairinferioresquerdo2:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63816
        inferioresquerdo3:
      beq $7,$0,sairinferioresquerdo3
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo3
      sairinferioresquerdo3:
      
      
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63656
        inferioresquerdo6:
      beq $7,$0,sairinferioresquerdo6
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo6
      sairinferioresquerdo6:
      
      addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63640
        inferioresquerdo7:
      beq $7,$0,sairinferioresquerdo7
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo7
      sairinferioresquerdo7:
      
       addi $7,$0,5120
         addi $5,$0, 0x10010000
         addi $5,$5,63624
        inferioresquerdo8:
      beq $7,$0,sairinferioresquerdo8
      sw $6,0($5)
       sw $6,4($5)
       sw $6,8($5)
       sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,512     
      j inferioresquerdo8
      sairinferioresquerdo8:
      
      addi $7,$0,80
      addi $5,$0, 0x10010000
        addi $5,$5,25792
      barrameio:
      beq $7,$0,sairbarrameio
      sw $6,0($5)
      sw $6,512($5)
      sw $6,1024($5)
      sw $6,1536($5)
      addi $5,$5,4
      subi $7,$7,4
      j barrameio
      sairbarrameio:
      
      
      
	addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,41048
      barrameio1:
      beq $7,$0,sairbarrameio1
      sw $6,0($5)
      sw $6,512($5)
      sw $6,1024($5)
      sw $6,1536($5)
      addi $5,$5,4
      subi $7,$7,4
      j barrameio1
      sairbarrameio1:
      
      addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,33368
      barrameio2:
      beq $7,$0,sairbarrameio2
      sw $6,0($5)
      sw $6,512($5)
      sw $6,1024($5)
      sw $6,1536($5)
      addi $5,$5,4
      subi $7,$7,4
      j barrameio2
      sairbarrameio2:
      
      
      addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,33368
      barrameio3:
      beq $7,$0,sairbarrameio3
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio3
      sairbarrameio3:

	addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,33428
      barrameio4:
      beq $7,$0,sairbarrameio4
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio4
      sairbarrameio4:
      
      
      
      addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,33676
      barrameio5:
      beq $7,$0,sairbarrameio5
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio5
      sairbarrameio5:
     
       addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,33616
      barrameio6:
      beq $7,$0,sairbarrameio6
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio6
      sairbarrameio6:
 
 
 addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,33616
      barrameio7:
      beq $7,$0,sairbarrameio7
      sw $6,0($5)
      sw $6,512($5)
      sw $6,1024($5)
      sw $6,1536($5)
      addi $5,$5,4
      subi $7,$7,4
      j barrameio7
      sairbarrameio7:
      
      addi $7,$0,60
      addi $5,$0, 0x10010000
        addi $5,$5,41296
      barrameio8:
      beq $7,$0,sairbarrameio8
      sw $6,0($5)
      sw $6,512($5)
      sw $6,1024($5)
      sw $6,1536($5)
      addi $5,$5,4
      subi $7,$7,4
      j barrameio8
      sairbarrameio8:
      
       addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,13136
      barrameio9:
      beq $7,$0,sairbarrameio9
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio9
      sairbarrameio9:
      
      addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,13196
      barrameio10:
      beq $7,$0,sairbarrameio10
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio10
      sairbarrameio10:



addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,12948
      barrameio11:
      beq $7,$0,sairbarrameio11
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio11
      sairbarrameio11:


addi $7,$0,76
      addi $5,$0, 0x10010000
        addi $5,$5,12888
      barrameio12:
      beq $7,$0,sairbarrameio12
      sw $6,0($5)
      sw $6,4($5)
      sw $6,8($5)
      sw $6,12($5)
      addi $5,$5,512
      subi $7,$7,4
      j barrameio12
      sairbarrameio12:
      

addi $5,$0, 0x10010000
addi $5,$5,63672
addi $9,$0, 0x10010000
addi $9,$9,63812
addi $8,$0,1
addi $6,$0,0xFFFFE0

jal paletaparadadireita
jal paletaparadaesquerda
iniciojogo:
beq $8,$0,fim


lw $27,6656($15)
beq $6,$27,levantar
fimlevantar:


jal andar

j iniciojogo

levantar:
jal apagarpaletaparadaesquerda
j fimlevantar
paletaparadadireita:
addi $5,$0, 0x10010000
addi $5,$5,63672
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
jr $31


paletaparadaesquerda:
addi $9,$0, 0x10010000
addi $9,$9,63812
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
jr $31



apagarpaletaparadaesquerda:

addi $5,$0, 0x10010000
addi $5,$5,63672
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4

addi $5,$0, 0x10010000
addi $5,$5,63672
paletamaisemcima1:

sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
subi $5,$5,512
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
addi $5,$5,4
subi $5,$5,512
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
addi $5,$5,4
subi $5,$5,512
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
subi $5,$5,512


addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)

addi $5,$5,4
subi $5,$5,512
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
jr $31

apagarpaletalevantada1:
addi $5,$0, 0x10010000
addi $5,$5,63672
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
subi $5,$5,512
addi $5,$5,4
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
addi $5,$5,4
subi $5,$5,512
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
addi $5,$5,4
subi $5,$5,512
sw $0,0($5)
sw $0,512($5)
sw $0,1024($5)
subi $5,$5,512


addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)
addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)

addi $5,$5,4
subi $5,$5,512
sw $0,512($5)
sw $0,1024($5)
sw $0,1536($5)



redesenharpaletaparada1:
addi $5,$0, 0x10010000
addi $5,$5,63672
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,0($5)
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,512($5)
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
sw $6,1024($5)
sw $6,1536($5)
addi $5,$5,4
jr $31





apagarpaletaparadadireita:

addi $9,$0, 0x10010000
addi $9,$9,63812
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4

addi $9,$0, 0x10010000
addi $9,$9,63812
paletamaisemcima2:

sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
subi $9,$9,512
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
subi $9,$9,4
subi $9,$9,512
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
subi $9,$9,4
subi $9,$9,512
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
subi $9,$9,512


subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)

subi $9,$9,4
subi $9,$9,512
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
jr $31

apagarpaletalevantada2:
addi $9,$0, 0x10010000
addi $9,$9,63812

sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
subi $9,$9,512
subi $9,$9,4
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
subi $9,$9,4
subi $9,$9,512
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
subi $9,$9,4
subi $9,$9,512
sw $0,0($9)
sw $0,512($9)
sw $0,1024($9)
subi $9,$9,512


subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)
subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)

subi $9,$9,4
subi $9,$9,512
sw $0,512($9)
sw $0,1024($9)
sw $0,1536($9)

addi $9,$0, 0x10010000
addi $9,$9,63812
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,0($9)
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,512($9)
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
sw $6,1024($9)
sw $6,1536($9)
subi $9,$9,4
jr $31

tempo:

beq $0,$10,fimtempo
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
mul $0,$0,$0
subi $10,$10,1
j tempo
fimtempo:
addi $10,$0 ,5000
jr $31

tempo2:
beq $0,$10,fimtempo2
subi $10,$10,1
j tempo2
fimtempo2:
addi $10,$0 ,3500
jr $31

andar:
add $26,$31,$0
bgt $15,$14,tecla
j fimtecla
tecla:

fimtecla:


baixo:
beq $21,$0,esquerda
lw $17,1024($15)
beq $17,$0,baixoa
addi $21,$0,0
addi $20,$0,1
esquerda:
beq $20,$0,direita2
subi $15,$15,1028
lw $17,0($15)
addi $15,$15,1028
beq $17,$0,esquerdaa
addi $20,$0,0
addi $19,$0,1
direita2:
beq $19,$0,direita
subi $15,$15,1016
lw $17,0($15)
addi $15,$15,1016
beq $17,$0,direitaa
addi $19,$0,0
addi $18,$0,1
direita:
beq $18,$0,esquerda2
addi $15,$15,1032
lw $17,0($15)
subi $15,$15,1032
beq $17,$0,direitaab
addi $18,$0,0
addi $22,$0,1

esquerda2:
beq $22,$0,esquerda
addi $15,$15,1016
lw $17,0($15)
subi $15,$15,1016
beq $17,$0,esquerdaab
addi $22,$0,0
addi $20,$0,1

j fimandar
baixoa:

sw $25,0($15)
sw $25,4($15)
sw $25,512($15)
sw $25,516($15)
jal tempo2
sw $0,0($15)
sw $0,4($15)
sw $0,512($15)
sw $0,516($15)


addi $15,$15,512
j fimandar
esquerdaa:

sw $25,0($15)
sw $25,4($15)
sw $25,512($15)
sw $25,516($15)
jal tempo2
sw $0,0($15)
sw $0,4($15)
sw $0,512($15)
sw $0,516($15)


subi $15,$15,1028
j fimandar
direitaa:

sw $25,0($15)
sw $25,4($15)
sw $25,512($15)
sw $25,516($15)
jal tempo2
sw $0,0($15)
sw $0,4($15)
sw $0,512($15)
sw $0,516($15)


subi $15,$15,508
j fimandar
direitaab:

sw $25,0($15)
sw $25,4($15)
sw $25,512($15)
sw $25,516($15)
jal tempo2
sw $0,0($15)
sw $0,4($15)
sw $0,512($15)
sw $0,516($15)


addi $15,$15,516
j fimandar

esquerdaab:

sw $25,0($15)
sw $25,4($15)
sw $25,512($15)
sw $25,516($15)
jal tempo2
sw $0,0($15)
sw $0,4($15)
sw $0,512($15)
sw $0,516($15)


addi $15,$15,508
j fimandar

fimandar:
jr $26
fim:
