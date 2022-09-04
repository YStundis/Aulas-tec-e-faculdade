#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
// declaracao de variaveis e constantes
int idade,i,peso;
float cor_dos_olhos, cor_dos_cabelos, qntpesazuis, qntpesaltu1, qntpesmais50, qntpesruivas, mediap1, altura, mediaazul, totalidade;
cout << setprecision(2);
// inicializacao dos contadores e acumuladores
qntpesazuis=0; qntpesaltu1=0; qntpesmais50=0; qntpesruivas=0; totalidade=0; mediaazul=0; mediap1=0;
// leitura e processamento dos dados
i=1;
while(i<=20) // estrutura de repetição condicional
{
cout<<("digite a idade da pessoa ");
cin>>idade;
cout<<("digite a altura da pessoa");
cin>>altura;
cout<<("digite o peso");
cin>>peso;
cout<<"informe cor dos olhos ,Para 1-Azul ,2-preto,3-verde,4-castanho";
cin>>cor_dos_olhos;
cout<<"informe cor dos cabelos para 1-Preto ,2-castanho ,3-louro ,4-ruivo";
cin>>cor_dos_cabelos;
{
if (idade>50 && peso<60);
}
qntpesmais50=qntpesmais50+1;
{
if(altura<1.5);
qntpesaltu1=qntpesaltu1+1;
totalidade=totalidade+idade;
}
if (cor_dos_olhos == 1);
qntpesazuis=qntpesazuis+1;
if (cor_dos_cabelos==4 && cor_dos_olhos!=1);
qntpesruivas=qntpesruivas+1;
i=i+1; // ou simplesmente i++;
}
mediaazul=(qntpesazuis/20)*100;
mediap1=totalidade/qntpesaltu1;
// saida das informacaoes
cout<<("\n quantidade de pessoas com idade superior a 50 anos e peso inferior a 60 quilos")<<qntpesmais50;
cout<<("\n média das idades das pessoas com altura inferior a 1,5 metro")<<mediap1;
cout<<("\n percentagem de pessoas com olhos azuis entre todas as pessoas analisadas")<<mediaazul;
cout<<("\n tidade de pessoas ruivas e que não possuem olhos azuis")<<qntpesruivas;
cout << endl;
return 0;
}
