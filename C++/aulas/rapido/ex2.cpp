/*  soma, quantidade, media,pares,inpares,
 
o maior, o menor

 */

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");
	
	int i,n,ma=0,me=999999999;
	float a,s,m,p,in,x;
	
	cout<<"digite quantos numeros vc vai digitar:";
	cin>>a;
	
	for(i=1;i<=a;i++){
		
		cout<<"\ndigite o numero:";
		cin>>n;
		if(n<me){
			me=n;
		}
		if(n>ma){
			ma=n;
		}
	   
		}
			cout<<"\no maior numero é:"<<ma;
	        cout<<"\no menor numero é:"<<me;
	}

	
