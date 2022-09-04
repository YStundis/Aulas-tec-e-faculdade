/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	 cout<<"\ncategorias           situaçao";
	 cout<<"\n1=limpeza               R=1=alimentos que nessecitam de refrigeraçao";
	 cout<<"\n2=alimentaçao           N=2=alimentos que nao nesse sitam de refrigeraçao";
 	 cout<<"\n3=vestuario";
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float ca,si,p,aum,im,ps,pn;
 	
 	cout<<"\ndigite o preço do droduto:";
	cin>>p;
		if(p<=25){
		cout<<"\ndigite a categoria do produto de acordo com a tabela acima:";
		cin>>ca;
		 if(ca==1){
		 	aum=p*0.05;
		 	cout<<"\nvai ter um aumento de:"<<aum;
		 }
		 if(ca==2){
		 	aum=p*0.08;
		 	cout<<"\nvai ter um aumento:"<<aum;
	}
		 }
		 if(ca==3){
		 	aum=p*0.10;
		 	cout<<"\nvai ter um aumento:"<<aum;
		 }
	if(p>=26){
		cout<<"\ndigite a categoria do produto de acordo com a tabela acima:";
		cin>>ca;
		 if(ca==1){
		 	aum=p*0.12;
		 	cout<<"\nvai ter um aumento:"<<aum;
		 }
		 if(ca==2){
		 	aum=p*0.15;
		 	cout<<"\nvai ter um aumento:"<<aum;
		 }
		 if(ca==3){
		 	aum=p*0.18;
		 	cout<<"\nvai ter um aumento:"<<aum;
		 }
    }
    cout<<"\ndigite a situaçao do produto como na tabela 1 para R 2 para N:";
	cin>>si;
	if((ca==1)||(ca==3)){
		im=p*0.08;
		cout<<"\nvc vai pagar de imposto:"<<im;
	}
	if(si==2){
		ps=p*0.08;
		cout<<"\nvc vai pagar de imposto:"<<ps;
	}
	if((ca==2)||(si==1)){
		im=aum*0.05;
		cout<<"\nvai pagar de imposto:"<<im;
	}
     pn=p+aum-im;
	cout<<"\no novo preço e:"<<pn;
	if(pn<=50){
		cout<<"\nBARATO";
    }
	if((pn>=50)&&(pn<=120)){
		cout<<"\nNORMAL";
	}
	if(pn>=120){
		cout<<"\nCARO";
	}
}
	
