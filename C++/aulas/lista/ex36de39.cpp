#include <stdlib.h>

#include <stdio.h>

int main ()

{

float idade,altura,media=0,contador=1,excluir=1;

while(1)

{

printf("Digite a idade da %.0fo pessoa: ",contador);

scanf("%f",&idade);

if (idade<=0)

break;

printf("Digite a altura da %.0fo pessoa: ",contador);scanf("%f",&altura);

printf("\n");

if (idade>50)

media+=altura;

else

excluir++;

contador++;

}

if (media!=0)

media=media/(contador-excluir);

printf("\n\n\nA altura m%cdia da(s) %.0f pessoa(s) %c %.2f\n\n\n\n",130,contador-excluir,130,media);

system("pause");

return(0);

}
