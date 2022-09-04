#include <stdio.h>

#include <stdlib.h>

int main()

{

int i,maior,menor,num;

num=0;

maior=0;

menor=0;

for(i=0;i<10;i++) {

printf("DIGITE UM NUMERO INTEIRO\n");

scanf("%d",&num);

if (i == 0)

maior = menor = num;

printf("NUMERO DIGITADO:%d\n",num);

if (num > maior)

maior = num;

printf("MAIOR: %d\n",maior);

if (num < menor)

menor = num;

printf("MENOR: %d\n",menor);

}

printf("O NUMERO MAIOR E:%d\n",maior);

printf("O NUMERO MENOR E:%d\n",menor);

system("pause");

return 0;

}
