#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Portuguese");
	int car,cars,c,cr,ro,a,completo,t,fp,pf,quan;
	cout<<"\nBem vindo � Concession�ria Stundis!"<<endl;
	cout<<"\n*Apenas carros da Volkswagen*"<<endl<<endl;
	cout<<"\nDigite o tipo que deseja: "<<endl;
	cout<<"\n(1) para Hatch, (2) para Sedan, (3)SUV, (4)Pick-up, (5)Station Wagon: ";
	cin>>car;
	if(car == 1){
		
		cout<<"\ntemos duas op��es de Hatch";
		cout<<"\ntemos o Golf(0) e Polo(1):";
		cin>>cars;
		
		if(cars == 0){
			
		cout<<"\nvoc� escolheu o Golf boa escolha";
		cout<<"\nvoc� tem 2 op��e o comfortiline(0) e o highline(1):";
		cin>>c;
		
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
			cout<<"\nar-condicionado(0)?";
			cin>>a;
			cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=95580;
			
		}
			if(c == 1){
			
			cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
			cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=94580;
		}
			
		}
		if(cars == 1){
			
			cout<<"\nvoc� escolheu o Polo boa escolha";
			cout<<"\nvoc� tem 2 op��es o polo comfortline(0) e o polo highline(1)";
			cin>>c;
			
			if(c == 0){
				
				cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
				cin>>cr;
				cout<<"\nroda de liga leve(0) ?";
			    cin>>ro;
			    	cout<<"ar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
				t=91200;
		}
			if(c == 1){
				
				cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
				cin>>cr;
				cout<<"\nroda de liga leve(0) ?";
			    cin>>ro;
			    	cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
				t=90200;
		}
		}
		
	}
	else if(car == 2){
		
		cout<<"\ntemos duas op��es de Sedan";
		cout<<"\ntemos o Virtus(0) e Jetta(1):";
		cin>>cars;
		
		if(cars == 0){
			
			cout<<"\nvoc� escolheu o Virtus boa escolha";
			cout<<"\nvoc� tem 2 op��es o comfortiline(0) e o higline(1)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
				t=96700;
		}
			if(c == 1){
				
				cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
				cin>>cr;
				cout<<"\nroda de liga leve(0) ?";
				cin>>ro;
					cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=95700;
		}
		}
		
		if(cars == 1){
			
			cout<<"\nvoc� escolheu o Jetta boa escolha";
			cout<<"\nvoc� tem 2 op��es o r-line(0) e o comfortiline(1)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nvar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=95400;
		}
			if(c == 1){
				
				cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
				cin>>cr;
				cout<<"\nroda de liga leve(0) ?";
				cin>>ro;
					cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=94400;
		}
		}
	
	}

	else if(car == 3){
		
		cout<<"\ntemos uma op��es de SUV";
		cout<<"\ntemos o Tiguan Allspace(0):";
		cin>>cars;
		
		if(cars == 0){
			
			cout<<"\nvoc� escolheu o Tiguan Allspace boa escolha";
			cout<<"\nvoc� tem 2 op��es o comfortline(0) e o r-line(1)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=92300;
		}
		if(c == 1){
			
			cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=91300;
		}
			
		}
	
	}
		else if(car == 4){
		
		cout<<"\ntemos duas op��es de Pick-up";
		cout<<"\ntemos o Saveiro(0) e Amarok(1):";
		cin>>cars;
		
		if(cars == 0){
			
				cout<<"\nvoc� escolheu o Saveiro boa escolha";
				cout<<"\nvoc� tem 2 op��es o cross(0) e o trendline(1)";
			    cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=72990;
		}
		if(c == 1){
			
			cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=71990;
		}
			
		}
		if(cars == 1){
			
			cout<<"\nvoc� escolheu o Amarok boa escolha";
			cout<<"\nvoc� tem 2 op��es o v6 highline s�rie extreme(0) e o SE(1)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=98900;
		}
		if(c == 1){
			
			cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=89900;
		}
			
		}
	}
		else if(car == 5){
		
		cout<<"\ntemos duas op��es de Station Wagon";
		cout<<"\ntemos o SpaceFox(0) e Golf Variant(1):";
		cin>>cars;
		
		if(cars == 0){
			
			cout<<"\nvoc� escolheu o SpaceFox boa escolha";
			cout<<"\nvoc� tem 1 op��o o trendline(0)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos vermelho perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=85500;
		}
			
		}
		if(cars == 1){
			
			cout<<"\nvoc� escolheu o Golf Variant boa escolha";
			cout<<"\nvoc� tem 2 op��es o comfortline(0) e o highline(1)";
			cin>>c;
			
		if(c == 0){
			
			cout<<"\nescolha a cor temos metalica(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=92700;
		}
		if(c == 1){
			
			cout<<"\nescolha a cor temos preto perolado(0) e branco puro(1)";
			cin>>cr;
			cout<<"\nroda de liga leve(0) ?";
			cin>>ro;
				cout<<"\nar-condicionado(0)?";
			cin>>a;
				cout<<"\nou voc� quer completo(0)?";
			cin>>completo;
			t=91700;
		}
			
		}
	}

	else{
		cout<<"\nERRO";
	}
	cout<<"\nseu carro ficou no pre�o de "<<t<<" reais";
	cout<<"\nvoc� vai escoler qual forma de pagamento dinheiro(0) ou cart�o(1)";
	cin>>fp;
	
	if(fp == 0){
		
		pf=t-500;
		
		cout<<"\nvoc� teve 500 reais de descomto o pre�o final �:"<<pf;
		
	}
	
		if(fp == 1){
			
			cout<<"\nvoc� pode dividir em 10x mas vai ter um juros de 1% cada parcela";
			cout<<"\nmudar de forma de pagamento (0)para dinheiro e (1)para comtinuar";
			cin>>fp;
			
			if(fp == 1){
				
				cout<<"\nquantas vezez voc� quer dividir:";
				cin>>quan;
				pf=t/quan;
				cout<<"\ncada parcela vai ficar com o pre�o de "<<pf<<" reais";
				
			}
		 
		 
		 
		 
		 if(fp == 0){
		 	
		 	
		 	pf=t-500;
		 	
		 	cout<<"\nvoc� teve 500 reais de descomto o pre�o final �:"<<pf;
		 	
		 }
	}	
}
