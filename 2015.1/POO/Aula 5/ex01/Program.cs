using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex01
{
    class Program
    {
        static void Main(string[] args)

        {
            retangulo s = new retangulo();
            s.Retangulo(10, 20);
            Console.WriteLine(s.getarea());
            
            retangulo r = new retangulo();
            r.SetBase(20);
            r.SetAltura(30);
            Console.WriteLine(r.getarea());
            Console.ReadKey(); 
            
            
        }
    }
}
