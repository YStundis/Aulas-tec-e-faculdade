//ok
#include <stdio.h>
#include <stdlib.h>
#include<conio.h>


int main(void){
	
  int menu;
  FILE * arq;
	
  while(menu != 3){
  
  	printf("\n\nSelecione a opcao desejada:\n");
	printf("\n 1 - Cadastrar\n");
	printf("\n 2 - Ver cadastros\n");
	printf("\n 3 - Sair\n\n");
	scanf("%i", &menu);
  
  if(menu == 1){
  	
  arq = fopen ("CadastroC.txt","a+");
		
  system("cls");
  
  char n[50], e[50], cp[20];
  
  printf("Digite o nome: ");
  scanf("%s",n);
  printf("Digite o e-mail: ");
  scanf("%s",e);
  printf("Digite o CPF: ");
  scanf("%s",cp);
  
  printf("\nCadastro completo");
  
  fprintf(arq, "\n\n Nome: %s\n E-mail: %s\n CPF: %s", n, e, cp);
  
  getch();	
  	
   }
  
  else if(menu == 2){
  	
  	arq = fopen ("CadastroC.txt","a+");
		
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
