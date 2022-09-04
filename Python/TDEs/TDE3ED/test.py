p = []

i = 1
while i != 0:

    print("\nSoma(1) | Subtração(2) | Multiplicação(3) | Divisão(4) | Sair(5)")
    op = int(input("Qual opção deseja: \n"))

    if (op == 1):
        numero = float(input("\nDigite um numero: "))
        p.append(numero)

        numer = float(input("\nDigite outro numero: "))
        p.append(numer)

        s = p[0] + p[1]

        print("Soma: ",s)

    elif (op == 2):
        numero = float(input("\nDigite um numero: "))
        p.append(numero)

        numer = float(input("\nDigite outro numero: "))
        p.append(numer)

        sub = p[0] - p[1]

        print("Sub: ",sub)

    elif (op == 3):
        numero = float(input("\nDigite um numero: "))
        p.append(numero)

        numer = float(input("\nDigite outro numero: "))
        p.append(numer)

        m = p[0] * p[1]

        print("Mult: ",m)

    elif (op == 4):
        numero = float(input("\nDigite um numero: "))
        p.append(numero)

        numer = float(input("\nDigite outro numero: "))
        p.append(numer)

        d = p[0] / p[1]

        print("Div: ",d)

    elif (op == 5):
        print("TCHAU")
        i = 0

    else:
        print("ERRO")


