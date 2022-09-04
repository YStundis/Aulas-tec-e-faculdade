#include <iostream>
#include <locale.h>
using namespace std;

//Faça um programa que receba 6 números inteiros e mostre:
//	Os números pares digitados;
//	A soma dos números pares digitados;
// 	Os números ímpares digitados;
//	e a quantidade de números ímpares digitados.

int main(){
	setlocale(LC_ALL, "Portuguese");
	int quant, arr[6], soma = 0;
	
	for(int i = 0; i < 6; i++){
		cout << "Digite um número inteiro: ";
		cin >> arr[i];
		if(arr[i] % 2 == 0){
			soma = soma + arr[i];
			cout<<arr[i]<<" é par."<<endl;
		}
		else{
			quant++;
			cout<<arr[i]<<" é ímpar."<<endl;
		}
	}
	
	cout<<endl<<"A soma dos números pares digitados: "<<soma<<endl;
	cout<<"A quantidade de números ímpares digitados: "<<quant<<endl;
}
