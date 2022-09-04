/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float pp,npp;
 	
 	cout<<"digite o preço do produto:";
 	cin>>pp;
	    if(pp<=50){
		npp=pp*0.05+pp;
		cout<<"o novo preço desse produto sera:"<<npp;
	}
		if((pp>=50)&&(pp<=100)){
		npp=pp*0.10+pp;
		cout<<"o novo preço desse produto sera:"<<npp;
	}
		if(pp>=100){
		npp=pp*0.15+pp;
		cout<<"o novo preço desse produto sera:"<<npp;
	}
	if(npp<=80){
		cout<<"\nesse produto e BARATO";
	}
	if((npp>=80)&&(npp<=120)){
		cout<<"\nesse produto e NORMAL";
	}
	if((npp>=120)&&(npp<=200)){
		cout<<"\nesse produto e CARO";
	}
	if(npp>=200){
		cout<<"\nesse produto e MUITO CARO";
	}
}

