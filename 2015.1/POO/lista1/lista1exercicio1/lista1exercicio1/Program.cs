using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lista1exercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome;
            Console.WriteLine("Escreva o seu o nome");
            nome=Console.ReadLine();

            Console.WriteLine("Bem vindo {0}",nome);
            Console.ReadKey();
        }
    }
}
