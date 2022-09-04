/**/

#include<iostream>
#include<locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL,"portuguese");

	int a,b;
	
	
	cout<<"digite um numero:";
	cin>>a;
	
	if(a % 2 == 0){
		b=a+5;
		cout<<"esse numero é par:"<<a<<"+5="<<b;
	}
	else{
		b=a+8;
			cout<<"esse numero é impar:"<<a<<"+8="<<b;
	}
}
	
	
