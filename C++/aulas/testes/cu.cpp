#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int x = 12;
	while(x >= 0){
		cout<<x<<endl;
		x--;
	}
}
