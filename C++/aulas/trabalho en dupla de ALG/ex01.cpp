#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int n, soma;
	
	for(int i = 1; i <= 100; i++){
		cout<<"Digite um número: ";
		cin>>n;
		soma = soma + n;
	}
	
	cout<<"A soma de todos os números: "<<soma;
}
