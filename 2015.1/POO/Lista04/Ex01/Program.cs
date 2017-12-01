using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class Program
    {
        static void Main(string[] args)
        {
            Progressao p = new PA();
            p.SetPrimeiroElemento(10);
            p.SetRazao(5);
            foreach(double elem in p.GetElementos(10))
                Console.WriteLine(elem);
            Console.ReadKey();
        }
    }
}
