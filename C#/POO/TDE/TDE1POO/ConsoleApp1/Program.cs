using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
	class Program
	{
		static void Main(string[] args)
		{

			Aluno aluno1 = new Aluno();

			aluno1.nome = "Yuri";
			aluno1.idade = "18";
			aluno1.cpf = "000.111.222.33";
			aluno1.turma = "1";

			aluno1.quem();
			aluno1.tempo_de_vida();
			aluno1.cadastro_pessoa_fisica();
			aluno1.qturma();


			Console.WriteLine("");


			Professor professor1 = new Professor();

			professor1.nome = "Alexandre";
			professor1.idade = "25";
			professor1.cpf = "888.999.000.11";
			professor1.nome_materia = "POO";

			professor1.quem();
			professor1.tempo_de_vida();
			professor1.cadastro_pessoa_fisica();
			professor1.materia();


			Console.WriteLine("");


			aluno1.aula = professor1.nome_materia;

			Console.WriteLine(aluno1.nome + " tem aula de " + aluno1.aula);


			Console.WriteLine("");

			Professor professor2 = new Professor();

			professor2.nome = "Wendel";
			professor2.idade = "24";
			professor2.cpf = "222.333.444.55";
			professor2.nome_materia = "PI";

			professor2.quem();
			professor2.tempo_de_vida();
			professor2.cadastro_pessoa_fisica();
			professor2.materia();


			Console.WriteLine("");


			Aluno aluno2 = new Aluno();

			aluno2.nome = "João";
			aluno2.idade = "19";
			aluno2.cpf = "444.555.666.77";
			aluno2.turma = "2";

			aluno2.quem();
			aluno2.tempo_de_vida();
			aluno2.cadastro_pessoa_fisica();
			aluno2.qturma();


			Console.WriteLine("");


			aluno2.aula = professor2.nome_materia;

			Console.WriteLine(aluno2.nome + " tem aula de " + aluno2.aula);


			Console.ReadLine();
		}
	}
}
