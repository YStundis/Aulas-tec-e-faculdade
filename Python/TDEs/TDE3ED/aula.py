pilha = [0, 1]
print("pilha: ", pilha)

i = 1
while i != 0:
    numero = int(input("digite um numero para empilhar: "))
    pilha.append(numero)
    print("inserindo um elemento: ", pilha)

    pilha.append(13)
    print("inserindo um elemento: ", pilha)

    i = int(input("cotinuar? 0 para sair"))

    pilha.pop()
    print("removendo um elemento: ", pilha)
