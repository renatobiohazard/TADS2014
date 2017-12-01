using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_1_aula_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b, c, d;
            int p = 0, i = 0;

            Console.WriteLine("Digite o primeiro número");
            a = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite o Segundo número");
            b = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite o terceiro número");
            c = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite o quarto número");
            d = int.Parse(Console.ReadLine());

            if (a % 2 == 0) p = p + a;
            else i = i + a;
            if (b % 2 == 0) p = p + b;
            else i = i + b;
            if (c % 2 == 0) p = p + c;
            else i = i + c;
            if (d % 2 == 0) p = p + d;
            else i = i + d;

            Console.WriteLine("A soma dos pares é {0} e a soma dos impares é {1}", p,i);
            Console.ReadKey();

        }
    }
}
