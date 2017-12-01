#include <stdio.h>
#include <stdlib.h>

struct ListaLigada * inserirOrdenado(struct ListaLigada * inicio, double novo, int

*erro){

 struct ListaLigada *novoNo;

 *erro = 0;

 novoNo = (struct ListaLigada*)malloc(sizeof(struct ListaLigada));

 if (novoNo==NULL){

 *erro = 1;

 return inicio;

 }
 else
 {
     while(novoNo!=(struct *ListaLigada)0){
     if(novoNo->numero > novo)
     {
         novoNo->numero = novo;
         novoNo->proximo =  novoNo;



     }
    else
    {
        novoNo=novoNo->proximo;
    }

}
}
}
