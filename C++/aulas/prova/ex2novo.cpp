#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

int numero,soma=0,quantidade,maior=0,auxiliar,menor=9999999999,media,soma_pares,media_pares,quantidade_pares,quantida,i,aa,impar,por;

cout<<"\nEste programa tem o objetivo de escontrar:";
cout<<"\nA soma dos n�meros digitados.";
cout<<"\nA quantidade de n�meros digitados.";
cout<<"\nA m�dia dos n�meros digitados.";
cout<<"\nO maior n�mero digitado.";
cout<<"\nO menor n�mero digitado.";
cout<<"\nA m�dia dos n�meros pares.";
 cout<<"\ndigite quantos numeros q vc vai digitar:";
 cin>>aa;
 for(i=1;i<=aa;i++){
  cout<<"\nPor favor, digite um n�mero para que sejam feitos os c�lculos a cima: ";
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
cout<<"\nA soma dos n�meros digitados �:"<<soma<<".";
cout<<"\nA quantidade de n�meros digitados �:"<<quantidade<<".";
cout<<"\nA m�dia dos n�meros digitados �:"<<media<<".";
cout<<"\nO maior n�mero digitado �:"<<maior<<".";
cout<<"\nO menor n�mero digitado �:"<<menor<<".";
cout<<"\nA m�dia dos n�meros pares �:"<<media_pares<<".";
cout<<"\nA porcentagen dos numeros impares digitados �:"<<por<<".";


}
