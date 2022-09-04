using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
	class Pessoa 
	{
		public string nome;
		public string idade;
		public string cpf;

		public void quem()
		{
			Console.WriteLine("Nome: " + this.nome);
		}

		public void tempo_de_vida()
		{
			Console.WriteLine("Tem " + this.idade + " anos");
		}

		public void cadastro_pessoa_fisica()
		{
			Console.WriteLine("CPF: " + this.cpf);
		}
		
	}
}
