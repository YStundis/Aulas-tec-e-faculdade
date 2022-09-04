#include <iostream>
#include <locale.h>
using namespace std;

//tabuada 

int main(){
	setlocale(LC_ALL, "Portuguese");
	
	int  tabuada[99],i,k=0,j;
	
	for(i=2;i<11;i++){
		cout<<"---------------------"<<endl;
		
		cout<<"tabuada do "<<i<<endl;
		
		for(j=1;j<11;j++){
			tabuada[k]=j*i;
			cout<<tabuada[k]<<endl;
			k++;
		}
	}
}
	
