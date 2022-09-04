/**/

	#include<iostream>
	#include<locale.h>
	
	using namespace std;
	
	int main (){
		
		setlocale (LC_ALL,"portuguese");
		
		float sal,saln;
		cout<<"digite seu salario:";
		cin>>sal;
		saln=sal-sal*0.30;
		cout<<"\n seu salario novo é:"<<saln;
}

	
