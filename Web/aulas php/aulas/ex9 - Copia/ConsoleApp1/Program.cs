using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            int i;
            int[] vetor = new int[50];
            
            for( i=0; i<50; i++)
            {
                Console.Write("Digite um número: ");
                vetor[i] = int.Parse(Console.ReadLine());
            }
            for (i = 0; i < 50; i++)
            {
                if (vetor[i] % 2 == 0)
                {
                    Console.WriteLine("Os números pares são: " + vetor[i]);
                }
            }
           
           
            Console.ReadKey();
        }
    }
}
