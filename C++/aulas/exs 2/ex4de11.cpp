
/*Construa um algoritmo para: ler tr�s n�meros (A, B e X). Em seguida, somar A com B e multiplicar
 o resultado por X, se X n�o for > 5; Subtrair B de A e multiplicar o resultado por X, caso contr�rio.
  Usar sele��o (se).*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float a,b,x,s,ns;
 	
 	cout<<"digite um numero:";
 	cin>>a;
 	cout<<"digite outro numero:";
 	cin>>b;
 	cout<<"digite mais um numero:";
 	cin>>x;
 	if(x<=4){
 		s=b-a;
 		ns=s*x;
 		cout<<"subtrair o segundo numero pelo primeiro e multiplicar pelo terceiro:"<<ns;
	 }
	if(x>=5){
		s=a+b;
		ns=s*x;
		cout<<"somar o primeiro numero com o segundo e multiplicar o resultado pelo terceiro:"<<ns;
	}
}
