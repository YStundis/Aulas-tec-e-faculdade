#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[3][3], aux, soma;
	
	cout<<"Preencha a matriz com n�meros inteiros"<<endl<<endl;
	
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			cout<<"mat["<<i<<"]["<<j<<"] = ";
			cin>>mat[i][j];
		}
		cout<<endl;
	}
	
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			if(i > j){
				soma += mat[i][j];
			}
		}
	}	
	
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			cout<<mat[i][j]<<"  ";
		}
		cout<<endl;
	}
	
	cout<<endl<<"Soma depois da D.P = "<<soma;
}
