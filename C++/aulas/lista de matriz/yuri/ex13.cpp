#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	char resp[5][10], gab[10], soma;
	
	cout<<"Preencha a matriz com as respostas de cada aluno:"<<endl;
	cout<<"-- A, B, C ou D --"<<endl<<endl;
	
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 10; j++){
			cout<<i+1<<"º Aluno "<<"["<<j+1<<"] = ";
			cin>>resp[i][j];
		}
		cout<<endl;
	}
	
	cout<<endl<<"Preencha a matriz com o gabarito:"<<endl;
	cout<<"-- A, B, C ou D --"<<endl<<endl;
	
	for(int j = 0; j < 10; j++){
		cout<<"Resposta "<<j+1<<" => ";
		cin>>gab[j];
	}
	
	int acertos = 0;
	cout<<endl;
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 10; j++){
			if(resp[i][j] == gab[j]){
				acertos++;
			}
		}
		cout<<i+1<<"º Aluno - "<<acertos<<"/10";
		cout<<endl;
		acertos = 0;
	}
}
