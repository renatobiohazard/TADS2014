using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace provaquestao1
{
    class Program
    {
        static void Main(string[] args)
        {
            imc calcular=new imc();
            double pesos, alturas;
            Console.WriteLine("Escreva seu peso");
            pesos=double.Parse(Console.ReadLine());
            Console.WriteLine("Escreva sua altura");
            alturas = double.Parse(Console.ReadLine());

            Console.WriteLine("Seu imc é: {0:0.00}",calcular.calc(alturas,pesos));
            Console.ReadKey();
        }
    }
}
