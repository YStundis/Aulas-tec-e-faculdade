#include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int g15, g16_30, g31_45, g46_60, g60;
     float p15, p60, idade;
     int i=0;

for(i=0;i<15;i++){
        cout<<"digite sua idade:";
        cin>>idade;

        if(idade <= 15){
            g15++;
        }
        else if(idade >= 16 && idade <=30){
            g16_30++;
        }
        else if(idade >= 31 && idade <= 45){
            g31_45++;
        }
        else if(idade >= 46 && idade <= 60){
            g46_60++;
        }
        else{
            g60++;
        }
    }

    printf("\n Idades:");
    printf("\nAté 15 anos: %d pessoas", g15);
    printf("\nDe 16 a 30 anos: %d pessoas", g16_30);
    printf("\nDe 31 a 45 anos: %d pessoas", g31_45);
    printf("\nDe 46 a 60 anos: %d pessoas", g46_60);
    printf("\nAcima de 60 anos: %d pessoas", g60);
    printf("\n\nPorcentagem de menores de 15 anos: %.2f%%", 100 * g15 / 15.);
    printf("\nPorcentagem de maiores de 60 anos: %.2f%%\n", 100 * g60 / 15.);	 
}



