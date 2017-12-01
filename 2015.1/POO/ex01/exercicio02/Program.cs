using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio02
{
    class Program
    {
        static void Main(string[] args)
        {
            conta mconta = new conta();
            int ver;
            Console.WriteLine("escreva seu nome");
            mconta.setNome(Console.ReadLine());
            Console.WriteLine("escolha o numero de sua conta");
            mconta.setnConta(Console.ReadLine());
            Console.WriteLine("seu saldo é: {0}", mconta.getverifisaldo());
            
            for (int i = 1; i > 0; i++)
            {
                Console.WriteLine("escreva 1 para sacar, 2 para depositar ou 3 para verificar o saldo");
                ver = int.Parse(Console.ReadLine());
                if (ver == 1)
                {

                    Console.WriteLine("escreva o valor a sacar");
                    mconta.setDebito(double.Parse(Console.ReadLine()));
                    
                }
                
                
                   if (ver == 2)
                    {
                        Console.WriteLine("escreva o valor creditar");
                        mconta.setCredito(double.Parse(Console.ReadLine()));
                        
                    }
                    if (ver == 3)
                    {
                        Console.WriteLine("seu saldo é: {0}", mconta.getverifisaldo());
                        
                    }
                
                ver = 0;
            }

        }
    }
}
