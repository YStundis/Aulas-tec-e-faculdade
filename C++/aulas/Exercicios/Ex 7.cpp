/**/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float salario, imposto, total, gratificacao;
		
		cout<<"Digite o sal�rio:";
		cin>>salario;
		imposto=(salario*0.07);
		gratificacao=(salario*0.05);
		total=(salario-imposto+gratificacao);
		cout<<"O sal�rio a ser recebido �:"<<total;	
	}
	
	
	
