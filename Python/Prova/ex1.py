import math

i = 0
while(i < 1):
    op = float(input("\n 1 - soma | 2 - subtração | 3 - multiplicação | 4 - divisão\n 5 - sair\n\n "))

    if op == 1:
        n = list(range(2))
        n[0] = float(input("Digite um numero: "))
        n[1] = float(input("Digite um numero: "))
        s = n[0] + n[1]
        print("\nO total da soma é: ",s)

    elif op == 2:
        n = list(range(2))
        n[0] = float(input("Digite um numero: "))
        n[1] = float(input("Digite um numero: "))
        su = n[0] - n[1]
        print("\nO total da subtração é: ", su)

    elif op == 3:
        n = list(range(2))
        n[0] = float(input("Digite um numero: "))
        n[1] = float(input("Digite um numero: "))
        m = n[0] * n[1]
        print("\nO total da multiplicação é: ", m)

    elif op == 4:
        n = list(range(2))
        n[0] = float(input("Digite um numero: "))
        n[1] = float(input("Digite um numero: "))
        d = n[0] / n[1]
        print("\nO total da divisão é: ", d)

    elif op == 5:
        print("tchau!")
        i += 1

    else:
        print("ERROU!")