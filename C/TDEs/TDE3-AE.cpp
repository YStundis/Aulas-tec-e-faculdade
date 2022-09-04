//ok
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float soma(float n1, float n2);
float subt(float n3, float n4);
float divs(float n5, float n6);
float mult(float n7, float n8);

int main() 
    {
    	setlocale(LC_ALL,"");
    	
    	printf("Ola seja bem vindo ao meu TDE3 de Algoritmo Estruturado :)\n                   Feito por: Yuri\n");
    	
		int erro = 0 ;
    	
		for (int i = 1; i >= 1; i++){
    	
        float v1, v2, rs, rsu, rd, rm;
        char op;
        
        //printf("\n\nDigite o Primeiro Número: ");
        
        printf("\n%d)Digite o Primeiro Número: ",i);
        scanf("%f",&v1);
        
        printf("\nDigite o Segundo Número: ");
        scanf("%f",&v2);
        
        rs = soma (v1,v2);
        rsu = subt (v1,v2);
        rd = divs (v1,v2);
        rm = mult (v1,v2);
        
        system("cls");
        
        printf("\nQual operação matematica deseja realizar com esses números +, -, * ou /");
        printf("\nPara ver todas as operações juntas digite T");
        printf("\nPara sair digite S\n");
		scanf("%s",&op);
        
        if(op == '+'){  
		printf("\nResultado: %.2f\n",rs,i);
		}
		
		else if(op == '-'){  
		printf("\nResultado: %.2f\n",rsu);
		}
		
		else if(op == '/'){  
		printf("\nResultado: %.2f\n",rd);
		}
		
		else if(op == '*'){  
		printf("\nResultado: %.2f\n",rm);
		}
		
		else if (op == 't' || op == 'T'){
		printf("\nResultado da soma: %.2f\n",rs);
		printf("\nResultado da subtração: %.2f\n",rsu);
		printf("\nResultado da divisão: %.2f\n",rd);
		printf("\nResultado da multiplicação: %.2f\n",rm);
		}
		
		else if (op == 's' || op == 'S'){
			system("cls");
			printf("\nAté a proxima, tchau\n");
			break;
		}
		
		else {
			system("cls");
			printf("\n   ERROU\nTente de novo\n");
			erro++;
			if(erro >= 5){
				char z[2];
				system("cls");
				printf("\n       Tu errou em :|\nAssim nao tem como eu te ajudar\n");
				scanf("%s",&z[0]);
				system("cls");
				printf("\nJa que chegou aqui vou te dar um aviso\n");
				scanf("%s",&z[1]);
				system("cls");
				printf("\nSe continuar errando vai voltar aqui\n");
				
	        }
	    }
    }
}
        
	float soma(float n1, float n2)
    {
        float s;
		s = n1+n2;
        return s;
    }
    
	float subt(float n3, float n4)
    {
        float s;
		s = n3-n4;
        return s;
    }
    
	float divs(float n5, float n6)
    {
        float s;
		s = n5/n6;
        return s;
    }
    
	float mult(float n7, float n8)
    {
        float s;
		s = n7*n8;
        return s;
    } 
