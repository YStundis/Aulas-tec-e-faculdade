//ok
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int max(int n1, int n2);

int main() 
    {
    	setlocale(LC_ALL,"");
    	
        int a, b, maior;

        printf("\nDigite o Primeiro N�mero: ");
        scanf("%d",&a);
        
        printf("\nDigite o Segundo N�mero: ");
        scanf("%d",&b);
        
        maior = max (a,b);
        
        printf("\nMaior N�mero: %d",maior);
        return 0;
    }
    
int max(int n1, int n2)
    {
        int resultado;
        
        if (n1 > n2)
        {
            resultado = n1;
        }
        
        else
        {
            resultado = n2;
        }
        
        return resultado;
    }
