import math
np = int(input("Quantas pessoas: "))
i = 0
x = 0
while ( i < np ):

    n = input("Nome: ")
    s = input("Sexo: ")
    d = input("Idade: ")
    ss = input("Saude: ")

    i += 1

    if ( ss == 'boa' ) and ( d == '18' ):
            print("Apto")
            x += 1
    else:
        print("Não apto")

print("Total aptos: ",x,", de ",np)
