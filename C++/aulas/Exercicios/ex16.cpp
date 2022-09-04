/*Faça um programa que classifique a categoria de um nadador comforme a tabela abaixo:
            IDADE     | CATEGORIA
			1-5 anos  | infantil a
			6-10 anos | infantil b
			11-17 anos| juvenil
		    18-21 anos| senior
			>22 anos  | pleno                   
*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float id; 
 	
 	cout<<"digite sua idade:";
 	cin>>id;
 	
 	if((id>=1)&&(id<=5)){
 		cout<<"sua categoria é infantil a";
	 }
	if((id>=6)&&(id<=10)){
		cout<<"sua categoria é infaltil b";
	}
	if((id>=11)&&(id<=17)){
		cout<<"sua categoria é juvenil";
	}
	if((id>=18)&&(id<=21)){
		cout<<"sua categoria é senior";
	}
	if(id>=22){
		cout<<"sua categoria é pleno";
	}
}

