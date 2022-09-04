#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int x, y, pot = 1;
	
	cout<<"Digite o valor da base(x): ";
	cin>>x;
	cout<<"Digite o valor do expoente(y): ";
	cin>>y;
	
	for(int i = 1; i <= y; i++) {
		pot = pot * x;
	}	
	
	cout<<endl<<x<<" elevado a "<<y<<" é igual a "<<pot;
}
