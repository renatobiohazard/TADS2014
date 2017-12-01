using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio02
{
    class conta
    {
        private string nome;
        private string nConta;
        private double saldo;

        public void setNome(string _nome)
        {
            nome = _nome;
        }

        public void setnConta(string _conta)
        {
            nConta = _conta;
        }

        public void setDebito(double _debito)
        {
            saldo = saldo - _debito;

        }

        public void setCredito(double _credito)
        {
            saldo = saldo + _credito;

        }

        public double getverifisaldo()
        { 
            return saldo;
        }

    }
}
