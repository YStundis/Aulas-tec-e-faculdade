/*elabore um programa que receba o codigo de origem de um produto e escreva a sua procedencia.A procedencia obedece a seguimte tebela*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float cod;
 	
 	cout<<"digite o codigo do produto:";
 	cin>>cod;
 	  if(cod==1){
 		cout<<"a procedencia desse produto é sul";
	}
	  if(cod==2){
	 	cout<<"a procedencia desse produto é norte";
	}
 	  if(cod==3){
 	 	cout<<"a procedencia desse produto é leste";
	}
	  if(cod==4){
	  	cout<<"a procedencia desse produto é oeste";
	}
	  if((cod==5)||(cod==6)){
	  	cout<<"a procedencia desse protuto é nordeste";
	}
	  if((cod==7)||(cod==9)){
	  	cout<<"a procedencia desse produto é sudeste";
	}
	  if((cod==10)||(cod==20)){
	  	cout<<"a procedencia desse produto é centro-este";
	}	
	  if((cod==21)||(cod==30)){
	  	cout<<"a procedencia desse produto é nordeste";
	}
	if(cod<=0){
	  	cout<<"esse produto não tem procedencia";
	}
	  if(cod>=31){
	  	cout<<"esse produto não tem procedencia";
	}
 }

