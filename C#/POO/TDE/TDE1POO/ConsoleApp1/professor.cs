using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
	class Professor :Pessoa
	{
		public string nome_materia;

		public void materia()
		{
			Console.WriteLine(this.nome + " dara aula sobre a materia " + this.nome_materia);
		}

	}
}
