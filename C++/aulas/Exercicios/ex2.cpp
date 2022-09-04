/*Faça um algoritimo que verifique a media final de um aluno.Se a media fo menor que 7 devera aparecer a mensagen "aluno reprovado"*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float med;
 	
 	cout<<"digite sua media:";
 	cin>>med;
 	if(med>=7){
 	    cout<<"aluno aprovado";
	 }
	 else {
		cout<<"aluno reprovado";
	 }
 }
 
