#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int somaA, somaB, somaC, n;
	
	for(int i = 1; i <= 300; i++){
		cout<<"Digite um número: ";
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
	
	cout<<"Soma dos 4 primeiros números: "<<somaA;
	cout<<endl<<"Soma do 5º número até o 8º: "<<somaB;
	cout<<endl<<"Soma do 9º número até o 12º: "<<somaC;
}
