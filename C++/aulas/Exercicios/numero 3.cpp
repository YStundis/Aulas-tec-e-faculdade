/*Fa�a um program que receba o sal�rio de um funcion�rio e percentual de aumento.Calcule e mostre o valor do aumento e o novo sal�rio.*/

    #include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,aum,saln;
		cout<<"Digite seu sal�rio:";
		cin>>sal;
		cout<<"DIgite o aumento de porcentagem";
		cin>>aum;
		saln=(aum/100*sal)+sal;
		cout<<"O seu sal�rio com o aumento de"<<aum<<"% �"<<saln;
		
	}
