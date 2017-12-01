#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv)
{
    int a, i, cont;
    cont=0;
    scanf("%d", &a);

    for(i=1;i<=a;i++)
    {
        if(a%i==0)
        {
            cont=cont+1;
        }

    }
    if(cont>2)
    {
        printf("nao primo");
    }
    else
    {
        printf("primo");
    }

    return 0;
}
