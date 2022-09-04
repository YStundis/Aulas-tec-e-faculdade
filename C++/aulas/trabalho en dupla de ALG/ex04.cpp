#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int ini, fin, soma;
	
	cout<<"Digite o valor inicial: ";
	cin>>ini;
	cout<<"Digite o valor final: ";
	cin>>fin;
	
	for(int i = ini; i <= fin; i++){
		soma = soma + i;
	}
	
	cout<<"A soma do intervalo: "<<soma;	
}
