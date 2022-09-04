/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float a,b;
 	
 	cout<<"digite um numero:";
 	cin>>a;
 	cout<<"digite outro numero:";
 	cin>>b;
 	if(a<b){
 		cout<<"o numero menor e:"<<a;
	 }
	else{
		cout<<"o numero menor e:"<<b;
	}
}

