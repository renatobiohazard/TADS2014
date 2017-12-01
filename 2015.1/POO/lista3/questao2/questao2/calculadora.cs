using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace questao2
{
    class calculadora
    {
        int mult, div, som, sub;

        public int setMult(int n1,int n2)
        {
            mult = n1 * n2;
            return mult;
        }
        public int setDiv(int n1, int n2)
        {
            div = n1/n2;
            return div;
        }
        public int setSom(int n1, int n2)
        {
            som = n1 + n2;
            return som;
        }
        public int setSub(int n1, int n2)
        {
            sub = n1 - n2;
            return sub;
        }
    }
}
