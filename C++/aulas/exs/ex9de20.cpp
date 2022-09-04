/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	int sal,saln,aum; 
 	
 	cout<<"digite o seu salario medio:";
 	cin>>sal;
 	if(sal<=200){
 		aum=(sal*0.10);
 		cout<<"seu salario medio e:"<<sal;
 		cout<<"seu salario credito e:"<<aum;
	 }
    if((sal>200)&&(sal<=300)){
    	aum=(sal*0.20)+sal;
    	cout<<"seu saldo medio e:"<<sal;
    	cout<<"seu credito e:"<<aum;
	}
	if(sal>=400){
		aum=(sal*0.30)+sal;
		cout<<"seu saldo medio e:"<<sal;
		cout<<"seu credito e:"<<aum;
	}
 }
 
