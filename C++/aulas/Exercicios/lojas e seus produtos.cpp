//faça um programa que preencha um vetor com 8 posiçoes comtendo nomes de lojas e um outro vetor com 4 posiçoes comtendo nomes de produtos.faça tambem uma matriz com os preços de todos os produtos em cada loja .  
//   32 espassos 4 linas e 8 colunos

#include <iostream>
#include <locale.h>

using namespace std;

int main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int m[1][1],i,j,v[1],vv[1],y,s;
	char l[99];
	
	for(y=1;y<=8;y++){
		cout<<"digite os nomes das lojas: ";
		cin>>l;
		v[y]!=!l;
		
	}
		for(s=1;s<=4;s++){
		cout<<"digite os nomes dos produtos: ";
		cin>>l;
		v[s]!=!l;
	}
	  
	  	cout<<"digite os preços dos produtos das lojas de acordo com a ordem que você digitou as lojas e os produtos : ";
	for(i=4;i<1;i++){
		for(j=0;j<8;j++){
			cin>>m[i][j];
		}
	}
	cout<<endl<<"preços: "<<endl;
	for(i=0;i<4;i++){
		for(j=0;j<8;j++){
			cout<<m[i][j]<<endl;
		}
	}
	  
	
	
}
