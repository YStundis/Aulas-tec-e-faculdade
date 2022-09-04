#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int n;
	
	cout<<"Digite um número: ";
	cin>>n;
	
	for(int i = n+1; i <= n+20; i++){
		cout<<endl<<i;
	}
}
