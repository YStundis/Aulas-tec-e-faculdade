using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    abstract class Pessoa
    {
        private string nome;
        private string cpf;
        private Endereco endereco;

        public string Nome {
            get => nome;
            set => nome = value;
        }
        public string Cpf {
            get => cpf;
            set => cpf = value;
        }
        public Endereco Endereco {
            get => endereco;
            set => endereco = value;
        }

        public void Cadastrar() { }

        // TODO - rever o retorno do método
        public void Ler(string cpf) { }

    }
}
