#include <iostream>
#include <locale.h>
using namespace std;

//Fa�a um programa que receba 6 n�meros inteiros e mostre:
//	Os n�meros pares digitados;
//	A soma dos n�meros pares digitados;
// 	Os n�meros �mpares digitados;
//	e a quantidade de n�meros �mpares digitados.

int main(){
	setlocale(LC_ALL, "Portuguese");
	int quant, arr[6], soma = 0;
	
	for(int i = 0; i < 6; i++){
		cout << "Digite um n�mero inteiro: ";
		cin >> arr[i];
		if(arr[i] % 2 == 0){
			soma = soma + arr[i];
			cout<<arr[i]<<" � par."<<endl;
		}
		else{
			quant++;
			cout<<arr[i]<<" � �mpar."<<endl;
		}
	}
	
	cout<<endl<<"A soma dos n�meros pares digitados: "<<soma<<endl;
	cout<<"A quantidade de n�meros �mpares digitados: "<<quant<<endl;
}
