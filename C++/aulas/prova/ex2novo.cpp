#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

int numero,soma=0,quantidade,maior=0,auxiliar,menor=9999999999,media,soma_pares,media_pares,quantidade_pares,quantida,i,aa,impar,por;

cout<<"\nEste programa tem o objetivo de escontrar:";
cout<<"\nA soma dos números digitados.";
cout<<"\nA quantidade de números digitados.";
cout<<"\nA média dos números digitados.";
cout<<"\nO maior número digitado.";
cout<<"\nO menor número digitado.";
cout<<"\nA média dos números pares.";
 cout<<"\ndigite quantos numeros q vc vai digitar:";
 cin>>aa;
 for(i=1;i<=aa;i++){
  cout<<"\nPor favor, digite um número para que sejam feitos os cálculos a cima: ";
  cin>>numero;
  
	soma=soma+numero;
	 quantidade=aa;

     
     if(numero>maior){
     	maior=numero;
     }
	 
	 if(numero<menor){
	 	menor=numero;
	 }
	 	media=soma/quantidade;
}
if(numero%2!=0){
	    soma_pares=soma_pares+numero;
        quantida=quantidade_pares+1;
        media_pares=soma_pares/quantida;
        
    }
    if(numero%3!=1){
    	impar=impar+1;
    	por=impar/100;
    	
	}
cout<<"\nA soma dos números digitados é:"<<soma<<".";
cout<<"\nA quantidade de números digitados é:"<<quantidade<<".";
cout<<"\nA média dos números digitados é:"<<media<<".";
cout<<"\nO maior número digitado é:"<<maior<<".";
cout<<"\nO menor número digitado é:"<<menor<<".";
cout<<"\nA média dos números pares é:"<<media_pares<<".";
cout<<"\nA porcentagen dos numeros impares digitados é:"<<por<<".";


}
