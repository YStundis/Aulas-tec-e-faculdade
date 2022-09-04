using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Venda
    {
        private List<Produto> items = new List<Produto>();

        public void addProduto(Produto produto)
        {
            items.Add(produto);
        }

        public double finalizaVenda()
        {
            return 0;
        }
    }
}
