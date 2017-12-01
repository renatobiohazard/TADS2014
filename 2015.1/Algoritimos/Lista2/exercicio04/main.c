#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a, b, c;

    scanf("%d",&a);
    scanf("%d",&b);
    scanf("%d",&c);


    if(b<13 && b>0 && c>0 && a<31 && a>0)
    {
        if((b==1 || b==3 || b==5 || b==7 || b==8 || b==10 || b==12) && a>31 && a<0)
        {
            printf("data invalida");
        }
        else
        {
            if((b==4 || b== 6 || b==9 || b==11) && a>30 && a<0)
            {
                printf("data invalida");
            }
            else
            {
                if (b==2 && a>29)
                {
                    printf("data invalida");
                }
                else
                {
                    printf("data valida");
                }
            }
        }
    }
    else
    {
        printf("data invalida");
    }

    return 0;
}
