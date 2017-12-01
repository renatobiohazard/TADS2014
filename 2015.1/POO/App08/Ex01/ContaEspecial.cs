using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class ContaEspecial : ContaComum
    {
        private double limite;
        public ContaEspecial(string numConta, string titular,
            double limite) : base (numConta, titular)
        {
            this.limite = limite;
        }
        public override void Saque(double valor)
        {
            if (valor <= saldo + limite) saldo -= valor;
        }
    }
}
