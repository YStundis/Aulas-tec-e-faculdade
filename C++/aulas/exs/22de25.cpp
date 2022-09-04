/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float id,p;
 	
 	cout<<"digite sua idade:";
	cin>>id;
	cout<<"digite seu pesso:";
	cin>>p;
	if(id<=20){
      if(p<=60){
          cout<<"vc e do grupo 9"; }
		 if((p>=61)&&(p<=90)){
		 	cout<<"vc e do grupo 8"; }
			 if(p>=91){
			 	cout<<"vc e do grupo 7"; }
	}
	if((id>=21)&&(id<=50)){
      if(p<=60){
          cout<<"vc e do grupo 6"; }
		 if((p>=61)&&(p<=90)){
		 	cout<<"vc e do grupo 5"; }
			 if(p>=91){
			 	cout<<"vc e do grupo 4"; }
	}
	if(id>=51){
      if(p<=60){
          cout<<"vc e do grupo 3"; }
		 if((p>=61)&&(p<=90)){
		 	cout<<"vc e do grupo 2"; }
			 if(p>=91){
			 	cout<<"vc e do grupo 1"; }
	}
}

