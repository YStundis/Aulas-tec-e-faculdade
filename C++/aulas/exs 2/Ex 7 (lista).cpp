/*Efetuar a leitura de 3 n�meros inteiros apresent� los em ordem crescente. Utilize
uma sele��o encadeada.*/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	float a, b, c;
 	cout<<"Digite o primeiro n�mero.";
 	cin>>a;
 	cout<<"Digite o segundo n�mero.";
 	cin>>b;
 	cout<<"Digite o terceiro n�mero.";
 	cin>>c;
 	if ((a<b)&&(b<c)) {
	 cout<<"Os n�meros em ordem crescente s�o:"<<a<<" "<<b<<" "<<c;
	 }
	if ((a>b)&&(b>c)) {
	 cout<<"Os n�meros em ordem crescente s�o:"<<c<<" "<<b<<" "<<a;
	 }
}
 	
