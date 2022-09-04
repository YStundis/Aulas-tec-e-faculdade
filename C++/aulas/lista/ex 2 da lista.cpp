/**/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main (){
 	
 	setlocale(LC_ALL,"portuguese");
	 
	 int i,s,n;
	 
	 cout<<"digite um numero:";
	 cin>>n;
	
	 for(i=1;i<=n;i++){
		s=s+(1/i);
	}
	 cout<<"a soma é:"<<s;
}

