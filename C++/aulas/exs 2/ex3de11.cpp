/*Construa um algoritmo para ler o sexo de uma pessoa (M ou F). 
Uma mensagem dever� ser emitida caso o sexo seja v�lido.*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	char S;
 	
 	cout<<"digite seu sexo:";
 	cin>>S;
 	if(S=='M'){
 		cout<<"voce e masculino";
	 }
	if(S=='F'){
		cout<<"voce e feminino";
	 }
}

