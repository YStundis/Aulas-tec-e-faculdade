//ok
#include<stdio.h>
#include<stdlib.h>

int main(){
	
	char n[20];
	float sf, vm, c, sfm;
	
	printf("Qual o nome do vendedor: ");
	scanf("%s",&n);
	printf("\nQual o salario fixo: ");
	scanf(" %f",&sf);
	printf("\nQual o total de vendas no mes(em dinheiro): ");
	scanf("%f",&vm);	
	
	system("cls");
	
	c = vm*0.15;
	sfm = sf + c;
	
	printf("Vendedor: %s",n);
	printf("\nTem o salario fixo de: %.2f",sf);
	printf("\nSeu salario no fim do mes sera: %.2f",sfm);
	
}
