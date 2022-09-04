/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float id; 
 	
 	cout<<"digite sua idade:";
 	cin>>id;
 	
 	if((id>=5)&&(id<=7)){
 		cout<<"sua categoria é infantil ";
	 }
	if((id>=8)&&(id<=10)){
		cout<<"sua categoria é juvenil";
	}
	if((id>=11)&&(id<=15)){
		cout<<"sua categoria é adolecente";
	}
	if((id>=16)&&(id<=30)){
		cout<<"sua categoria é adulto";
	}
	if(id>=31){
		cout<<"sua categoria é senior";
	}
}
