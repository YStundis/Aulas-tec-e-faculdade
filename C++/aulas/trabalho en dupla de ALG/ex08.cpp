#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int vezes;
	float media, soma, n;
	
	cout<<"Digite quantos números você vai digitar: ";
	cin>>vezes;
	
	for(int i = 1; i <= vezes; i++){
		cout<<endl<<"Digite um número: ";
		cin >> n;
		soma = soma + n;
	}
	cout<<endl<<"A soma dos números digitados é "<<soma;
	cout<<endl<<"Foram digitado(s) "<<vezes<<" número(s).";
	media = soma/vezes;
	cout<<endl<<"A media entre os numeros digitado é "<<media;
}
