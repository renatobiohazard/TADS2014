using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace questao2
{
    class Program
    {
        static void Main(string[] args)
        {
            int num;
            acomodacoes acms = new simples();
            acomodacoes acmd = new duplo();
            acomodacoes acmsu = new suite();

            Console.WriteLine("digite 1 para simples, 2 para duplo e 3 para suite");
            num = int.Parse( Console.ReadLine());
            switch (num)
            {
                case 1: Console.WriteLine(acms.Getaptsimp());
                    break;

                case 2: Console.WriteLine(acmd.getaptdup());
                    break;
                case 3: Console.WriteLine(acmsu.getaptsuite());
                    break;
            }
            Console.ReadKey();

        }
    }
}
