/*??????????????*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	  int c,gp=0,pp=9999999999999,gc,pc,i,p,a;
     
       for(i=0;i<3;i++){
       	
       	cout<<"\ndigite o  seu numero:  ";
       	cin>>c;
       	cout<<"\ndigite o seu peso:   ";
       	cin>>p;
       	if(p>gp){
       		gp=p;
       		gc=c;
		 }
       	if(p<pp){
       		pp=p;
       		pc=c;
		   }
       }
       cout<<"\na maior pessoa possui o numero:  "<<gc<<".  E pesa "<<gp<<"kg.";
       cout<<"\na menor pessoa possui o numero:  "<<pc<<".  E pesa "<<pp<<"kg.";
       
       
       cout<<"\nvamos fazer uma tabuada agora";
       
       cout<<"\ndigite o numero q vc quer a tabuada:";
 	   cin>>a;
 	    for(i=0;i<=10;i++){
 		cout<<"\n"<<a<<"x"<<i<<"="<<i*a;
	 }	
   }
   
