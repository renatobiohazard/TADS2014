using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_3_aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            double gasto, anos, cigDia, precoCart, quantCart;
            Console.WriteLine("Digite a quantos anos você fuma");
            anos = double.Parse(Console.ReadLine());
            Console.WriteLine("digite o numero de cigarros fumados por dia");
            cigDia = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite o preço da carteira de cigarros");
            precoCart = double.Parse(Console.ReadLine());

            anos = anos * 365;
            cigDia = cigDia * anos;
            quantCart = cigDia / 20;
            gasto = quantCart * precoCart;

            Console.WriteLine("O preço total gasto foi de {0}", gasto);
                Console.ReadKey();


        }
    }
}
