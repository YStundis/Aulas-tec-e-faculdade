/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float pf,pd,pi,pfi;
 	
 	cout<<"digite o peço de fabrica do veiculo:";
 	cin>>pf;
 	if(pf<=12000){
 		cout<<"digite a porcentegem do distribuidor:";
 		cin>>pd;
 		cout<<"digite a porcentagem do imposto:";
 		cin>>pi;
 		pd=pf*(pd/100);
 		pi=pf*(pi/100);
 		pfi=(pf+pd+pi);
 		cout<<"o valor total a pagar e:"<<pfi;
	 }
	if((pf>=12000)&&(pf<=25000)){
		cout<<"digite a porcentegem do distribuidor:";
 		cin>>pd;
 		cout<<"digite a porcentagem do imposto:";
 		cin>>pi;
 		pd=pf*(pd/100);
 		pi=pf*(pi/100);
 		pfi=(pf+pd+pi);
 		cout<<"o valor total a pagar e:"<<pfi;
	 }
    if(pf>=25000){
    	cout<<"digite a porcentegem do distribuidor:";
 		cin>>pd;
 		cout<<"digite a porcentagem do imposto:";
 		cin>>pi;
 		pd=pf*(pd/100);
 		pi=pf*(pi/100);
 		pfi=(pf+pd+pi);
 		cout<<"o valor total a pagar e:"<<pfi;
	}
}

