using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lista1exercicio4
{
    class Program
    {
        static void Main(string[] args)
        {
            int dia, mes, ano,idade;
            Console.WriteLine("infome sua data de nascinmento");
            dia = int.Parse(Console.ReadLine());
            mes = int.Parse(Console.ReadLine());
            ano = int.Parse(Console.ReadLine());

            idade = 2013 - ano;

            Console.WriteLine("Em 31/12/2013 você terá {0} anos", idade);
            Console.ReadKey();
        }
    }
}
