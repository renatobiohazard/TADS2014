using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex02
{
    class Professor : Pessoa
    {
        private string diretoria;
        public Professor(string nome, DateTime nascimento,
            string matricula, string diretoria)
            : base(nome, nascimento, matricula)
        {
            this.diretoria = diretoria;
        }
    }
}
