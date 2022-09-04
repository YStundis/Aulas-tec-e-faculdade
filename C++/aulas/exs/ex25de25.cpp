/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float f,e,h;
 	
 	cout<<"\ndigite o numero de horas extras:";
	cin>>e;
	cout<<"\ndigite quantas horas de falta:";
	cin>>f;
	h=e-2/3*f;
	cout<<"h="<<h;
	if(h>=2400){
		cout<<"\ngratificaçao de:"<<500;
	}
	if((h>=1800)&&(h<=2399)){
	    cout<<"\ngratificaçao de:"<<400;
	}
	if((h>=1200)&&(h<=1800)){
		cout<<"\ngratificaçao de:"<<300;
	}
	if((h>=600)&&(h<=1199)){
		cout<<"\ngratificaçao de:"<<200;
	}
	if(h<=600){
		cout<<"\ngratificaçao de:"<<100;
	}
}

