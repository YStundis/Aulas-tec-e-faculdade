using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Aluno : Pessoa
    {
        private double primeira_nota;
        private double segunda_nota;
        private double media;

        public double Primeira_nota {
            get => primeira_nota;
            set => primeira_nota = value;
        }
        public double Segunda_nota {
            get => segunda_nota;
            set => segunda_nota = value;
        }
        public double Media {
            get => media;
            set => media = value;
        }

        public double calcularMedia()
        {
            this.Media = (this.Primeira_nota + 
                          this.Segunda_nota) / 2;
            return this.Media;
        }

        public double calcularMedia(double n1, double n2, double n3)
        {
            this.Media = (n1 + n2 + n3) / 3;
            return this.Media;
        }

        public double calcularMedia(double n1, int n2, double n3)
        {
            return 10;
        }

        public void Cadastrar() {
            Console.WriteLine("Fazer o cadastro do aluno");
        }

        public void Ler(string cpf) {
            Console.WriteLine("Pesquisar o Aluno pelo CPF");
        }
    }
}
