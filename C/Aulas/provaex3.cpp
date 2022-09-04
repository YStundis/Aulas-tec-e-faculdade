//ok
#include <stdio.h>
#include <stdlib.h>
#include<conio.h>


int main(void){
	
  int menu;
  FILE * arq;
	
  while(menu != 3){
  
  	printf("\nSelecione a opcao desejada:\n");
	printf("\n 1 - Adicionar notas\n");
	printf("\n 2 - Media\n");
	printf("\n 3 - Sair\n\n");
	scanf("%i", &menu);
  
  if(menu == 1){
  	
  arq = fopen ("Media.csv","a+");
		
  system("cls");
  
  char n[50];
  float n1, n2, n3, m;
  
  printf("Digite o nome: ");
  scanf("%s",n);
  printf("\nDigite a primeira nota: ");
  scanf("%f",&n1);     
  printf("\nDigite a segunda nota: ");
  scanf("%f",&n2);     
  printf("\nDigite a terceira nota: ");
  scanf("%f",&n3);
        
  m = (n1+n2+n3)/3;
  system("cls");      
  printf("\nNotas adicionadas");
  
  fprintf(arq, "\n\n Nome: %s\n Media: %.2f", n, m);
  
  getch();	
  	
   }
  
  else if(menu == 2){
  	
  	arq = fopen ("Media.csv","a+");
		
	system("cls");
		
	char c ;
	c = getc (arq);
	while(c != EOF){
		printf("%c",c);
		c = getc (arq);
	}
		
	printf("\n\n\n");
  	
  }
  
  	else {
  		
  		system("cls");
  		printf("Ate a proxima");
  		
	  }
  	
  	fclose (arq);
  	
 }	
   
  return 0;

}
