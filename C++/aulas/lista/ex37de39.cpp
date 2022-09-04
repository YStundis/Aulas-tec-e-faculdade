#include <stdio.h>
   int main ( )
{
   float nota1, nota2, mediaA;
   float n1, n2, n3, p1, p2, p3, mediaP;
   int escolha;

do{
     printf ("Escolha entre as opcoes:\n");
     printf ("1. Media artmetica\n");
     printf ("2. Media ponderada\n");
     printf ("3. Sair\n\n");
     scanf ("%i", &escolha);

  switch (escolha)
      {
        case1:
        printf ("Insira duas notas\n");
        scanf ("%f" "%f", nota1, nota2);
        mediaA = (nota1 + nota2)/2;
        printf ("Media aritmetica: %.2f\n", mediaA);
        break;

        case2:
        printf ("Insira a primeira nota\n");
        scanf ("%f", &n1);
        printf ("Insira a segunda nota\n");
        scanf ("%f", &n2);
        printf ("Insira a terceira nota\n");
        scanf ("%f", &n3);
        printf ("Insira o primeiro peso\n");
        scanf ("%i", &p1);
        printf ("Insira o segundo peso\n");
        scanf ("%i", &p2);
        printf ("Insira o terceiro peso\n");
        scanf ("%i", &p3);
        mediaP = (n1*p1 + n2*p2 + n3*p3)/ (p1 + p2 + p3);
        printf ("Media ponderada: %.2f\n", mediaP);
        break;
        
        case3:
        printf ("Sair\n");
        break;

        default:
        printf("Digite uma opcao valida\n");
      }

   } while (escolha != 3);

 return 0;
}

Leia mais em Brainly.com.br - https://brainly.com.br/tarefa/10286459#readmore
