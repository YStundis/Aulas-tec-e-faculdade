#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[4][4], aux;
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			aux = i*j;
			mat[i][j] = aux;
		}
	}
	
	for(int i = 0; i < 4; i++){
		for(int j = 0; j < 4; j++){
			cout<<mat[i][j]<<"  ";		
		}
		cout<<endl;
	}
}
