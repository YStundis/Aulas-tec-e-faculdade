#include 
int main() { 
int i, idade; 
float altura, peso; 
int maior_que_50 = 0, num10a20 = 0, num_m40 = 0; 
float soma_10a20 = 0, media_10a20, relacao_m40; 
for(i = 0; i < 5; i++){ 
printf("\nPessoa n.%d\n", i+1); 
printf("\tIdade: ");
scanf("%d", &idade); 
printf("\tAltura (em m): "); 
scanf("%f", &altura); 
printf("\tPeso (em Kg): "); 
scanf("%f", &peso); 
if(idade > 50){
 maior_que_50++; } 
 else if((idade > 10) && (idade < 20)){ 
 soma_10a20 += altura; num10a20++; } 
 if(peso < 40){ 
 num_m40++; } } 
 media_10a20 = (soma_10a20 / num10a20); 
 relacao_m40 = (100 * ((float) num_m40 / 5));
  printf("\nRESULTADOS:");
   printf("\n\tPessoas com mais de 50 anos: %d", maior_que_50); 
   printf("\n\tMedia da alturas dos que tem entre 10 e 20 anos: %.2f", media_10a20); 
   printf("\n\tRelacao do que tem menos de 40 quilos: %.2f%%", relacao_m40); 
    printf("\n\n");
	 return 0; }


