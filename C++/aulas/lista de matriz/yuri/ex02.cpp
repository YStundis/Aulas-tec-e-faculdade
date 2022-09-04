#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[5][5], aux;
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			if(i == j){
				aux = 1;
				mat[i][j] = aux;
			}
			else{
				aux = 0;
				mat[i][j] = aux;
			}
		}
	}
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			cout<<mat[i][j]<<"  ";		
		}
		cout<<endl;
	}
}
