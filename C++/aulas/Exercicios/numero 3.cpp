/*Faça um program que receba o salário de um funcionário e percentual de aumento.Calcule e mostre o valor do aumento e o novo salário.*/

    #include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,aum,saln;
		cout<<"Digite seu salário:";
		cin>>sal;
		cout<<"DIgite o aumento de porcentagem";
		cin>>aum;
		saln=(aum/100*sal)+sal;
		cout<<"O seu salário com o aumento de"<<aum<<"% é"<<saln;
		
	}
