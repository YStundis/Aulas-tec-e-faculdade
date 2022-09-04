/*faça um programa que receba dois números e execute as operaçoes çistadas a seguir a escolha do usuario*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	cout<<"\n1 media entre os numeros digitados";
 	cout<<"\n2 diferença do maior pelo menor";
 	cout<<"\n3  produto entre os numeos digitados";
 	cout<<"\n4 divisao do primeiro pelo segundo";
 	
 	setlocale (LC_ALL,"portuguese");
 	
 	float n1,n2,op,r;
 	
 	cout<<"\ndigite o primeiro numero:";
 	cin>>n1;
 	cout<<"digite o segundo numero:";
 	cin>>n2;
 	cout<<"digite uma operçao:";
 	cin>>op;
 	if(op==1){
 		r=(n1+n2)/2;
 		cout<<"a media entre os numeros digitado e:"<<r;
	 }
	 if(op==2){
 		r=n1-n2;
 		cout<<"diferença do maior pelo menor e:"<<r;
 	
	 }
	 if(op==3){
 		r=n1*n2;
 		cout<<"produto entre os numeos digitados e:"<<r;
	 }
	 if(op==4){
 		r=n1/n2;
 		cout<<"divisao do primeiro pelo segundo e:"<<r;
	 }
	 if(op>=5){
	 	cout<<"operaçao nao identificada ERRO";
	 }
}
 	
