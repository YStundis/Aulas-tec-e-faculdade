/**/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float idade;
		
		cout<<"Digite a sua idade";
		cin>>idade;
		cout<<"\n Tá perdendo tempo estudando nessa escola, olha sua idade"<<idade;
		cout<<"anos";
	}
		
