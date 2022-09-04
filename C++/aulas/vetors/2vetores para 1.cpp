#include <iostream>
#include <locale.h>
using namespace std;

// Faça um programa que preencha 2 vetores de 10 posição cada um.
// Determine e mostre um terceiro vetor comtendo os elementos dos dois vetores anteriores
// ordenadas de maneira decresente.

int main(){
	setlocale(LC_ALL, "Portuguese");
	
	int  pri[10],seg[10],ter[20],aux;
	
	
	for(int i=1;i<11;i++){
		cout<<"digite um numero:";
		cin>>pri[i];
	}
	for(int y=1;y<=10;y++){
		cout<<"digite um numero:";
		cin>>seg[y];
	}
	pri[1]=ter[0];
	pri[2]=ter[1];
	pri[3]=ter[2];
	pri[4]=ter[3];
	pri[5]=ter[4];
	pri[6]=ter[5];
	pri[7]=ter[6];
	pri[8]=ter[7];
	pri[9]=ter[8];
	pri[10]=ter[9];
	seg[1]=ter[10];
	seg[2]=ter[11];
	seg[3]=ter[12];
	seg[4]=ter[13];
	seg[5]=ter[14];
	seg[6]=ter[15];
	seg[7]=ter[16];
	seg[8]=ter[17];
	seg[9]=ter[18];
	seg[10]=ter[19];
	
		for(int u = 1; u <= 20; u++){
		for(int r = u+1; r <= 20; r++){
			if(ter[u] < ter[r]){
				aux = ter[u];
				ter[u] = ter[r];
				ter[r] = aux;
			}
		}
	}
	
	for(int u = 1; u <= 20; u++){
		cout<<endl<<ter[u];
    }
	
}




