#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    int zona1[2],zona2[2],zona3[2],zona4[2],zona5[2], zonaeleitor,i;

    for(i=0;i<5;i++)
    {
        printf("digite a sua zona\n");
        scanf("%d",&zonaeleitor);

        if(zonaeleitor==1)
        {
            printf("digite 1 para prefeito ze ou 2 para prefeito joao\n");
            scanf("%d",&zona1[i]);
            printf("digite 1 para vereador ze ou 2 para vereador joao\n");
            scanf("%d",&zona1[i+1]);
        }
        else
        {
            if(zonaeleitor==2)
        {
            printf("digite 1 para prefeito ze ou 2 para prefeito joao\n");
            scanf("%d",&zona2[i]);
            printf("digite 1 para vereador ze ou 2 para vereador joao\n");
            scanf("%d",&zona2[i+1]);
        }
        else
        {
            if(zonaeleitor==3)
        {
            printf("digite 1 para prefeito ze ou 2 para prefeito joao\n");
            scanf("%d",&zona3[i]);
            printf("digite 1 para vereador ze ou 2 para vereador joao\n");
            scanf("%d",&zona3[i+1]);        }
        else
        {
            if(zonaeleitor==4)
        {
            printf("digite 1 para prefeito ze ou 2 para prefeito joao\n");
            scanf("%d",&zona4[i]);
            printf("digite 1 para vereador ze ou 2 para vereador joao\n");
            scanf("%d",&zona4[i+1]);        }
        else
        {
            if(zonaeleitor==5)
        {
            printf("digite 1 para prefeito ze ou 2 para prefeito joao\n");
            scanf("%d",&zona5[i]);
            printf("digite 1 para vereador ze ou 2 para vereador joao\n");
            scanf("%d",&zona5[i+1]);
        }
        }
        }
        }
        }
    }


    for(i=0;i<5;i++)
    {

    }

    return 0;
}
