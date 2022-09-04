#include<iostream>
#include<locale.h>
#include<conio.h>

using namespace std;

main ()
{
 setlocale(LC_ALL,"Portuguese");
 
 int c,i;

 for(i=1000;i<=2000;i++){
    c=i%11;
if(c==5){
	cout<<"\n"<<i;
} }

}
