/*Efetuar a leitura de dois valores, realizar a soma e verificar se o resultado é maior que 10.
 caso sim, mostre resultado + 5, senão, mostre resultado -7.*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	float a,b,s,n;
 	
 	cout<<"digite um numero:";
 	cin>>a;
 	cout<<"digite um numero de novo:";
 	cin>>b;
 	s=a+b;
 	cout<<"a soma desses numeros e:"<<s;
 	if(s>=10){
 		n=s+5;
 		cout<<"\nresultado +5:"<<n;
	 }
	if(s<=9){
		n=s-7;
		cout<<"\nresultado -7:"<<n;
	}
}

