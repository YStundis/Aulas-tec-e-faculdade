using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    public class Endereco
    {
        //private string logradouro;
        private string bairro;
        private string numero;
        private string complemento;
        /* Seria muito interessante 
         * colocar os campos abaixo
         * em outras classes
         */
        private string cidade;
        private string estado;

        public string Logradouro { get; set; }
        /*public string Logradouro
        {
            get => logradouro;
            set => logradouro = value;
        }*/
        public string Bairro {
            get => bairro;
            set => bairro = value;
        }
        public string Numero {
            get => numero;
            set => numero = value;
        }
        public string Complemento {
            get => complemento;
            set => complemento = value;
        }
        public string Cidade {
            get => cidade;
            set => cidade = value;
        }
        public string Estado {
            get => estado;
            set => estado = value;
        }
    }
}
