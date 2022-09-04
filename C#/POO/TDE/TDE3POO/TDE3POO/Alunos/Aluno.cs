using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TDE3POO.Banco_Dados;

namespace TDE3POO.Alunos
{
	class Aluno: IBancoDados<Aluno>
	{
		private String nome;
		private String periodo;
		private String turma;
		private String ra;
		private String sala;
		private String ano;

		public string Nome { get => nome; set => nome = value; }
		public string Periodo { get => periodo; set => periodo = value; }
		public string Turma { get => turma; set => turma = value; }
		public string Ra { get => ra; set => ra = value; }
		public string Sala { get => sala; set => sala = value; }
		public string Ano { get => ano; set => ano = value; }

		public bool Create()
		{
			Console.WriteLine("Cadastrar Aluno/a");
			Console.WriteLine(this.Nome);
			Console.WriteLine(this.Periodo);
			Console.WriteLine(this.Turma);
			Console.WriteLine(this.Ra);
			Console.WriteLine(this.Sala);
			Console.WriteLine(this.Ano);
			return true;
		}

		public bool Delete(int id)
		{
			throw new NotImplementedException();
		}

		public List<Aluno> Read()
		{
			throw new NotImplementedException();
		}

		public bool Update(Aluno obj)
		{
			throw new NotImplementedException();
		}
	}
}
