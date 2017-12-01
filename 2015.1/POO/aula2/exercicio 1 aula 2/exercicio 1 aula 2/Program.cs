using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_1_aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite a nota do primeiro bimeestre");
            double n1 = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite a nota do segundo bimeestre");
            double n2 = double.Parse(Console.ReadLine());
            double media = ((2 * n1) + (3 * n2)) / 5;
            Console.WriteLine("Media = {0}", media);
            Console.ReadKey();

        }
    }
}
