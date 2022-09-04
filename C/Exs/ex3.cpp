//ok
#include<stdio.h>
#include<stdlib.h>

int main(){
	
	float m, d, c;
	
	printf("Qual foi a distancia percorrida: ");
	scanf("%f",&d);
	printf("\nQual foi o total de combustivel gasto: ");
	scanf("%f",&c);
	
	system("cls");
	
	m = d/c;
	
	printf("O consumo medio foi: %.2f",m);
}
