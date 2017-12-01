using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex01
{
    class retangulo
    {
        private double b;
        private double h;
        public void Retangulo(double _base, double _altura)
        {
            if (_base > 0) b = _base;
            if (_altura > 0) h = _altura;

        }


        public void SetBase(double _base)
        {
            if (_base >0) b = _base;
        
        }
        public void SetAltura(double _altura)
        {
            if (_altura > 0) h = _altura;

        }
        public double getarea()
        { 
            return b*h;
        }
    }
}
