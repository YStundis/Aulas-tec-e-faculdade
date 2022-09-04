using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE2POO
{
	class Program
	{
		static void Main(string[] args)
		{
			Veiculo[] veiculo = new Veiculo[3];

			veiculo[0] = new Carro("Uno");
			veiculo[1] = new Barco("RMS Titanic");
			veiculo[2] = new Aviao("Tucano");

			pilotando(veiculo[0]);
			Console.WriteLine("");
			pilotando(veiculo[1]);
			Console.WriteLine("");
			pilotando(veiculo[2]);

			Console.WriteLine("\n--Movimentando--\n");

			MovimentarVeiculo(veiculo[0]);
			Console.WriteLine("");
			MovimentarVeiculo(veiculo[1]);
			Console.WriteLine("");
			MovimentarVeiculo(veiculo[2]);

			Console.WriteLine("\n--Parando--\n");

			PararVeiculo(veiculo[0]);
			Console.WriteLine("");
			PararVeiculo(veiculo[1]);
			Console.WriteLine("");
			PararVeiculo(veiculo[2]);

			Console.WriteLine("");

			sempilotando(veiculo[0]);
			Console.WriteLine("");
			sempilotando(veiculo[1]);
			Console.WriteLine("");
			sempilotando(veiculo[2]);
			Console.ReadKey();

		}

		public static void MovimentarVeiculo(Veiculo veiculo)
		{
			Console.WriteLine(veiculo.Tipo);
			veiculo.Mover();
		}

		public static void PararVeiculo(Veiculo veiculo)
		{
			Console.WriteLine(veiculo.Tipo);
			veiculo.Parar();
		}

		public static void pilotando(Veiculo veiculo)
		{
			veiculo.piloto();
		}

		public static void sempilotando(Veiculo veiculo)
		{
			veiculo.semPiloto();
		}

	}
}
