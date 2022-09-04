#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	float fir[2][2], seg[2][2], ter[2][2], auxA, auxB, cons;	
	char choose;
	
	cout<<"Preencha as matrizes com números inteiros:"<<endl<<endl;
	
	for(int i = 0; i < 2; i++){
		for(int j = 0; j < 2; j++){
			cout<<"Matriz A => mat["<<i<<"]["<<j<<"] = ";
			cin>>fir[i][j];
	
			cout<<"Matriz B => mat["<<i<<"]["<<j<<"] = ";
			cin>>seg[i][j];
		}
		cout<<endl;
	}
	
	cout<<"-----------------------------------"<<endl;
	cout<<"(a) Somar as duas matrizes"<<endl;
	cout<<"(b) Subtrair a primeira matriz da segunda"<<endl;
	cout<<"(c) Adicionar uma constante às duas matrizes"<<endl;
	cout<<"(d) Imprimir as matrizes"<<endl;
	cout<<endl<<"Escolha: ";
	cin>>choose;
	cout<<"-----------------------------------"<<endl;
	
	if(choose == 'a'){ //Soma
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				auxA = fir[i][j];
				auxB = seg[i][j];
				ter[i][j] = auxA + auxB;
			}
		}
		
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<ter[i][j];
			}
			cout<<endl;
		}
		cout<<endl<<"END PROGRAM;";
	}
	
	else if(choose == 'b'){ //Subtrair
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				auxA = fir[i][j];
				auxB = seg[i][j];
				ter[i][j] = auxA - auxB;
			}
		}
		
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<ter[i][j];
			}
			cout<<endl;
		}
		cout<<endl<<"END PROGRAM;";
	}
	
	else if(choose == 'c'){ //Constante
		cout<<"Constante = ";
		cin>>cons;
		
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				auxA = fir[i][j];
				auxB = seg[i][j];
				fir[i][j] = auxA + cons;
				seg[i][j] = auxB + cons;
			}
		}
		
		cout<<"Matriz A + constante"<<endl;
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<fir[i][j];
			}
			cout<<endl;
		}
		
		cout<<"Matriz B + constante"<<endl;
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<seg[i][j];
			}
			cout<<endl;
		}
		cout<<endl<<"END PROGRAM;";
	}
	
	else if(choose == 'd'){ //Mostrar
		cout<<"Matriz A"<<endl;
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<fir[i][j];
			}
			cout<<endl;
		}
		
		cout<<"Matriz B"<<endl;
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < 2; j++){
				cout<<" "<<seg[i][j];
			}
			cout<<endl;
		}
		cout<<endl<<"END PROGRAM;";
	}
	
	else{
		cout<<"Não seja tonto! Coloque direito, irmão!"<<endl;
		cout<<"...mas não funfou né?"<<endl<<" tristeza, depressão, dor, sofrimento...";
	}
}
