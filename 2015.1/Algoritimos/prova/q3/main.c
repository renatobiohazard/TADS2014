#include <stdio.h>
#include <stdlib.h>

struct ListaLigada * inserirInicio(struct ListaLigada * inicio, double novo, int

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
    novoNo->numero = novo;
 novoNo->proximo = inicio;
 inicio = novoNo;
 return inicio;
 }

}
int main(int argc, char ** argv)
{

    return 0;
}
