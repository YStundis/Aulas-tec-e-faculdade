#include <stdio.h>

	int main(){
		char cCodigo;
		int i;
		float fVista, fValor, fPrazo;
		for(i=1; i<=5; i++){
			printf("\n Codigo: ");
			scanf("%c",&cCodigo);
			printf("\n Valor: ");
			scanf("%f%*c", &fVista);
			//printf("%c..",cCodigo);
			if	 (cCodigo == 'V' || cCodigo == 'v') fValor+=fVista;
			else if(cCodigo == 'P' || cCodigo == 'p') fPrazo+=1;
			else printf("nada");
		}
		printf("\n Valor compras a vista: %2.2f", fValor);
	}
