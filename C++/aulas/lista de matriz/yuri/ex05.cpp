#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[5][5], busca, aux, enc = 0;
	
	cout<<"Preencha a matriz com números inteiros"<<endl<<endl;
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			cout<<"mat["<<i<<"]["<<j<<"] = ";
			cin>>mat[i][j];
		}
	}
	
	cout<<endl<<"Digite um valor X = ";
	cin>>busca;
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			aux = mat[i][j];
			if(aux == busca){
				enc++;
			}
		}
	}
	
	cout<<endl<<"Vezes que X foi encontrado: "<<enc;
}
