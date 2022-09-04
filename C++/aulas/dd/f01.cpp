#include <iostream>
#include <locale.h>
#include <math.h>
using namespace std;

//funções{
int somar(int a, int b){
	int result;
	result = a + b;
	return result;
}

int vezes(int a, int b){
	int result;
	result = a * b;
	return result;
}
//}

int main(){
	setlocale(LC_ALL, "Portuguese");
	int x, y;
	
	cout<<"Digite o primiero número: ";
	cin>>x;
	cout<<"Digite o segundo número: ";
	cin>>y;
	
	cout<<"Soma dos números: "<<somar(x, y);
	cout<<endl<<"Produto dos números: "<<vezes(x, y);
}
