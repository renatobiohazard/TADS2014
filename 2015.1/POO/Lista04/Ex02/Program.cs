using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex02
{
    class Program
    {
        static void Main(string[] args)
        {
            IPessoa[] x = new IPessoa[5];
            x[0] = new Aluno("A", 
                DateTime.Parse("01/01/1980"), "123", "Tads");
            x[1] = new Aluno("B",
                DateTime.Parse("01/01/1981"), "456", "Tads");
            x[2] = new Aluno("C",
                DateTime.Parse("03/03/1981"), "789", "Tads");
            x[3] = new Professor("D",
                DateTime.Parse("01/01/1981"), "000", "Diatinf");
            x[4] = new Aluno("E",
                DateTime.Parse("23/06/1981"), "111", "Diatinf");
            aniversariantes(x, 1);
            Console.ReadKey();
        }

        static private void aniversariantes(IPessoa[] x, int mes)
        {
            foreach (IPessoa p in x)
                if (p.GetNascimento().Month == mes)
                    Console.WriteLine(p.GetNome() + p.GetNascimento());
        }
    }
}
