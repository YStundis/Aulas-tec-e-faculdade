p = []

i = 1
while i != 0:

    print("Adicionar um elemento na pilha(1)")
    print("Remover um elemento da pilha(2)")
    o = int(input("Ver pilha(3)\n"))

    if(o == 1):
        numero = int(input("Digite um numero para empilhar: "))
        p.append(numero)
        print("\nElemento inserido\n")
        i = int(input("\n1 para cotinuar, 0 para sair\n"))

    elif(o == 2):
        p.pop()
        print("\nElemento removido\n")
        i = int(input("\n1 para cotinuar, 0 para sair\n"))

    elif(o == 3):
        print("\nPilha: ", p)
        i = int(input("\n1 para cotinuar, 0 para sair\n"))

    else:
        print("\n\nDIGITOU ERRADO!\n\n")
        i = int(input("\n1 para cotinuar, 0 para sair\n"))
