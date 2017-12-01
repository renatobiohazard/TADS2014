#include <stdio.h>
#include <stdlib.h>

double situacao(double a, double b);

int main(int argc, char **argv)
{
    double n1, n2, nf;

    scanf("%lf", &n1);
    scanf("%lf", &n2);

    nf = (situacao(n1,n2));

    if(nf>=6.0)
{
    printf("aluno aprovado");
}
    else
{
    if(nf<6.0 && nf>2.0)

{
    printf("aluno em recuperacao");
}

    else
{
    printf("aluno reprovado");
}


}

}

double situacao(double a, double b)
{
    double c;
    c=(((a*2)+(b*3))/5);
    return c;
}
