/*receba a b c a.b=?=-c*/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	float a,b,c,d;
	
	cout<<"digite um numero:";
	cin>>a;
	cout<<"\ndigite outro numero:";
	cin>>b;
	cout<<"\ndigite mais um numero:";
    cin>>c;
    
	d=a+b;
	
	if(d<c){
		cout<<"a="<<a;
		cout<<"b="<<b;
		cout<<"c="<<c;
		cout<<"a+b="<<d;
	}
	
	
}

