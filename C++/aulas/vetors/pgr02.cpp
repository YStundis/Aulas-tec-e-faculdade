#include <iostream>
#include <locale.h>
using namespace std;

//Faça um programa que preencha um vetor com 10 números inteiros
//calcule e mostre o vetor resutlante, de uma ordenação decrescente

int main(){
	setlocale(LC_ALL, "Portuguese");
	int vet[10], aux;
	
	for(int i = 0; i < 10; i++){
		cout<<"Digite um número inteiro: ";
		cin>>vet[i];
	}
	
	for(int i = 0; i < 10; i++){
		for(int j = i+1; j < 10; j++){
			if(vet[i] < vet[j]){
				aux = vet[i];
				vet[i] = vet[j];
				vet[j] = aux;
			}
		}
	}
	
	for(int i = 0; i < 10; i++){
		cout<<endl<<vet[i];
    }
	
}
