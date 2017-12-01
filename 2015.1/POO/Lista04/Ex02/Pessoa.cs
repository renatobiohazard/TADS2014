using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex02
{
    class Pessoa : IPessoa
    {
        private string nome;
        private DateTime nascimento;
        private string matricula;
        public Pessoa(string nome, DateTime nascimento,
            string matricula) {
            this.nome = nome;
            this.nascimento = nascimento;
            this.matricula = matricula;
        }
        public string GetNome() {
            return nome;
        }
        public DateTime GetNascimento() {
            return nascimento;
        }
    }
}
