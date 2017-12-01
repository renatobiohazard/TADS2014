using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Area_do_triangulo
{
    class Program
    {
        static void Main(string[] args)
        {
            double b, h, a;
            Console.WriteLine("escreva um valor para a base");
            b = double.Parse(Console.ReadLine());
            Console.WriteLine("escreva um valor para a altura");
            h = double.Parse(Console.ReadLine());
            a = (b * h) / 2;
            Console.WriteLine("Base = {0} Altura = {1} Area = {2}", b, h, a);
            Console.ReadKey();
        }
    }
}
