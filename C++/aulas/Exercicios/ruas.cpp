#include <iostream>
#include <math.h>
#include <locale.h>
using namespace std;
int main(){
	setlocale(LC_ALL, "Portuguese");
	system ("color F");
	int r[4][6]; 
	for(int i=0;i<=3;i++){
		for(int j=0;j<=5;j++){	
			cout<<"\nQuantos acidentes teve na esquina da rua LESTE,OESTE "<<i+1<<" junto com a rua NORTE,SUL "<<j+1<<" ?";
			cin>>r[i][j];
		}
	}
		for(int i=0;i<=3;i++){
			for(int j=0;j<=5;j++){
				cout<<"\nNa esquina da rua LESTE,OESTE "<<i+1<<" com a rua NORTE,SUL "<<j+1<<" aconteceram "<<r[i][j]<<" acidentes.";
	}	
}
}

