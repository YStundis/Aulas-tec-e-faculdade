/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,saln;
 	
 	cout<<"digite o seu salario:";
 	cin>>sal;
 	saln=sal*0.30+sal;
 	cout<<"seu salario com aumento de 30% e:"<<saln;
 }
 
