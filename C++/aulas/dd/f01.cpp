#include <iostream>
#include <locale.h>
#include <math.h>
using namespace std;

//fun��es{
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
	
	cout<<"Digite o primiero n�mero: ";
	cin>>x;
	cout<<"Digite o segundo n�mero: ";
	cin>>y;
	
	cout<<"Soma dos n�meros: "<<somar(x, y);
	cout<<endl<<"Produto dos n�meros: "<<vezes(x, y);
}
