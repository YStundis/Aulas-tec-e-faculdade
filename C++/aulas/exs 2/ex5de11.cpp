/*Dados tr�s valores A, B, C, verificar se eles podem ser os comprimentos dos lados de um tri�ngulo e, se forem, verificar se comp�em um tri�ngulo eq�il�tero,
 is�sceles ou escaleno. Informar se n�o compuserem nenhum tri�ngulo. Usar sele��o (se).
Dados de sa�da: mensagens (n�o comp�em o tri�ngulo, tri�ngulo eq�il�tero, tri�ngulo is�sceles, tri�ngulo escaleno).
Tri�ngulo: figura geom�trica de tr�s lados, em que cada um � menor do que a soma dos outros dois.
T. eq�il�tero: um tri�ngulo com tr�s lados iguais.
T. is�sceles: um tri�ngulo com dois lados iguais.
T. escaleno. Um tri�ngulo com todos os lados diferentes.*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float a,b,c;
 	
 	cout<<"digite um valor:";
 	cin>>a;
 	cout<<"digite outro valor:";
 	cin>>b;
 	cout<<"digite mais um valor:";
 	cin>>c;
 	if((a==b)&&(a==c)){
 		cout<<"esse e um triangulo equilatero";
	 }
	else if((b==a)||(b==c)||(b==a)||(b==c)||(c==a)||(c==b)){
		cout<<"esse e um triangulo isoceles";
	 }
	else if((a!=b)||(a!=c)||(b!=a)||(b!=c)||(c!=a)||(c!=b)){
		cout<<"esse e um triangulo escaleno";
	}
 }
 
