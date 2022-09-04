/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,aum,saln;
 	
 	cout<<"digite seu salaro:";
 	cin>>sal;
 	if(sal<=300){
 	 	cout<<"digite a porcentegem do aumento:";
 		cin>>aum;
 		saln=sal*(aum/100)+sal;
 		cout<<"seu novo salario e:"<<saln;
 	 }
	if((sal>=299)&&(sal<=600)){
 	 	cout<<"digite a porcentegem do aumento:";
 		cin>>aum;
 		saln=sal*(aum/100)+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	if((sal>=599)&&(sal<=900)){
 	 	cout<<"digite a porcentegem do aumento:";
 		cin>>aum;
 		saln=sal*(aum/100)+sal;
 		cout<<"seu novo salario e:"<<saln;
 	 }
 	if(sal>=900){
 	 	cout<<"digite a porcentegem do aumento:";
 		cin>>aum;
 		saln=sal*(aum/100)+sal;
 		cout<<"seu novo salario e:"<<saln;
 	 } 
}

