/*Faça um algoritmo que leia o ano de nascimento de uma pessoa, calcule e mostre
sua idade e, também, verifique e mostre se ela já tem idade para votar (16 anos ou
mais) e para conseguir a C.N.H (18 anos ou mais).
*/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale (LC_ALL,"portuguese");
 	
 	float nas,id;
 	
 	cout<<"digite em que ano vc nasceu:";
 	cin>>nas;
 	id=2018-nas;
 	cout<<"vc tem ou vai vaser:"<<id;
 	if(id>=16){
 		cout<<"\nvoce ja pode votar";
	 }
	if(id>=18){
		cout<<"\nvoce ja pode comseguir o C.N.H";
	}
 }
 
