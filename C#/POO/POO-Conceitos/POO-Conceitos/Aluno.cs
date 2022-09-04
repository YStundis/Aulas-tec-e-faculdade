using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Aluno
    {
        public string nome;
        public double primeira_nota;
        public double segunda_nota;
        public double media;

        public double calcularMedia()
        {
            this.media = (this.primeira_nota + 
                          this.segunda_nota) / 2;
            return this.media;
        }

        public double calcularMedia(double n1, double n2, double n3)
        {
            this.media = (n1 + n2 + n3) / 3;
            return this.media;
        }

        public double calcularMedia(double n1, int n2, double n3)
        {
            return 10;
        }
    }
}
