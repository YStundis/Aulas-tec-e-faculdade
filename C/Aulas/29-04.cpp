//ok
#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main()
	{
		float num1[5], num2[5], media[5];
		int contador;
		char opt = 's';
		
		setlocale(LC_ALL,"");//importar características de localização do sistema operacional
		
		while (opt == 's' || opt == 'S') 
		{
		
			for (contador = 1; contador <=5; contador++)
			{		 
				system ("cls");
				printf ("Aluno %d - Digite a Nota 1: ",contador);
				scanf("%f",&num1[contador]);
						
				printf ("Aluno %d - Digite a Nota 2: ",contador);
				scanf("%f",&num2[contador]);
				
				system("cls");
				
				media[contador] = ((num1[contador] + num2[contador]) / 2);
			}	
			
			for (contador = 1; contador <= 5; contador++)
			{
				printf("\nMédia do Aluno %d: %.1f", contador, media[contador]);
			}
			
			printf ("\n\n_______________");
			printf ("\nDeseja executar novamente?");
			printf ("\nS - Sim");
			printf ("\nN - Não");
			printf ("\n\n_______________\n");
			scanf ("%s",&opt);
			
			
		}
		
	}
