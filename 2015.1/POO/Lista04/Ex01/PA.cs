using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class PA : Progressao
    {
        public override double[] GetElementos(int n) {
            double[] r = new double[n];
            r[0] = GetPrimeiroElemento();
            for (int i = 1; i < n; i++)
                r[i] = r[i - 1] + GetRazao();
            return r;
        }
        public override double GetElemento(int n) {
            return GetPrimeiroElemento() + (n - 1) * GetRazao();
        }
        public override double GetSoma(int n) {
            double[] r = GetElementos(n);
            double s = 0;
            foreach (double elem in r) s += elem;
            return s;
        }
    }
}
