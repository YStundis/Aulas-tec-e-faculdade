/**/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale (LC_ALL,"portuguese");
 	
 	int n;
 	
 	cout<<"digite um numero:";
	cin>>n;
	if(n%2==0){
		cout<<"o numero digitado e PAR";
	}
	else{
		cout<<"o numero digitado e impar";
	}
}

