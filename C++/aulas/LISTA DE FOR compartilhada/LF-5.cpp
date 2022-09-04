#include<iostream>
#include<locale.h>
#include<conio.h>

using namespace std;

main ()
{
 setlocale(LC_ALL,"Portuguese");
 float i,v,vt;
 char c;
 for(i=1;i<=15;i++){
 	cout<<"\nDigite seu nome:";
 	cin>>c;
 	cout<<"\nDigite o valor da sua compra no ano passado:";
 	cin>>v;
 	cout<<"\n";
 	if(v<1000){
 		vt=(0.10*v)+v;
 	cout<<"\nO total das compras com o bonus de 10%:"<<vt;
	 }
	if(v>=1000){
	vt=(0.15*v)+v;	
    cout<<"\nO total das compras com o bonus de 15%:"<<vt;       
		   }
 }
}

