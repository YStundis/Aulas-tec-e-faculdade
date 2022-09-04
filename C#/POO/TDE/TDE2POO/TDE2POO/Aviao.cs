using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE2POO
{
	public class Aviao : Veiculo
	{
		public Aviao(string tipoVeiculo) : base(tipoVeiculo) { }

		public override void Mover()
		{
			Console.WriteLine("Decolando");
		}

		public override void Parar()
		{
			Console.WriteLine("Aterrisando");
		}

	}
}
