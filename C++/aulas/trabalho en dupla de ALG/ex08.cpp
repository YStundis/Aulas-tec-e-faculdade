#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int vezes;
	float media, soma, n;
	
	cout<<"Digite quantos n�meros voc� vai digitar: ";
	cin>>vezes;
	
	for(int i = 1; i <= vezes; i++){
		cout<<endl<<"Digite um n�mero: ";
		cin >> n;
		soma = soma + n;
	}
	cout<<endl<<"A soma dos n�meros digitados � "<<soma;
	cout<<endl<<"Foram digitado(s) "<<vezes<<" n�mero(s).";
	media = soma/vezes;
	cout<<endl<<"A media entre os numeros digitado � "<<media;
}
