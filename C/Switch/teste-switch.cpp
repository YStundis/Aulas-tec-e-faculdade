//ok
#include<stdio.h>
#include<stdlib.h>

int soma(int a, int b);
int subtracao(int a, int b);
int multiplicacao(int a, int b);
int divisao(int a, int b);


int main()
{
	int a, b;
	int op;
	int valido = 1;
	
	printf("Digite o primeiro valor:");
	scanf("%i",&a);
	printf("Digite o segundo valor:");
	scanf("%i",&b);
	
	system("cls");
	
	printf("Selecione uma operacao: \n\n");
	printf("1 - soma\n");
	printf("2 - subtrcao\n");
	printf("3 - multiplicacao\n");
	printf("4 - divisao\n\n");
	scanf("%i",&op);

	while (valido == 1)
	{
		switch(op)
		{
			case 1: printf("\n%i + %i = %i",a,b,soma(a,b)); valido++;
			break;
			case 2: printf("\n%i - %i = %i",a,b,subtracao(a,b)); valido++;
			break;
			case 3: printf("\n%i * %i = %i",a,b,multiplicacao(a,b)); valido++;
			break;
			case 4: printf("\n%i / %i = %i",a,b,divisao(a,b)); valido++;
			break;
			default: system("cls"); printf("Opcao invalida.\n\n"); valido++;
			break;
				
		}
	}
	
}

int soma(int a, int b){
	int r;
	r = a + b;
	return r;
}
	
int subtracao(int a, int b){
	int r;
	r = a - b;
	return r;
}

int multiplicacao(int a, int b){
	int r;
	r = a * b;
	return r;
}

int divisao(int a, int b){
	int r;
	r = a / b;
	return r;
}








