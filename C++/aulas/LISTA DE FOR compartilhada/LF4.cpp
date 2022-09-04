#include<iostream>
#include<locale.h>
#include<conio.h>

using namespace std;

main ()
{
 setlocale(LC_ALL,"Portuguese");                                     
 int i,a,b,c,d;                                                        
 for(i=0;i<=5;i++){
 cout<<"\nDigite o 1º numero:";
 cin>>a;
 cout<<"\nDigite o 2º numero:";
 cin>>b;
 cout<<"\nDigite o 3º numero:";
 cin>>c;
 cout<<"\nDigite o 4º numero:";
 cin>>d;
 cout<<"primeiro numero:"<<a<<",segundo numero:"<<b<<",terceiro numero:"<<c<<",quarto numero:"<<d;
 cout<<"\n";
if((a>b)&&(a>c)&&(a>d)){
        if((b>c)&&(b>d)){
		    if(c>d){cout<<"primeiro numero:"<<a<<",segundo numero:"<<b<<",terceiro numero:"<<c<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<c<<",terceiro numero:"<<b<<",quarto numero:"<<a;}  
			if(d>c){cout<<"primeiro numero:"<<a<<",segundo numero:"<<b<<",terceiro numero:"<<d<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<d<<",terceiro numero:"<<b<<",quarto numero:"<<a;}
			}
        if((c>b)&&(c>d)){
		    if(b>d){cout<<"primeiro numero:"<<a<<",segundo numero:"<<c<<",terceiro numero:"<<b<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<b<<",terceiro numero:"<<c<<",quarto numero:"<<a;}  
			if(d>c){cout<<"primeiro numero:"<<a<<",segundo numero:"<<c<<",terceiro numero:"<<d<<",quarto numero:"<<b;
			        cout<<"primeiro numero:"<<b<<",segundo numero:"<<d<<",terceiro numero:"<<c<<",quarto numero:"<<a;}}
        if((d>c)&&(d>b)){
		    if(c>b){cout<<"primeiro numero:"<<a<<",segundo numero:"<<d<<",terceiro numero:"<<c<<",quarto numero:"<<b;
			        cout<<"primeiro numero:"<<b<<",segundo numero:"<<c<<",terceiro numero:"<<d<<",quarto numero:"<<a;}  
			if(b>c){cout<<"primeiro numero:"<<a<<",segundo numero:"<<d<<",terceiro numero:"<<b<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<b<<",terceiro numero:"<<d<<",quarto numero:"<<a;}
			}
    } 
if((b>a)&&(b>c)&&(b>d)){
        if((a>c)&&(a>d)){
		    if(c>d){cout<<"primeiro numero:"<<b<<",segundo numero:"<<a<<",terceiro numero:"<<c<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<c<<",terceiro numero:"<<a<<",quarto numero:"<<b;}  
			if(d>c){cout<<"primeiro numero:"<<b<<",segundo numero:"<<a<<",terceiro numero:"<<d<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<d<<",terceiro numero:"<<a<<",quarto numero:"<<b;}}
        if((c>a)&&(c>d)){
		    if(a>d){cout<<"primeiro numero:"<<b<<",segundo numero:"<<c<<",terceiro numero:"<<a<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<a<<",terceiro numero:"<<c<<",quarto numero:"<<b;}  
			if(d>c){cout<<"primeiro numero:"<<b<<",segundo numero:"<<c<<",terceiro numero:"<<d<<",quarto numero:"<<a;
			        cout<<"primeiro numero:"<<a<<",segundo numero:"<<d<<",terceiro numero:"<<c<<",quarto numero:"<<b;}}
        if((d>c)&&(d>a)){
		    if(c>a){cout<<"primeiro numero:"<<b<<",segundo numero:"<<d<<",terceiro numero:"<<c<<",quarto numero:"<<a;
			        cout<<"primeiro numero:"<<a<<",segundo numero:"<<c<<",terceiro numero:"<<d<<",quarto numero:"<<b;}  
			if(a>c){cout<<"primeiro numero:"<<b<<",segundo numero:"<<d<<",terceiro numero:"<<a<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<a<<",terceiro numero:"<<d<<",quarto numero:"<<b;}}
    }
if((c>a)&&(c>b)&&(c>d)){
        if((a>b)&&(a>d)){
		    if(b>d){cout<<"primeiro numero:"<<c<<",segundo numero:"<<a<<",terceiro numero:"<<b<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<b<<",terceiro numero:"<<a<<",quarto numero:"<<c;}  
			if(d>b){cout<<"primeiro numero:"<<c<<",segundo numero:"<<a<<",terceiro numero:"<<d<<",quarto numero:"<<b;
			        cout<<"primeiro numero:"<<b<<",segundo numero:"<<d<<",terceiro numero:"<<a<<",quarto numero:"<<c;}}
        if((b>a)&&(b>d)){
		    if(a>d){cout<<"primeiro numero:"<<c<<",segundo numero:"<<b<<",terceiro numero:"<<a<<",quarto numero:"<<d;
			        cout<<"primeiro numero:"<<d<<",segundo numero:"<<a<<",terceiro numero:"<<b<<",quarto numero:"<<c;}  
			if(d>a){cout<<"primeiro numero:"<<c<<",segundo numero:"<<b<<",terceiro numero:"<<d<<",quarto numero:"<<a;
			        cout<<"primeiro numero:"<<a<<",segundo numero:"<<d<<",terceiro numero:"<<b<<",quarto numero:"<<c;}}
        if((d>a)&&(d>b)){
		    if(a>b){cout<<"primeiro numero:"<<c<<",segundo numero:"<<d<<",terceiro numero:"<<a<<",quarto numero:"<<b;
			        cout<<"primeiro numero:"<<b<<",segundo numero:"<<a<<",terceiro numero:"<<d<<",quarto numero:"<<c;}  
			if(b>a){cout<<"primeiro numero:"<<c<<",segundo numero:"<<d<<",terceiro numero:"<<b<<",quarto numero:"<<a;
			        cout<<"primeiro numero:"<<a<<",segundo numero:"<<b<<",terceiro numero:"<<d<<",quarto numero:"<<c;}}
    } 
if((d>a)&&(d>b)&&(d>c)){
        if((a>b)&&(a>c)){
		    if(b>c){cout<<"primeiro numero:"<<d<<",segundo numero:"<<a<<",terceiro numero:"<<b<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<b<<",terceiro numero:"<<a<<",quarto numero:"<<d;}  
			if(c>b){cout<<"primeiro numero:"<<d<<",segundo numero:"<<a<<",terceiro numero:"<<c<<",quarto numero:"<<b;
			        cout<<"primeiro numero:"<<b<<",segundo numero:"<<c<<",terceiro numero:"<<a<<",quarto numero:"<<d;}}
        if((b>a)&&(b>c)){
		    if(a>c){cout<<"primeiro numero:"<<d<<",segundo numero:"<<b<<",terceiro numero:"<<a<<",quarto numero:"<<c;
			        cout<<"primeiro numero:"<<c<<",segundo numero:"<<a<<",terceiro numero:"<<b<<",quarto numero:"<<d;}  
			if(c>a){cout<<"primeiro numero:"<<d<<",segundo numero:"<<b<<",terceiro numero:"<<c<<",quarto numero:"<<a;
			        cout<<"primeiro numero:"<<a<<",segundo numero:"<<c<<",terceiro numero:"<<b<<",quarto numero:"<<d;}}
                                                                                                                          
		if((c>a)&&(c>b)){
		    if(a>b){cout<<"primeiro numero:"<<d<<",segundo numero:"<<c<<",terceiro numero:"<<a<<",quarto numero:"<<b;
			             cout<<"\nprimeiro numero:"<<b<<",segundo numero:"<<a<<",terceiro numero:"<<c<<",quarto numero:"<<d;}  
			if(b>a){cout<<"primeiro numero:"<<d<<",segundo numero:"<<c<<",terceiro numero:"<<b<<",quarto numero:"<<a;
			       cout<<"primeiro numero:"<<a<<",segundo numero:"<<b<<",terceiro numero:"<<c<<",quarto numero:"<<d;}}
			}
}
}






































