#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int ini, fin;
	
	cout<<"Digite o valor inicial: ";
	cin>>ini;
	cout<<"Digite o valor final: ";
	cin>>fin;
	
	for(int i = ini; i <= fin; i++){
		if((i > 10) && (i % 2 == 0)){
			cout<<endl<<i;
		}
	}
}
