/*fa�a um programa que receba o sal�rio de um funcion�rio.Calcule e mostre o novo sal�rio sabendo que ele teve um aumento de 25%.*/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,saln;
		cout<<"Digite seu sal�rio:";
		cin>>sal;
		saln=sal*0.25+sal;
		cout<<"\nSeu novo sal�rio �:"<<saln;
		
	}
	
