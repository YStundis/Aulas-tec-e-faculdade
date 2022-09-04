/*Construa um algoritmo para ler um número e mostrar uma mensagem dizendo se o número lido está 
entre 20 e 100 ou uma mensagem para caso o número não esteja nessa faixa*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float a;
 	
 	cout<<"digite um numero:";
 	cin>>a;
 	if((a>=20)&&(a<=100)){
 		cout<<"esse numero esta entre os numeros 20 e 100";
	 }
	else{
		cout<<"esse numero nao esta emtre 20 e 100";
	}
 }
 
