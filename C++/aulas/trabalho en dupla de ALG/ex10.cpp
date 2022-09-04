#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	float soma = 0, media = 0;
	
	for(float i = 2; i <= 50; i++){
		soma = soma + (1/i);
		cout<<soma<<endl;
	}
	
	media = soma/49;
	cout<<"Média: "<<media;
}
