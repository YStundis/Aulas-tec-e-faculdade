/*Efetuar a leitura de 3 números inteiros apresentá los em ordem crescente. Utilize
uma seleção encadeada.*/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	float a, b, c;
 	cout<<"Digite o primeiro número.";
 	cin>>a;
 	cout<<"Digite o segundo número.";
 	cin>>b;
 	cout<<"Digite o terceiro número.";
 	cin>>c;
 	if ((a<b)&&(b<c)) {
	 cout<<"Os números em ordem crescente são:"<<a<<" "<<b<<" "<<c;
	 }
	if ((a>b)&&(b>c)) {
	 cout<<"Os números em ordem crescente são:"<<c<<" "<<b<<" "<<a;
	 }
}
 	
