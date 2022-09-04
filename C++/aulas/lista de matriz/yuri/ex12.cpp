#include <iostream>
#include <locale.h>
#include <cstdlib>
#include <ctime>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int mat[3][3], aux, soma;
	
	srand(time(0));
	
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			mat[i][j] = 0 + (rand() % 99);
		}
	}	
	
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			cout<<mat[i][j]<<"  ";
		}
		cout<<endl;
	}
}
