/*Faça um programa que receba 4 notas de um aluno,
calcule e mostre a media aritimetica das notas e a mensagem de aprovado comsideramdo para a provacoa media 7*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float  n1,n2,n3,n4,nr;
 	
 	cout<<"digite sua primeira nota:";
 	cin>>n1;
 	cout<<"digite sua segunda nota:";
 	cin>>n2;
 	cout<<"digite sua terceira nota:";
 	cin>>n3;
 	cout<<"digite sua quarta nota:";
 	cin>>n4;
 	nr=n1+n2+n3+n4/4;
    if(nr>=7){
 		cout<<"parabens vc foi aprovado sua media foi:"<<nr;
	}
	else{
		cout<<"vc nao foi aprovado sua media foi:"<<nr;
	}
}

