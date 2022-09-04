/*	mu + p
	ho + h
	
	m de id
*/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");
	
	int i,altura=0,peso=0;
	float a,s,id,pes,h,al;
	
	cout<<"não use:,.; nada disso e nenhum caracter especial";
	
	cout<<"\ndigite quantos atletas vc vai digitar:";
	cin>>a;
	
	for(i=1;i<=a;i++){
	cout<<"digite seu sexo 1 para homen 2 para mulher:";
	cin>>s;
	cout<<"\ndigite sua idade:";
	cin>>id;
	cout<<"\ndigite seu peso:";
	cin>>pes;
	cout<<"\ndigite sua altura:";
	cin>>h;	
	 
	 if(s=1){
	 	if(h>altura){
	 		altura=h;
		 }
	 	
	 }
	 if(s=2){
	 	if(pes>peso){
	 		peso=pes;
		 }
	 }
	
	
}
   cout<<"o homen mais alto é tem a altura:"<<altura;
   cout<<"a mulher mais pesada tem o peso:"<<peso;
   
}















