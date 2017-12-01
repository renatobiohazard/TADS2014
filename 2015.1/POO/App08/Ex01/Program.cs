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
            ContaComum c = new ContaComum("1234", "Titular");
            c.Deposito(1000);
            Console.WriteLine(c.VerificarSaldo());
            c.Saque(800);
            Console.WriteLine(c.VerificarSaldo());
            c.Saque(800);
            Console.WriteLine(c.VerificarSaldo());
            Console.WriteLine(c.ToString());

            ContaEspecial ce = new ContaEspecial("1234", "Titular", 1000);
            ce.Deposito(1000);
            Console.WriteLine(ce.VerificarSaldo());
            ce.Saque(800);
            Console.WriteLine(ce.VerificarSaldo());
            ce.Saque(800);
            Console.WriteLine(ce.VerificarSaldo());
            Console.WriteLine(ce.ToString());

            ContaPoupanca cp = new ContaPoupanca("1234", "Titular");
            cp.Deposito(1000);
            Console.WriteLine(cp.VerificarSaldo());
            cp.Rendimento(0.1);
            Console.WriteLine(cp.VerificarSaldo());
            Console.WriteLine(cp.ToString());
            Console.ReadKey();
        }
    }
}
