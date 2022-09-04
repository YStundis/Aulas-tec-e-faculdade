#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int a[4][4], b[4][4], maior[4][4], aux;
	
	cout<<"Preencha as matrizes com números inteiros"<<endl<<endl;
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<"MatrizA["<<i<<"]["<<j<<"] = ";
			cin>>a[i][j];
			cout<<"MatrizB["<<i<<"]["<<j<<"] = ";
			cin>>b[i][j];
		}
		cout<<endl;
	}	
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			if(a[i][j] >= b[i][j]){
				aux = a[i][j];
				maior[i][j] = aux;
			}
			else{
				aux = b[i][j];
				maior[i][j] = aux;
			}
		}
	}
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<maior[i][j]<<"  ";
		}
		cout<<endl;
	}
}
