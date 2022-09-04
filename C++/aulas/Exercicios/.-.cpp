/**/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	int a,b,c;
	
    cout<<"digite um numero :";
    cin>>a;
    
    if(a>0){
    	cout<<"\npositivo: "<<a;
    	c=a*2;
    	cout<<"\no dobro desse numero é:"<<c;
	}
	
	else if(a == 0){
		cout<<endl<<"Número nulo.";
	}
	
	else{
		cout<<"\nnegativo: "<<a;
		c=a*3;
		cout<<"\no triplo desse numero é:"<<c;
	}

}
	
	
