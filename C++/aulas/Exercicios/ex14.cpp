/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,a,b; 
 	
 	cout<<"digite seu salario:";
 	cin>>sal;
 	if(sal<=1000){
 		a=sal*0.50+sal;
 		cout<<"seu salario é:"<<a;
	 }
	if(sal>=1000){
	 	b=sal*0.20+sal;
	 	cout<<"seu salario é:"<<b;
	 }
 }
 
