/*Efetuar a leitura de cinco números inteiros e identificar o maior e o menor. Não
execute a ordenação de valores.*/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	float a, b, c, d, e;
 	cout<<"Digite o primeiro número.";
 	cin>>a;
 	cout<<"Digite o segundo número.";
 	cin>>b;
 	cout<<"Digite o terceiro número.";
 	cin>>c;
 	cout<<"Digite o quarto número.";
 	cin>>d;
 	cout<<"Digite o quinto número.";
 	cin>>e;
	if ((a>b)&&(a>c)&&(a>d)&&(a>e)) {
 		cout<<"O maior número é"<<" "<<a;
	}
	if ((b>a)&&(b>c)&&(b>d)&&(b>e)) {
		cout<<"O maior número é"<<" "<<b;
	}
	if ((c>a)&&(c>b)&&(c>d)&&(c>e)) {
		cout<<"O maior número é"<<" "<<c;
	}
	if ((d>a)&&(d>b)&&(d>c)&&(d>e)) {
		cout<<"O maior número é"<<" "<<d;
	}
	if ((e>a)&&(e>b)&&(e>c)&&(e>d)) {
		cout<<"O maior número é"<<" "<<e;
	}
	if ((a<b)&&(a<c)&&(a<d)&&(a<e)) {
		cout<<"\nO menor número é"<<" "<<a;
	}
	if ((b<a)&&(b<c)&&(b<d)&&(b<e)) {
		cout<<"\nO menor número é"<<" "<<b;
	}
	if ((c<a)&&(c<b)&&(c<d)&&(c<e)) {
		cout<<"\nO menor número é"<<" "<<c;
	}
	if ((d<a)&&(d<b)&&(d<c)&&(d<e)) {
		cout<<"\nO menor número é"<<" "<<d;
	}
	if ((e<a)&&(e<b)&&(e<c)&&(e<d)) {
		cout<<"\nO menor número é"<<" "<<e;
	}
}
