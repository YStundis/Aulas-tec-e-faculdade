using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Professor : Pessoa, IBanco_Dados
    {
        public void Cadastrar()
        {
            this.Nome = "Alexandre";
            this.Cpf = "23143134";


            Console.WriteLine("Fazer o cadastro do professor");
        }

        public void Ler(string cpf)
        {
            Console.WriteLine("Pesquisar o Professor pelo CPF");
        }

        public bool Create()
        {
            // Conexão com o banco
            // Pegaria os dados do Professor
            // Salvaria no Banco
            throw new NotImplementedException();
        }

        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<T> Read<T>()
        {
            throw new NotImplementedException();
        }

        public bool Update(int id)
        {
            throw new NotImplementedException();
        }
    }
}
