#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv)
{

    char *nome;
    char *nome2;
    int num=0,i=0;
    nome=(char*) malloc(sizeof(char)*10);
    gets(nome);

    while(*nome!='\0'){
printf("%c \n",*nome);
    num=num+1;
    nome++;
    i++;
    }

nome2=(char *)   calloc(num, sizeof(char));
printf("%d",sizeof(nome2));
    return 0;
}
