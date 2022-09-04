/*tabuada*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i=0;
	 int a;
 	
 	cout<<"digite o numero q vc quer a tabuada:";
 	cin>>a;
 	for(i=0;i<=10;i++){
 		cout<<a<<"x"<<i<<"="<<i*a;
	 }	
 }
 
