/**/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,aum,saln;
		
		cout<<"digite seu salario";
		cin>>sal;
		cout<<"digite o aumento em porcentagem";
		cin>>aum;
		saln=(aum/100*sal)+sal;
		cout<<"o seu salario com o aumento de"<<aum<<"% é"<<saln;
	}
	
