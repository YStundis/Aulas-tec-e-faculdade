/*Faça um programa que desconte 30% do salário do funcionário*/
	
	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,saln;
		cout<<"Digite seu salário:";
		cin>>sal;
		saln=sal-sal*0.30;
		cout<<"\nSeu novo salário é:"<<saln;
		
	}
		
