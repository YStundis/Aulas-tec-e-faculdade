/*calendario*/

 #include<iostream>
 #include<locale.h>
 
 using namespace std;
 
 int main(){
 	
 	setlocale(LC_ALL,"portuguese");
 	
 	int d;
 	
 	cout<<"digite o dia do mes de maio:";
 	cin>>d;
 	switch(d){
 	case 1:cout<<"terça-feira";
 	break;
 	case 2:cout<<"quarta-feira";
 	break;
 	case 3:cout<<"quinta-feira";
 	break;
 	case 4:cout<<"sexta-feira";
 	break;
 	case 5:cout<<"sabado";
 	break;
 	case 6:cout<<"domingo";
 	break;
	case 7:cout<<"segunda-feira";
 	break;
 	case 8:cout<<"terça-feira";
 	break;
 	case 9:cout<<"quarta-feira";
 	break;
 	case 10:cout<<"quinta-feira";
 	break;
 	case 11:cout<<"sexta-feira";
 	break;
 	case 12:cout<<"sabado";
 	break;
 	case 13:cout<<"domingo";
 	break;
 	case 14:cout<<"segunda-feira";
 	break;
 	case 15:cout<<"terça-feira";
	break;
 	case 16:cout<<"quarta-feira";
 	break;
 	case 17:cout<<"quita-feira";
 	break;
 	case 18:cout<<"sexta-feira";
 	break;
 	case 19:cout<<"sabado";
	break;
 	case 20:cout<<"domingo";
 	break;
 	case 21:cout<<"segunda-feira";
 	break;
 	case 22:cout<<"terça-feira";
 	break;
 	case 23:cout<<"quarta-feira";
 	break;
 	case 24:cout<<"quinta-feira";
 	break;
 	case 25:cout<<"sexta-feira";
 	break;
 	case 26:cout<<"sabado";
 	break;
 	case 27:cout<<"domingo";
 	break;
 	case 28:cout<<"segunta-feira";
	break;
 	case 29:cout<<"terça-feira";
 	break;
 	case 30:cout<<"quarta-feira";
 	break;
	case 31:cout<<"quinta-feira";
 	break;
 	default:cout<<"voce digitou errado";
	 }
 }
