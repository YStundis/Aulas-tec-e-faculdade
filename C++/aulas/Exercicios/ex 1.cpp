/*Fa�a um algoritimo que verifique se o usuario � maior ou menor de idade*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float ida;
 	
 	cout<<"digite sua iade:";
 	cin>>ida;
 	if(ida>=18){
 		cout<<"voce � maior de idade";
	 }
	 else {
	 cout<<"voce � menor de idade";
	 }
 }
 
