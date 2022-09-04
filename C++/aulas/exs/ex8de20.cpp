/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,a,b;
 	
 	cout<<"digite seu salario:";
 	cin>>sal;
 	if(sal<=300){
 		a=sal*0.35+sal;
 		cout<<"seu salario com o aumento e:"<<a;
	 }
	 if(sal>=300){
	 	b=sal*0.15+sal;
	 	cout<<"seu salario com aumento e:"<<b;
	 }
}


