import math
np = int(input("Quantos numeros: "))
i = 0
while ( i < np ):

    n = float(input("Digite um numero: "))

    if n > 0:
        print("positivo")
        i += 1

    elif n < 0:
        print("negativo")
        i += 1

    elif n == 0:
        print("0")
        i += 1