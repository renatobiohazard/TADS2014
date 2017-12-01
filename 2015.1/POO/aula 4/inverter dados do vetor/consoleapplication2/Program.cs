using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome;
            char[] nada;
            nada = new char[7];
            nome = "nadegas";




            for (int i = 0; i < 7; i++)
            {
                nada[i] = nome[i];
                switch (nada[i])
                {
                    case 'a': Console.WriteLine("nadegas"); break;
                    case 'e': Console.WriteLine("arrudei"); break;
                
                
                }
                
                
            }
            Console.ReadKey();
        }
    }
}
