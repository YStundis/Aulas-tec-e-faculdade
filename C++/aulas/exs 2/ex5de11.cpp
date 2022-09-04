/*Dados três valores A, B, C, verificar se eles podem ser os comprimentos dos lados de um triângulo e, se forem, verificar se compõem um triângulo eqüilátero,
 isósceles ou escaleno. Informar se não compuserem nenhum triângulo. Usar seleção (se).
Dados de saída: mensagens (não compõem o triângulo, triângulo eqüilátero, triângulo isósceles, triângulo escaleno).
Triângulo: figura geométrica de três lados, em que cada um é menor do que a soma dos outros dois.
T. eqüilátero: um triângulo com três lados iguais.
T. isósceles: um triângulo com dois lados iguais.
T. escaleno. Um triângulo com todos os lados diferentes.*/

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
 
