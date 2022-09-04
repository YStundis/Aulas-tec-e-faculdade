using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            Classes: Arquivos de código
            Atributos: Características
            Métodos: Ações

            Objeto: Instância de uma classe
            */

            Animal.qtd_patas = 4;

            Console.WriteLine("A quantidade de patas " +
                  Animal.qtd_patas);
            

            Animal cavalo = new Animal();

            cavalo.nome = "Salvitchera";
            cavalo.especie = "Bombadaum";
            cavalo.genero = 0; // Macho

            cavalo.respirar();
            cavalo.alimentar();

            Animal baleia = new Animal();

            Animal.qtd_patas = 0;

            baleia.nome = "Wendeu";
            baleia.especie = "Bichannus";
            baleia.genero = 1; // Fêmea

            baleia.respirar();
            baleia.alimentar();

            Aluno joao = new Aluno();

            joao.Nome = "João Pedro";
            joao.Cpf = "123.456.789-00";
            joao.Primeira_nota = 8;
            joao.Segunda_nota = 9;

            double media = joao.calcularMedia();

            double media2 = joao.calcularMedia(5, 9, 10);
          

            Console.WriteLine("A média do " +
                  joao.Nome + " foi: " +
                  media);

            Console.WriteLine("A segunda média do " +
                  joao.Nome + " foi: " +
                  media2);


            Aluno maria = new Aluno();
            maria.Nome = "Maria Aparecida";
            maria.Primeira_nota = 10;
            maria.Segunda_nota = 0;

            maria.Endereco = new Endereco();
            maria.Endereco.Logradouro = "Avenida Teste";
            //maria.Endereco.Cidade = "Barretos";

            double media_maria = maria.calcularMedia();
            Console.WriteLine("A média da " +
                  maria.Nome + " foi: " +
                  media_maria);

            Console.ReadLine();

            Produto detergente = new Produto();
            detergente.nome = "YPE";
            detergente.preco = 5;

            Produto shampoo = new Produto();
            shampoo.nome = "Clear Man";
            shampoo.preco = 25.8;

            Venda venda = new Venda();
            venda.addProduto(detergente);
            venda.addProduto(shampoo);

    
        }
    }
}
