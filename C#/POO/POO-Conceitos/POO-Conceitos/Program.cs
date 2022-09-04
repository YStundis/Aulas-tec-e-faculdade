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

            joao.nome = "João Pedro";
            joao.primeira_nota = 8;
            joao.segunda_nota = 9;

            double media = joao.calcularMedia();

            double media2 = joao.calcularMedia(5, 9, 10);
          

            Console.WriteLine("A média do " +
                  joao.nome + " foi: " +
                  media);

            Console.WriteLine("A segunda média do " +
                  joao.nome + " foi: " +
                  media2);


            Aluno maria = new Aluno();
            maria.nome = "Maria Aparecida";
            maria.primeira_nota = 10;
            maria.segunda_nota = 0;

            double media_maria = maria.calcularMedia();
            Console.WriteLine("A média da " +
                  maria.nome + " foi: " +
                  media_maria);

            Console.ReadLine();
        }
    }
}
