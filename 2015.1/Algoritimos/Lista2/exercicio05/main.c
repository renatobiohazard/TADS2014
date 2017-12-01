#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv)
{
    int n, soma,i;
    soma=0;
    scanf("%d", &n);
    if(n>0)
    {
        for(i=2 ; i<n ; i++)
        {
            soma=soma+i;
            printf("%d",i);
        }
        printf("soma eh %d",soma);
    }
    else
    {
        printf("numero negativo");
    }
    return 0;
}
