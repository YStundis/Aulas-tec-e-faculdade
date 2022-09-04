/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i,e,n;
 	
    for(i=0;i<=10;i++){
 	   cout<<"digite um numero:";
 	   cin>>n;
	 }	
	 e=90-30;
	 cout<<"a quantidade de numeros entre 30 e 90 e:"<<e;
 }
