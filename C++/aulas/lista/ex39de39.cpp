#include <stdio.h>

int main(){

    int codigo_cliente,tipo_conta;
    float valor_investido,rendimento_mensal,total_investido=0,total_juros=0;
    float juros;


    do{
        printf("CODIGO DO CLIENTE:\n");
        scanf("%d",&codigo_cliente);

        if(codigo_cliente <= 0){
            break;
        }

        printf("\n\nTIPO DE CONTA:");
        printf("\n1- POUPANCA \n2- POUPANCA PLUS \n3- FUNDO DE RENDA FIXA\n");
        scanf("%d",&tipo_conta);

        printf("VALOR INVESTIDO:\n");
        scanf("%f",&valor_investido);

        total_investido = total_investido + valor_investido;

        // TIPOS DE CONTA

        if(tipo_conta == 1){
            juros = 1.014;
        }

        if(tipo_conta == 2){
            juros = 1.02;
        }

        if(tipo_conta == 3){
            juros = 1.04;
        }

        rendimento_mensal = valor_investido * juros;

        total_juros = total_juros + rendimento_mensal;

        printf("\n\nCLIENTE : %d \nInvestimen : %.2f \nRENDIMENTO MENSAL : %.2f\n\n\n",
        codigo_cliente,valor_investido,rendimento_mensal);

    }while(codigo_cliente > 0);

    printf("TOTAL INVESTIDO : %.2f\n",total_investido);
    printf("TOTAL DE JUROS PAGO : %.2f\n",total_juros);


    return(0);
}
