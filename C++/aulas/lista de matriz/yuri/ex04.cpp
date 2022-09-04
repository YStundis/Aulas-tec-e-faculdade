#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[4][4], aux;
	
	cout<<"Preencha a matriz com números inteiros"<<endl<<endl;
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<"mat["<<i<<"]["<<j<<"] = ";
			cin>>mat[i][j];
		}
	}
	
	cout<<"-----------------------------------"<<endl;
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<" "<<mat[i][j]<<" ";		
		}
		cout<<endl;
	}
	cout<<"-----------------------------------"<<endl;
	
	int m_col = 0, m_lin = 0, maior = 0;
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			aux = mat[i][j];
			if(aux > maior){
				maior = aux;
				m_lin = i;
				m_col = j;
			}
		}
	}
	
	cout<<endl<<"Maior valor: "<<maior;
	cout<<endl<<"Localização: mat["<<m_lin<<"]["<<m_col<<"]";
}
