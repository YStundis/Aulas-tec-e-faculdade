/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float cod,quan,pu,pn,vd,pf;
 	
 	cout<<"digite o codigo do produto:";
	cin>>cod;
	if((cod>=1)&&(cod<=10)){
		cout<<"\ndigite a quantidade comprado do produto:";
		cin>>quan;
		pu=10;
		cout<<"\no preço unitario sem o desconto e:"<<pu;
		pn=10*quan;
		cout<<"\no preço total da nota sem desconto e:"<<pn;
		 if(pn<=250){
		 	vd=pn*0.05;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		  if((pn>=251)&&(pn<=500)){
		 	vd=pn*0.10;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		 if(pn>=501){
		 	vd=pn*0.15;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
	}
	if((cod>=11)&&(cod<=20)){
		cout<<"\ndigite a quantidade comprado do produto:";
		cin>>quan;
		pu=15;
		cout<<"\no preço unitario sem o desconto e:"<<pu;
		pn=15*quan;
		cout<<"\no preço total da nota sem desconto e:"<<pn;
		 if(pn<=250){
		 	vd=pn*0.05;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		  if((pn>=251)&&(pn<=500)){
		 	vd=pn*0.10;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		 if(pn>=501){
		 	vd=pn*0.15;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
	}
	if((cod>=21)&&(cod<=30)){
		cout<<"\ndigite a quantidade comprado do produto:";
		cin>>quan;
		pu=20;
		cout<<"\no preço unitario sem o desconto e:"<<pu;
		pn=20*quan;
		cout<<"\no preço total da nota sem desconto e:"<<pn;
		 if(pn<=250){
		 	vd=pn*0.05;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		  if((pn>=251)&&(pn<=500)){
		 	vd=pn*0.10;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		 if(pn>=501){
		 	vd=pn*0.15;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
	}
	if((cod>=31)&&(cod<=40)){
		cout<<"\ndigite a quantidade comprado do produto:";
		cin>>quan;
		pu=30;
		cout<<"\no preço unitario sem o desconto e:"<<pu;
		pn=30*quan;
		cout<<"\no preço total da nota sem desconto e:"<<pn;
		 if(pn<=250){
		 	vd=pn*0.05;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		  if((pn>=251)&&(pn<=500)){
		 	vd=pn*0.10;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
		 if(pn>=501){
		 	vd=pn*0.15;
		 	cout<<"\nseu desconto e:"<<vd;
		 	pf=pn-vd;
		 	cout<<"\no valor total a pagar e:"<<pf;
		}
	}	
}
