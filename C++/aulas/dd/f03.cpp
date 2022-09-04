#include <iostream>
#include <locale.h>
#include <math.h>
using namespace std;

//funções{

//}

int main(){
	setlocale(LC_ALL, "Portuguese");
	int aux;
	int arr[5][5];
	
	cout<<"Preenchendo uma matriz"<<endl<<endl;
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			cout<<"Preencha com um número inteiro: ";
			cin>>arr[i][j];
		}
	}
	
	int somaL = 0;
	int somaC = 0;
	int diaP = 0;
	for(int i = 0; i < 5; i++){
        somaL += arr[4][i];
        somaC += arr[i][2];
        diaP += arr[i][i];
	}
	
	int diaS = 0;
	for(int i = 0; i < 5; i++){
		for(int j = 4; j >= 0; j--){
			diaS += arr[i][j];
		}
	}
	
	cout<<"Soma da linha 4: "<<somaL;
	cout<<"Soma da coluna 2: "<<somaC;
	cout<<"Soma da diagonal principal: "<<diaP;
	cout<<"Soma da diagonal secundária: "<<diaS;
}
