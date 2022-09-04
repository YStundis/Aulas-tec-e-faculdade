/*3) Faça um algoritmo para receber um número qualquer e informar na tela se é par ou ímpar.*/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	int a;
	
	cout<<"digite um numero:";
	cin>>a;
	
	if(a % 2 == 0){
		
		cout<<"esse numero é par:"<<a;
		
	}
	
	else {
		cout<<"esse numero é impar:"<<a;
	}
	
}
