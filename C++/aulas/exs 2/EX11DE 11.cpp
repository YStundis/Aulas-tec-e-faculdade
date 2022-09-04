/**/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale (LC_ALL,"portuguese");
 	
 	cout<<"digite 1 para sim e 2 para nao";
 	
 	float rm,rq,rc,rh,rb,ro,rf,rv,raq,rav,rp,rov,rr,rrp,rpa;
 	
 cout<<"\npense em um animal";
 	cout<<"\nele e mamifaro?";
 	cin>>rm;
 	cout<<"ele e quadrupede?";
 	cin>>rq;
 	cout<<"ele e carnivoro?";
 	cin>>rc;
 	cout<<"ele e herbivoro?";
 	cin>>rh;
 	cout<<"ele e bipede?";
 	cin>>rb;
 	cout<<"ele e onivoro?";
 	cin>>ro;
 	cout<<"ele e frutivoros?";
 	cin>>rf;
 	cout<<"ele e um voador?";
 	cin>>rv;
 	cout<<"ele e aquatico?";
 	cin>>raq;
 	cout<<"ele e uma ave?";
 	cin>>rav;
 	cout<<"ele e polar?";
 	cin>>rp;
 	cout<<"ele e oviparo?";
 	cin>>rov;
 	cout<<"ele e de rapina?";
 	cin>>rr;
 	cout<<"ele e um reptio?";
 	cin>>rrp;
 	cout<<"ele nao tem patas?";
 	cin>>rpa; 	
 	 if((rm==1)&&(rq==1)&&(rc==1)){
 		cout<<"e o LEAO";
	 }
	 if((rm==1)&&(rq==1)&&(rh==1)){
	 	cout<<"e o CAVALO";
	 }
	 if((rm==1)&&(rb==1)&&(ro==1)){
	 	cout<<" e o HOMEN";
	 }
	 if((rm==1)&&(rb==1)&&(rf==1)){
	 	cout<<"e o MACACO";
	 }
	 if((rm==1)&&(rv==1)){
	 	cout<<"e o MORCEGO";
	 }
	 if((rm==1)&&(raq==1)){
	 	cout<<"e a BALEIA";
	 }
	 if((rv==2)&&(rav==1)&&(rb==1)&&(ro==1)&&(rov==1)){
	 	cout<<"e o AVESTRUZ";
	 }
	 if((rp==1)&&(rc==1)&&(rb==1)){
	 	cout<<"e o PINGUIM";
	 }
	 if((rav==1)&&(rov==1)){
	 	cout<<"e o PATO";
	 }
	 if((rav==1)&&(rr==1)){
	 	cout<<"e a AGUIA";
	 }	 
	 if((rrp==1)&&(rov==1)&&(rq==1)){
	 	cout<<"e a TARTARUGA";
	 }
	 if((rrp==1)&&(rc==1)&&(rq==1)){
	 	cout<<"e o CROCODILO";
	 }
	 if((rrp==1)&&(rpa==1)){
	 	cout<<"e a COBRA";
	 }
}

