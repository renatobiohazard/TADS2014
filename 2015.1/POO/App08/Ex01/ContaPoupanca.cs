using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class ContaPoupanca : ContaComum
    {
        public ContaPoupanca(string numConta, string titular)
            : base (numConta, titular)
        {
        }

        public void Rendimento(double perc)
        {
            Deposito(VerificarSaldo() * perc);
        }
    }
}
