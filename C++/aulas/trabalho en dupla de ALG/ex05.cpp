#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int somaA, somaB, somaC, n;
	
	for(int i = 1; i <= 300; i++){
		cout<<"Digite um n�mero: ";
		cin>>n;
		if(i <= 100){
			somaA = somaA + n; 
		}
		else if(i > 100 && i <= 200){
			somaB = somaB + n;
		}
		else if(i > 200 && i <= 300){
			somaC = somaC + n;
		}
	}	
	
	cout<<"Soma dos 4 primeiros n�meros: "<<somaA;
	cout<<endl<<"Soma do 5� n�mero at� o 8�: "<<somaB;
	cout<<endl<<"Soma do 9� n�mero at� o 12�: "<<somaC;
}
