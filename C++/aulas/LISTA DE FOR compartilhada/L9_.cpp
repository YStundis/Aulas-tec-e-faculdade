#include<iostream>
#include<locale.h>
#include<math.h>
#include<conio.h>
 using namespace std;
int main ()
 
  {
 setlocale(LC_ALL,"Portuguese");
 
 float s=0,i,n;
 cout<<"\nDigite um numero:";
 cin>>n;
 for(i=0;i<=n;i++){
 s=s+(1/i);
 cout<<"\n"<<s;	
 }
}
