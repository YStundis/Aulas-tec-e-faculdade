/*Faça um programa que calcule e mostre a area de um triangulo.
sabe-se que a area é base *altura /2.*/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float artri, base, altura;
		
		cout<<"Digite o valor da base";
		cin>>base;
		cout<<"\nDigite o valor da altura";
		cin>>altura;
		artri=(base*altura)/2;
		cout<<"\nO valor da área do triangulo é:"<<artri;
	}
		
