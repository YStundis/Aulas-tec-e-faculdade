using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE3POO.Alunos
{
	class AlunosController
	{
		Aluno model = new Aluno();

		public bool store(String nomea, String Turma, String Ano, String RA, String Periodo)
		{
			model.Nome = nomea;
			model.Turma = Turma;
			model.Ano = Ano;
			model.Ra = RA;
			model.Periodo = Periodo;

			model.Create();

			return true;
		}

		public List<Aluno> show()
		{
			List<Aluno> alunos = new List<Aluno>();

			Aluno al1 = new Aluno();
			al1.Nome = "João";
			al1.Turma = "A";
			al1.Ano = "1º";
			al1.Ra = "111222333";
			al1.Periodo = "Manhã";

			Aluno al2 = new Aluno();
			al2.Nome = "Pedro";
			al2.Turma = "B";
			al2.Ano = "2º";
			al2.Ra = "444555666";
			al2.Periodo = "Tarde";

			alunos.Add(al1);
			alunos.Add(al2);

			return alunos;
		}

		public bool update()
		{
			return true;
		}

		public bool destroy()
		{
			return true;
		}
	}
}
