using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE2POO
{
	public class Veiculo : Ipiloto
	{
		private string tipo;
		public string Tipo
		{
			get { return tipo; }
			set { tipo = value; }
		}

		public Veiculo(string tipoVeiculo)
		{
			this.tipo = tipoVeiculo;
		}

		public virtual void Mover() { }

		public virtual void Parar() { }

		public void piloto()
		{
			Console.WriteLine("O piloto entrou no veiculo " + this.Tipo);
		}

		public void semPiloto()
		{
			Console.WriteLine("O piloto saiu do veiculo " + this.Tipo);
		}

	}
}
