using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace exercicio_2_aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            double baase, altura, area, perimetro, diagonal;
            Console.WriteLine("Digite a base");
            baase = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite a altura");
            altura = double.Parse(Console.ReadLine());

            area = (baase * altura);
            perimetro = ((baase * 2) + (altura * 2));
            diagonal = Math.Sqrt((baase*baase)+(altura*altura));

            Console.WriteLine("Area: {0}, Perimetro: {1}, Diagonal {2}", area, perimetro, diagonal);
            Console.ReadKey();


        }
    }
}
