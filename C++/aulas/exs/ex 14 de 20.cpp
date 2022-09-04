/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,saln;  
 	
 	cout<<"digite seu salario:";
 	cin>>sal;
 	     if(sal<=300){
 		saln=sal*0.50+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	     if((sal>=299)&&(sal<=500)){
 		saln=sal*0.40+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	     if((sal>=499)&&(sal<=700)){
 		saln=sal*0.30+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	 	 if((sal>=699)&&(sal<=800)){
 		saln=sal*0.20+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	 	 if((sal>=799)&&(sal<=1000)){
 		saln=sal*0.10+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
	 	if(sal>=1000){
 		saln=sal*0.05+sal;
 		cout<<"seu novo salario e:"<<saln;
	 }
}

