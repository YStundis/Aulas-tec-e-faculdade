/*Construa um algoritmo para ler um n�mero e mostrar uma mensagem dizendo se o n�mero lido est� 
entre 20 e 100 ou uma mensagem para caso o n�mero n�o esteja nessa faixa*/

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
 
