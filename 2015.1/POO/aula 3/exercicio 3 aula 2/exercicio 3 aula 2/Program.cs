using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_3_aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b, c;
            double x1, x2, delta;

            Console.WriteLine("Escreva o aX");
            a = int.Parse(Console.ReadLine());
            Console.WriteLine("Escreva o bX");
            b = int.Parse(Console.ReadLine());
            Console.WriteLine("Escreva o c");
            c = int.Parse(Console.ReadLine());

            delta = (b * b) - (4 * a * c);
            if (delta > 0)
            {
                x1 = (-b + Math.Sqrt(delta)) / 2;
                x2 = (b + Math.Sqrt(delta)) / 2;
                Console.WriteLine("O X1 é {0} e o X2 é {1}", x1, x2);
                Console.ReadKey();
            }
            else
            {
                Console.WriteLine("Delta negatico e sem resultado");
                Console.ReadKey();
            }

            
        }
    }
}
