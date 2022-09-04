vetor = list(range(10))
pilha = []
i = 1
j = 0

while i != 0:

    print("\n1 - Fila")
    print("2 - Pilha")
    print("3 - Arvore")
    print("4 - Lista")
    print("5 - Sair")
    op = int(input("Qual método de organização de dados você deseja: "))
    j = 0

    if op == 1:
        while (j < 1):
            vetor[j] = int(input("\nDigite o valor que você deseja armazenar: "))
            print("\nInserido\n")
            ver = int(input("Ver valor inserido? 1 - sim | 2 - não "))
            if ver == 1:
                print("\nValor: ", vetor[0])
                j += 1
            elif ver == 2:
                print("\nTchau\n")
                i = 0
                j += 1

    elif op == 2:
        p = int(input("\nDigite o valor que você deseja armazenar: "))
        pilha.append(p)
        print("\nInserido\n")
        ver = int(input("Ver valor inserido? 1 - sim | 2 - não "))
        if ver == 1:
            print("\nValor: ", pilha)
            pilha.pop()
        elif ver == 2:
            print("\nTchau\n")
            i = 0

    elif op == 3:
        class NodoArvore:
            def __init__(self, chave=None):
                self.chave = chave

            def __repr__(self):
                return '%s' % (self.chave)

        arv = int(input("\nDigite o valor que você deseja armazenar: "))
        raiz = NodoArvore(arv)
        print("\nInserido\n")
        ver = int(input("Ver valor inserido? 1 - sim | 2 - não "))
        if ver == 1:
            print("\nValor: ", raiz)

        elif ver == 2:
            print("\nTchau\n")
            i = 0

    elif op == 4:
        while (j < 1):
            vetor[j] = int(input("\nDigite o valor que você deseja armazenar: "))
            print("\nInserido\n")
            ver = int(input("Ver valor inserido? 1 - sim | 2 - não "))
            if ver == 1:
                print("\nValor: ", vetor[0])
                j += 1
            elif ver == 2:
                print("\nTchau\n")
                i = 0
                j += 1

    elif op == 5:
        print("\nTchau\n")
        i = 0

    else:
        print("\nDigitou errado\n")
