#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int x, y, aux;
	
	cout<<"Digite o número de linhas: ";
	cin>>x;	
	cout<<"Digite o número de colunas: ";
	cin>>y;
	
	int arr[x][y];
	
	for(int i = 0; i < x; i++){
		for(int j = 0; j < y; j++){ 
			aux = 1; 
			arr[i][j] = aux;
		}
	}
	
	for(int i = 0; i < x; i++){
		for(int j = 0; j < y; j++){
			cout<<endl<<"arr["<<i<<"]["<<j<<"] = "<<arr[i][j];
		}
	}
}
