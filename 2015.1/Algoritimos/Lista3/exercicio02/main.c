#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{

    int arr[100000],n,acima,abaixo,i,soma,media;
    soma=0;
    media=0;
    acima=0;
    abaixo=0;
    printf("escreva a quantidade de numeros do array\n");
    scanf("%d",&n);
    printf("escreva os numeros do array\n");

    for(i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }

    for(i=0;i<n;i++)
    {
        soma=soma+arr[i];
    }

    media=soma/n;
    for(i=0;i<n;i++)
    {
        if(media>arr[i])
        {
            acima=acima+1;
        }
        if(media<arr[i])
        {
            abaixo=abaixo+1;
        }

    }

    printf("a media eh %d os que estao acima da media sao %d e os que estao abaixo da media sao %d\n",media,acima,abaixo);
    return 0;
}
