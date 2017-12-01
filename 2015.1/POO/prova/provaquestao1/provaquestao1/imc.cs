using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace provaquestao1
{
    class imc
    {
        double altura, peso,calculo;
        public double calc(double _altura, double _peso)
        {
            altura = _altura;
            peso = _peso;

            calculo = peso / (altura * altura);

            return calculo;
        }
    }
}
