#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int somaP = 0, somaI = 0, n = 0;
	
	for(int i = 1; i <= 10; i++){
		cout<<"Digite um número: ";
		cin>>n;
		if((i <= 5) && (n % 2 == 0)){
			somaP = somaP + n;
		}
		else if((i > 5 && i <= 10) && (n % 2 != 0)){
			somaI = somaI + n;
		}
	}	
	
	cout<<"Soma dos 5 primeiros números pares: "<<somaP;
	cout<<endl<<"Soma do 6º número até o 10º, que são ímpares: "<<somaI;
}
