/*tabuadas*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i=0;
 	
 	for(i=0;i<=10;i++){
 		cout<<"\n1*"<<i<<"="<<i*1;
 		cout<<"\n2*"<<i<<"="<<i*2;
 		cout<<"\n3*"<<i<<"="<<i*3;
 		cout<<"\n4*"<<i<<"="<<i*4;
 		cout<<"\n5*"<<i<<"="<<i*5;
 		cout<<"\n6*"<<i<<"="<<i*6;
 		cout<<"\n7*"<<i<<"="<<i*7;
 		cout<<"\n8*"<<i<<"="<<i*8;
 		cout<<"\n9*"<<i<<"="<<i*9;
 		cout<<"\n10*"<<i<<"="<<i*10;
	 }	
 } 
