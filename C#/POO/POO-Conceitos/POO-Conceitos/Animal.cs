using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Animal
    {
        public string nome;
        public string especie;
        public int genero;

        public const string teste = "42";

        public static int qtd_patas;

        public Animal()
        {
            Console.WriteLine("Método Construtor executado");
        }
        
        public void respirar()
        {
            Console.WriteLine(this.nome + " Respirando");
        }

        public void alimentar()
        {
            Console.WriteLine(this.nome + " Comendo");
        }
    }
}
