
#include <iostream>
#include <locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int m[2][6],i,j;
	cout<<"digite 12 numeros: ";
	for(i=0;i<2;i++){
		for(j=0;j<6;j++){
			cin>>m[i][j];
		}
	}
	cout<<endl<<"numeros: "<<endl;
	for(i=0;i<2;i++){
		for(j=0;j<6;j++){
			cout<<m[i][j]<<endl;
		}
	}
}
