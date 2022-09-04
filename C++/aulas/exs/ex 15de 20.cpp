/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
	float ti,val,valc;
	
	cout<<"digite o tipo do investimento:";
	cin>>ti;
	cout<<"digite o valor do investimento:";
	cin>>val;
	 if(ti==1){
	 valc=val+val*0.03;
	 cout<<"poupança";
	 cout<<"o valor corrigido e:"<<valc;
    }
     if(ti==2){
	 valc=val+val*0.04;
	 cout<<"fundos de renda fixa";
     cout<<"o valor corrigido e:"<<valc;
    }
}

