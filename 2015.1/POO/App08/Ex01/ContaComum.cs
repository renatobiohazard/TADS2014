using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class ContaComum// : Object
    {
        private string numConta;
        private string titular;
        protected double saldo;
        public ContaComum(string numConta, string titular) {
            this.numConta = numConta;
            this.titular = titular;
        }
        public void Deposito(double valor) {
            saldo += valor;
        }
        public virtual void Saque(double valor) {
            if (valor <= saldo) saldo -= valor;
        }
        public double VerificarSaldo() {
            return saldo;
        }
        public override string ToString()
        {
            return string.Format("{0} - {1}: {2:0.00}",
                numConta, titular, saldo);
        }
    }
}
