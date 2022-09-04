/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	  int c,gp=0,pp=50000,gc,pc,s,p;
     
       for(s=0;s<3;s++){
       	
       	cout<<"digite o codigo do boi:  ";
       	cin>>c;
       	cout<<"digite o peso do boi:   ";
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
       cout<<"o maior boi possui o codigo:  "<<gc<<".  E pesa "<<gp<<"kg."<<endl;
       cout<<"o menor boi possui o codigo:  "<<pc<<".  E pesa "<<pp<<"kg."<<endl;
   }
   
