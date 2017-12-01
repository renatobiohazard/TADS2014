using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace questao2
{
    class acomodacoes
    {
        private bool vista;
        protected double precoaptsuite;
        protected double precoaptsduplo;
        protected double precoaptsim;
        public virtual double Getaptsimp()
        {
            return precoaptsim+10;
        }
        public virtual double getaptdup()
        {
            
            return precoaptsduplo+10;
        }
        public virtual double getaptsuite()
        {
           
            return precoaptsuite+10;
        }
    }
}
