/*tabuadas*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i=0;
 	
 	for(i=0;i<=10;i++){
 		cout<<"1*"<<i<<"="<<i*1;
 		cout<<"2*"<<i<<"="<<i*2;
 		cout<<"3*"<<i<<"="<<i*3;
 		cout<<"4*"<<i<<"="<<i*4;
 		cout<<"5*"<<i<<"="<<i*5;
 		cout<<"6*"<<i<<"="<<i*6;
 		cout<<"7*"<<i<<"="<<i*7;
 		cout<<"8*"<<i<<"="<<i*8;
 		cout<<"9*"<<i<<"="<<i*9;
 		cout<<"10*"<<i<<"="<<i*10;
	 }	
 }
 	
