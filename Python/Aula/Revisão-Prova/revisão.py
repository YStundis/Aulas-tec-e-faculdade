#PROVA: fila, pilha, arvore

# exemplo fila
vetor = list(range(2))
i = 0;

while (i <= 1):
vetor[i] = float(input("Digite um valor: "))
i += 1

print("1 - Soma: ")
print("2 - Subtração: ")
print("3 - Multiplicação: ")
print("4 - Divisão: ")
operacao = int(input("Qual operação você deseja: "))
resultado = 0;

if operacao == 1:
resultado = vetor[0] + vetor[1]
print(resultado)
elif operacao == 2:
resultado = vetor[0] - vetor[1]
print(resultado)
elif operacao == 3:
resultado = vetor[0] * vetor[1]
print(resultado)
elif operacao == 4:
resultado = vetor[0] / vetor[1]
print(resultado)
else:
print('Não foi possível realizar essa operação')

# exemplo pilha
pilha = []
i = 1
while i != 0:
print("Adicionar um elemento na pilha(1)")
print("Remover um elemento da pilha(2)")
o = int(input("Ver pilha(3)\n"))
if(o == 1):
numero = int(input("Digite um numero para empilhar: "))
pilha.append(numero)
print("\nElemento inserido\n")
i = int(input("\nContinuar? 0 para sair\n"))
elif(o == 2):
pilha.pop()
print("\nElemento removido\n")
i = int(input("\nContinuar? 0 para sair\n"))
elif(o == 3):
print("\nPilha: ", pilha)
i = int(input("\nContinuar? 0 para sair\n"))
else:
print("\n\nDIGITOU ERRADO!\n\n")1
i = int(input("\nContinuar? 0 para sair\n"))

# exemplo arvore
from anytree import Node, RenderTree
titu = Node("Marcas De Carro")
macl = Node("MacLaren", parent=titu)
m1 = Node("MacLaren Senna", parent=macl)
m2 = Node("MacLaren 720S", parent=macl)
m3 = Node("MacLaren P1", parent=macl)
prsc = Node("Porshce", parent=titu)
p1 = Node("Porshce Panamera Turbo S", parent=prsc)
p2 = Node("Porshce Taycan Turbo S", parent=prsc)
p3 = Node("Porshce 911 Turbo S", parent=prsc)
ferr = Node("Ferrari", parent=titu)
f1 = Node("La Ferrari", parent=ferr)
f2 = Node("Ferrari 458 Spyder", parent=ferr)
f3 = Node("Ferrari F40", parent=ferr)
print(titu)
Node('/macl')
for pre, fill, node in RenderTree(titu):
print("%s%s" % (pre, node.name))


