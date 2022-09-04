/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
	float id;
	
	cout<<"digite sua idade:";
	cin>>id;
	if(id<=18){
		cout<<"vc e menor de idade";
	}
	if(id>=19){
		cout<<"vc e maior de idade";
	}
}

