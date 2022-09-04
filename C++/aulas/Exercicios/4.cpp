/**/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	int a,b,c;
	
	cout<<"digite um numero:";
	cin>>a;
	cout<<"digite outro numero:";
	cin>>b;
	
	if(a == b){
		c = a + b;
	}
	else{
		c = a * b;
	}
	
	cout<<"o resultado:"<<c;
}
	
	
