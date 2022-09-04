#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int div = 0;
	
	for(int i = 1; i <= 50; i++, div = 0){
		
		for(int j = 1; j <= 50; j++){
			if(i % j == 0){
				div++;
			}
		}
		
		if(div == 2){
			cout<<endl<<i;
		}
	}
}
