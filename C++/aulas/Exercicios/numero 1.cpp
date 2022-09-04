/*faça um programa que receba o salário de um funcionário.Calcule e mostre o novo salário sabendo que ele teve um aumento de 25%.*/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,saln;
		cout<<"Digite seu salário:";
		cin>>sal;
		saln=sal*0.25+sal;
		cout<<"\nSeu novo salário é:"<<saln;
		
	}
	
