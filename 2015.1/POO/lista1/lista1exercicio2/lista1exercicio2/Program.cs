using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lista1exercicio2
{
    class Program
    {
        static void Main(string[] args)
        {
            double raio, area, circu,pi;
            pi = 3.141523;
            Console.WriteLine("Digite o raio do circulo");
            raio = double.Parse(Console.ReadLine());

            circu = 2 * pi * raio;
            area = pi * (raio * raio);

            Console.WriteLine("a cicurferência é {0:0.00} e a area é {1:0.00}", circu,area);
            Console.ReadKey();
            
        }
    }
}
