/*faça um programa que receba duas notas, calcule e mostre a média  e mensagem que esta na tabela seguir:*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float n1,n2,nr;
 	
 	cout<<"digite a sua primeira nota:";
 	cin>>n1;
 	cout<<"digite a sua segunda nota:";
 	cin>>n2;
 	nr=n1+n2/2;
 	if((nr>=0)&&(nr<=3.9)){
 		cout<<"reprovado";
    }
    if((nr>=4)&&(nr<=6.9)){
    	cout<<"exame";
	}
	 if((nr>=7)&&(nr<=10)){
    	cout<<"aprovado";
	}
}

