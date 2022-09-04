/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
	float vals,s;
	
	cout<<"digite a senha:";
	cin>>s;
	cout<<"digite que dia/mes/ano q vc fez essa senha nesta ordem dia-mes-ano sem espaco,virgula,pomto ou algo do tipo:";
	cin>>vals;
	if(vals<=7052018){
		cout<<"senha vencia sem acesso";
	}
	if(vals>=8052018){
		cout<<"sua senha nao esta vemcida acesso permitido";
	}
}
