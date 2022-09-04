/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i,n;
 	
 	cout<<"digite o numero q vc quer ver a tabuada:";
 	cin>>n;
 	
 	for(i=1;i<=10;i++){
 	    cout<<"\n"<<n<<"*"<<i<<"="<<i*n;
	 }	
 } 
