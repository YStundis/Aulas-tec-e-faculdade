#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int n, fat = 1;
	
	cout<<"Digite um número: ";
	cin>>n;	
	
	for(int i = n; i >= 1; i--){
		fat = fat * i;
	}
	
	cout<<"Fatorial de "<<n<<": "<<fat;
}
