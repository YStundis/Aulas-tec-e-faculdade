/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
	float pat,cod,pn;
	
	cout<<"digite o prço do produto:";
	cin>>pat;
	cout<<"digite o codigo do prduto:";
	cin>>cod;
		if(pat<=30){
		cout<<"Sem desconto";
	}
		if((pat>=30)&&(pat<=100)){
		pn=pat*0.10-pat;	
		cout<<"o novo preço e:"<<pn;
	}
		if(pat>=100){
		pn=pat*0.15-pat;	
		cout<<"o novo preço e:"<<pn;
	}
}
