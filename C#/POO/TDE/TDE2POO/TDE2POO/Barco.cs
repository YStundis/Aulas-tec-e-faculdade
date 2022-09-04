using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE2POO
{
	public class Barco : Veiculo
	{
		public Barco(string tipoVeiculo) : base(tipoVeiculo) { }

		public override void Mover()
		{
			Console.WriteLine("Levantando ancora");
		}

		public override void Parar()
		{
			Console.WriteLine("Jogando ancora");
		}

	}
}
