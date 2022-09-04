#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[4][4], aux, cont = 0;
	
	cout<<"Preencha a matriz com números inteiros"<<endl<<endl;
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<"mat["<<i<<"]["<<j<<"] = ";
			cin>>mat[i][j];
		}
	}
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			aux = mat[i][j];
			if(aux > 10){
				cont++;
			}
		}
	}
	
	if(cont >= 1){
		cout<<endl<<"Números maiores do que 10: "<<cont;
	}
	else{
		cout<<endl<<"Números maiores do que 10: Nenhum";
	}
}
