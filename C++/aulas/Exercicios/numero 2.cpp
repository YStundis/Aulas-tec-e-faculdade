/*Fa�a um programa que desconte 30% do sal�rio do funcion�rio*/
	
	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,saln;
		cout<<"Digite seu sal�rio:";
		cin>>sal;
		saln=sal-sal*0.30;
		cout<<"\nSeu novo sal�rio �:"<<saln;
		
	}
		
