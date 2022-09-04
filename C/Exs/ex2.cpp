//ok
#include<stdio.h>
#include<stdlib.h>

int main(){
	
	float n1, n2, s, sub, m, d;
	
	printf ("Digite o primeiro Numero: ");
	scanf("%f",&n1);
	
	printf ("\nDigite o segundo Numero: ");
	scanf("%f",&n2);
	
	system("cls");
	
	s = n1 + n2;
	sub = n1 - n2;
	m = n1 * n2;
	d = n1 / n2;
	
	printf("\nA soma dos Numeros: %.2f",s);
	printf("\nA subtracao dos Numeros: %.2f",sub);
	printf("\nA multiplicacao dos Numeros: %.2f",m);
	printf("\nA divisão dos Numeros: %.2f",d);
	
}
