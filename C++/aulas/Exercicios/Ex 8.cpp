/*Faça um programa que receba o valor de um depósito e o valor da taxa de juros, 
calcule e mostre o valor do rendimento e o valor total depois do redimento.*/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float valordod, juros, rendimento, dr;
		
		cout<<"digite o valor do depósito";
		cin>>valordod;
		cout<<"digite o valor do juros";
		cin>>juros;
		rendimento=(valordod*(juros/100));
		cout<<"o valor do rendimento é:"<<rendimento;
		dr=(valordod+rendimento);
		cout<<"o valor depois do rendimento é:"<<dr;
	}
		
