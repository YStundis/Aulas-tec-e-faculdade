
#include<stdio.h>
int main(){
  float preco, ingressos=120, despesas=200.00, lucro, maiorlucro=0, precomax, vendas;
	for(preco=5.00; preco >= 1.00; preco-=0.50){
		lucro = (preco*ingressos) - despesas;
		printf("PRECO = %.2f LUCRO ESPERADO = %.2f\n", preco, lucro);
		if (lucro > maiorlucro){
			maiorlucro=lucro; precomax=preco; vendas=ingressos;
		}
		ingressos += 26;
	}
	printf("LUCRO MAXIMO = %.2f DO PRECO = %.2f NUMERO DE INGRESSOS VENDIDOS = %.2f\n", maiorlucro, precomax, vendas);
	return 0;
}
