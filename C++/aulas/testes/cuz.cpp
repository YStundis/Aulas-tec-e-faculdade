#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	char letra[30];
	
	cout<<"Qual é a tua letra preferida? ";
	cin>>letra;
	
	cout<<"Letra escolhida: "<<letra;
}
