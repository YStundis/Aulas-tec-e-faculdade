#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int p_info[34]; 
	
	for(int i = 0; i <= 33; i++){
		cout << "Qual é a sua idade? ";
		cin >> p_info[i];
	}
	
	for(int i = 0; i <= 33; i++){
		cout<<endl<<p_info[i];
	}
}
