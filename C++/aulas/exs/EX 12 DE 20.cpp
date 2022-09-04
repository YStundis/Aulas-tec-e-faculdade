/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	    cout<<"Salario		gratificao";
 	    
 	    cout<<"\nate350		 100";
 	    cout<<"\n349ate600    75";
 	    cout<<"\n599ate900     50";
 	    cout<<"\nacimade900     35";
 	    cout<<"\nvc tera um descomto de 7% no salario de imposto";
 	
 	setlocale (LC_ALL,"portuguese");
 	
 	float sal,sali,salg,saln,grat,imp;
 	
 	cout<<"\ndigite seu salaro:";
 	cin>>sal;
 	if(sal<=350){
 		sali=sal*0.07;
 		cout<<"\nvai ser descomtado de seu salario:"<<sali;
 		salg=sal+100;
 		cout<<"\nseu salario com gratificaçao e:"<<salg;
 		saln=sal-sali+100;
 		cout<<"\nseu salario descomtando o imposto jumto com a gratifiçao e:"<<saln;
    }
    if((sal>=349)&&(sal<=600)){
 		sali=sal*0.07;
 		cout<<"\nvai ser descomtado de seu salario:"<<sali;
 		salg=sal+75;
 		cout<<"\nseu salario com gratificaçao e:"<<salg;
 		saln=sal-sali+75;
 		cout<<"\nseu salario descomtando o imposto jumto com a gratifiçao e:"<<saln;
    }
    if((sal>=599)&&(sal<=900)){
 		sali=sal*0.07;
 		cout<<"\nvai ser descomtado de seu salario:"<<sali;
 		salg=sal+50;
 		cout<<"\nseu salario com gratificaçao e:"<<salg;
 		saln=sal-sali+50;
 		cout<<"\nseu salario descomtando o imposto jumto com a gratifiçao e:"<<saln;
    }
	if(sal>=900){
 		sali=sal*0.07;
 		cout<<"\nvai ser descomtado de seu salario:"<<sali;
 		salg=sal+35;
 		cout<<"\nseu salario com gratificaçao e:"<<salg;
 		saln=sal-sali+35;
 		cout<<"\nseu salario descomtando o imposto jumto com a gratifiçao e:"<<saln;
    }
}
