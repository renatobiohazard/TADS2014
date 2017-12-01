using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lista1exercicio3
{
    class Program
    {
        static void Main(string[] args)
        {
            double n1, n2, n3, m;
            Console.WriteLine("Digite as notas do primeiro, segundo e terceiro bimestre");
            n1 = double.Parse(Console.ReadLine());
            n2 = double.Parse(Console.ReadLine());
            n3 = double.Parse(Console.ReadLine());

            m = ((((n1 * 2) + (n2 * 2) + (n3 * 3)) - 60) / 3)*(-1);
            Console.WriteLine("A nota pra passar é: {0:0.0}",m);
            Console.ReadKey();
        }
    }
}
