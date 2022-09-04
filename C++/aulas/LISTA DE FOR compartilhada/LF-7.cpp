#include<iostream>
#include<locale.h>
#include<conio.h>

using namespace std;

main ()
{
 setlocale(LC_ALL,"Portuguese");
 int q,i,s,d;
 for(s=1;s<=10;s++){
cout<<"\nDigite sua idade:\n";
cin>>i;
	if(i>=18){
    d=d+1;
    cout<<"\nO numero de pessoas que tem a idade de >=18:\n"<<d;
	}
   else if(i<=18){
   q=q+1;
    cout<<"\nO numero de pessoas que tem a idade de <=18:\n"<<q;}	
}

}
