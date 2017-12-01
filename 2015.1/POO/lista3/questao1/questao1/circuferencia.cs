using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace questao1
{
    class circuferencia
    {
        private double area;
        private double rai;
        private double circu;

        public void setRai(double _rai)
        {
            rai = _rai;
                       
        }
        public void setArea()
        {

            area = 3.14 * rai * rai;
        }

        public void setCircu()
        {

            circu = 2 * 3.14 * rai;

        }

        public double getArea()
        {

            return area;
        }

        public double getCircu()
        {

            return circu;
        }
    }
}
