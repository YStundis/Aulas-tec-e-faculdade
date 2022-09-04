 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
int main()

{
/*
Faça um programa que receba várias idades e que
calcule e mostre a média das idades digitadas.
Finalize digitando idade igual a zero.
*/
int idades, soma_idades=0, qtde_idades, i;
float media;

printf("Quantas idades serão utilizadas...: ");
scanf ("%d", &qtde_idades);

for(i=1;i<=qtde_idades;i++){
printf("Entre com a idade %d...: ",i);
scanf("%d", &idades);
soma_idades = soma_idades + idades;
}
media = soma_idades / qtde_idades;
printf ("\nA media de idades eh de ..: %.1f", media);

scanf("%s");
}
