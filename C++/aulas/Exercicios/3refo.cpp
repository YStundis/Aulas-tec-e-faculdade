/*3) Fa�a um algoritmo para receber um n�mero qualquer e informar na tela se � par ou �mpar.*/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	int a;
	
	cout<<"digite um numero:";
	cin>>a;
	
	if(a % 2 == 0){
		
		cout<<"esse numero � par:"<<a;
		
	}
	
	else {
		cout<<"esse numero � impar:"<<a;
	}
	
}
