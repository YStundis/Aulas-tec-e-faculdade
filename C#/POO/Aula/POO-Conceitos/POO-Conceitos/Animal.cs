using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Animal: IBanco_Dados<Animal>
    {
        public string nome;
        public string especie;
        public int genero;

        public const string teste = "42";

        public static int qtd_patas;

        public List<Animal> AnimalList;

        public Animal(string nome, string especie, int genero)
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

        public bool Create(Animal obj)
        {
            throw new NotImplementedException();
        }

        public List<Animal> Read()
        {
            throw new NotImplementedException();
        }

        public bool Update(Animal obj)
        {
            throw new NotImplementedException();
        }

        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
