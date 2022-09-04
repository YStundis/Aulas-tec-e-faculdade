using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
	class Aluno :Pessoa
	{
		public string turma;
		public string aula;
		
		public void qturma()
		{
			Console.WriteLine(this.nome + " pertence a turma " + this.turma);
		}

	}
}
