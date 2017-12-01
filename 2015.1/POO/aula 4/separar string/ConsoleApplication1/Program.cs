using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            int cont=9;
            int[] vetor = new int[10];
            int[] vetor2 = new int[10];
            Console.WriteLine("Escreva 10 numeros");
            for (int i = 0; i < 10; i++)
            {
                vetor[i] = int.Parse(Console.ReadLine());
                      
            }

            for( int i=0; i<10 ; i++)
            {
                vetor2[cont] = vetor[i];
                cont--;
            }

            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine(vetor[i]);
                Console.WriteLine(vetor2[i]);
            }

            Console.ReadKey();


        }
    }
}
