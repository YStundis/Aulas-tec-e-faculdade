/*Efetuar a leitura de cinco n�meros inteiros e identificar o maior e o menor. N�o
execute a ordena��o de valores.*/

#include<iostream>
#include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	float a, b, c, d, e;
 	cout<<"Digite o primeiro n�mero.";
 	cin>>a;
 	cout<<"Digite o segundo n�mero.";
 	cin>>b;
 	cout<<"Digite o terceiro n�mero.";
 	cin>>c;
 	cout<<"Digite o quarto n�mero.";
 	cin>>d;
 	cout<<"Digite o quinto n�mero.";
 	cin>>e;
	if ((a>b)&&(a>c)&&(a>d)&&(a>e)) {
 		cout<<"O maior n�mero �"<<" "<<a;
	}
	if ((b>a)&&(b>c)&&(b>d)&&(b>e)) {
		cout<<"O maior n�mero �"<<" "<<b;
	}
	if ((c>a)&&(c>b)&&(c>d)&&(c>e)) {
		cout<<"O maior n�mero �"<<" "<<c;
	}
	if ((d>a)&&(d>b)&&(d>c)&&(d>e)) {
		cout<<"O maior n�mero �"<<" "<<d;
	}
	if ((e>a)&&(e>b)&&(e>c)&&(e>d)) {
		cout<<"O maior n�mero �"<<" "<<e;
	}
	if ((a<b)&&(a<c)&&(a<d)&&(a<e)) {
		cout<<"\nO menor n�mero �"<<" "<<a;
	}
	if ((b<a)&&(b<c)&&(b<d)&&(b<e)) {
		cout<<"\nO menor n�mero �"<<" "<<b;
	}
	if ((c<a)&&(c<b)&&(c<d)&&(c<e)) {
		cout<<"\nO menor n�mero �"<<" "<<c;
	}
	if ((d<a)&&(d<b)&&(d<c)&&(d<e)) {
		cout<<"\nO menor n�mero �"<<" "<<d;
	}
	if ((e<a)&&(e<b)&&(e<c)&&(e<d)) {
		cout<<"\nO menor n�mero �"<<" "<<e;
	}
}
