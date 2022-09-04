using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE2POO
{
	public class Carro : Veiculo
	{
		public Carro(string tipoVeiculo) : base(tipoVeiculo) { }

		public override void Mover()
		{
			Console.WriteLine("Acelerando");
		}

		public override void Parar()
		{
			Console.WriteLine("Freando");
		}

	}
}
