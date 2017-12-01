using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex02
{
    class Aluno : Pessoa
    {
        private string curso;
        public Aluno(string nome, DateTime nascimento,
            string matricula, string curso) : base(nome,
        nascimento, matricula )
        {
            this.curso = curso;
        }
    }
}
