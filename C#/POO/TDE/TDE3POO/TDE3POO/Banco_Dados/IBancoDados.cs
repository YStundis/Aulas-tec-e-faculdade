using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDE3POO.Banco_Dados
{
	interface IBancoDados<T>
	{
		bool Create();

		List<T> Read();

		bool Update(T obj);

		bool Delete(int id);
	}
}
