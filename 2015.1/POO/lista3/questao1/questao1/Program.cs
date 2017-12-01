using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace questao1
{
    class Program
    {
        static void Main(string[] args)
        {
            circuferencia circuf = new circuferencia();
            double raiio;
            Console.WriteLine("escreva o raio");
            raiio=double.Parse(Console.ReadLine());
            circuf.setRai(raiio);
            circuf.setArea();
            circuf.setCircu();

            Console.WriteLine("A area é {0} e a circuferência é {1}",circuf.getArea(),circuf.getCircu());
            Console.ReadKey();

        }
    }
}
