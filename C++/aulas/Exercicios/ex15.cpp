/*Elabore um programa que receba a altura e o sexo de uma pessoa ('F' para feminino e 'M' para masculino).
Calcule e escreva na tela o seu peso ideal, ultilizando as seguintes fórmulas: para homens (72.7*h)-58.
Para mulheres: (62.1*h)-44.7.*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	char S;
 	float M, F, H, R;
 	cout<<"Escreva seu sexo";
 	cin>>S;
 	if (S=='M'){
 		cout<<"Digite sua altura";
 		cin>>H;
 		R= (72.7*H)-58;
 		cout<<"Seu peso ideal é:"<<R;
	 }
	 if (S=='F'){
	 	cout<<"Digite sua altura";
	    cin>>H;
		R= (62.1*H)-44.7;
		cout<<"Seu peso ideal é:"<<R; 
	 }
 }
 
