#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a, b, c;
    int vet[2];

    scanf("%d", &a);
    scanf("%d", &b);
    scanf("%d", &c);

    if (a>b && a>c)
    {
        vet[0]=a;
    }
    else
        {
            if(b>a && b>c)
            {
                vet[0]=b;
            }
            else
            {
                vet[0]=c;
            }
        }

if ((a>c && a<b) || (a>b && a<c))
    {
        vet[1]=a;
    }
    else
        {
            if((b<c && b>a) || (b<a &&b>c))
            {
                vet[1]=b;
            }
            else
            {
                vet[1]=c;
            }
        }


if ((a<c && a<b) || (a<b && a<c))
    {
        vet[2]=a;
    }
    else
        {
            if((b<c && b<a) || (b<a &&b<c))
            {
                vet[2]=b;
            }
            else
            {
                vet[2]=c;
            }
        }

    printf("ordem eh %d e %d e %d", vet[0], vet[1], vet[2]);
    return 0;
}
