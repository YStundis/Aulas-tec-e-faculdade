/*faça um programa que verifique e mostre os numeros entre 1000 e 2000(inclusive)que, quando divididos por 11,produzam resto igual a 5.*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
 	int i,a; 
 	
     for(i=1000;i<=2000;i++){
 	     a=i%11;
 	     if(a==5){
 	     	cout<<"\n"<<i;
		  }
	 }	
 }
 
