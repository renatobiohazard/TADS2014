using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_4_aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            int valor, valor2, n100, n50, n20, n10, n5, n2, n1;
            
            Console.WriteLine("Escreva o valor");
            valor = int.Parse(Console.ReadLine());
            valor2 = valor;
            n100 = valor / 100;
            
            valor = valor - ((valor / 100) *100);

            n50 = valor / 50;
            valor = valor - ((valor / 50)*50);

            n20 = valor / 20;
            valor = valor - ((valor / 20)*20);

            n10 = valor / 10;
            valor = valor - ((valor / 10)*10);


            n5 = valor / 5;
            valor = valor - ((valor / 5)*5);

            n2 = valor / 2;
            valor = valor - ((valor / 2) * 2);
           

            n1 = valor / 1;
            valor = valor - ((valor / 1) * 1);

           

            Console.WriteLine("O valor é {0} e , serão {1} notas de 100, serão {2} notas de 50, serão {3} notas de 20, serão {4} notas de 10, serão {5} notas de 5, serão {6} notas de 2 e serão {7} notas de 1", valor2, n100, n50, n20, n10, n5, n2, n1);
            Console.ReadKey();
        }
    }
}
