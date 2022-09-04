/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float a,b,c; 
 	
 	cout<<"digite um numero:";
 	cin>>a;
 	cout<<"digite outro numero:";
 	cin>>b;
 	cout<<"digite outro numero novamente:";
 	cin>>c;
 	if((a>b)&&(a>c)){
 		cout<<"o numero maior e:"<<a;
	 }
	if((b>c)&&(b>a)){
		cout<<"o numero maior e:"<<b;
	}
	if((c>b)&&(c>a)){
		cout<<"o numero maior e:"<<c;
	}
}

