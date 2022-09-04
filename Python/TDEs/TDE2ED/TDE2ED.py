w = 0
while w == 0:
    ordem = int(input("Qual ordem de matriz deseja calcular agora?\nPara sair digite 0\n"))

    if ordem == 1:
            oi = float(input("\nDigite o valor da matriz de 1ª ordem: "))
            print("\nO Determinate é: ",oi)
            print("\nO determinante de uma matriz de Ordem 1\nÉ igual ao próprio elemento da matriz\nPois esta apresenta apenas uma linha e uma coluna.\n")

    elif ordem == 2:
        numeros = list(range(4))
        for i in range(4):
            numeros[i] = int(input("Digite o valor da matriz: "))

        d = ((numeros[0] * numeros[3]) - (numeros[1] * numeros[2]))
        print("\nO determinante é: ", d, "\n")

    elif ordem == 3:
        numeros = list(range(9))
        for i in range(9):
            numeros[i] = int(input("Digite o valor da matriz: "))

        d0 = (numeros[0] * numeros[4] * numeros[8])
        d1 = (numeros[1] * numeros[5] * numeros[6])
        d2 = (numeros[2] * numeros[3] * numeros[7])

        d3 = (numeros[1] * numeros[3] * numeros[8])
        d4 = (numeros[0] * numeros[5] * numeros[7])
        d5 = (numeros[2] * numeros[4] * numeros[6])

        d6 = (d0 + d1 + d2)
        d7 = (d3 + d4 + d5)

        d8 = (d6 - d7)

        print("\nO determinante é: ", d8, "\n")

    elif (ordem >= 4) or (ordem < 0):
        print("\n\nDIGITOU ERRADO\n\n")

    else:
        print("\n\nValeu Falo\n\n")
        w = 1