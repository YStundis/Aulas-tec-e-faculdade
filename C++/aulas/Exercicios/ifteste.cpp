/**/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	float a;
	
	cout<<"digite um numero:";
	cin>>a;
	
	if(a<=10){
		cout<<"vc digitou um numero menor q 10 no caso:"<<a;
	}
	if(a>=10){
		cout<<"vc digitou um numero maior q 10 no caso:"<<a;
	}
}

