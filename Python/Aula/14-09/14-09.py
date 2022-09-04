import math

x=0
while x < 4:
    print(x)
    x += 1

print("\n----------\n")

y=0
for y in range(0,5,2):
    print(y)

print("\n----------\n")

meses = ["jan","fev","mar","abr","mai","jun","VETOR"]
for z in meses:
    print(z)

print("\n----------\n")
print("\n While \n")

i = 0
maior = 0
numeros = list (range (10))
while i < 10:
    numeros[i] = int(input("Nota: "))
    if numeros[i] > maior:
        maior = numeros[i]
    i += 1
print("A maior nota é: ", maior)

print("\n----------\n")
print("\n For \n")

maior = 0
numeros = list (range (10))
for i in range (0,10):
    numeros[i] = int(input("Nota: "))
    if numeros[i] > maior:
        maior = numeros[i]

print("A maior nota é: ", maior)

print("\n----------\n")
print("\nPosicoes\n")

maior = 0
posicoes = int(input("Quantas notas serão digitadas: "))
numeros = list (range (posicoes))
i=0
while i < posicoes:
    numeros[i] = int(input("Digite uma nota: "))
    if numeros[i] > maior:
        maior = numeros[i]
    i += 1
print ("A Maior Nota é: ",maior)

print("\n----------\n")
print("\nEX 28 da lista\n")

sm = int(input("Quantos salarios minimos vc recebe: "))

if sm < 3:
    print("Voce recebera um aumento de 50%")
    a = float(input("Qual o valor do seu salario: "))
    au = 50 / 100
    aum = 1 + au
    aumentoT = a * aum
    print("Salario com aumento: ", aumentoT)

elif sm >= 3 and sm <= 10:
    print(" Voce recebera um aumento de 20%")
    a = float(input("Qual o valor do seu salario: "))
    au = 20 / 100
    aum = 1 + au
    aumentoT = a * aum
    print("Salario com aumento: ", aumentoT)

elif sm > 10 and sm <= 20:
    print("Voce recebera um aumento de 15%")
    a = float(input("Qual o valor do seu salario: "))
    au = 15 / 100
    aum = 1 + au
    aumentoT = a * aum
    print("Salario com aumento: ", aumentoT)

else:
    print("Voce recebera um aumento de 10%")
    a = float(input("Qual o valor do seu salario: "))
    au = 10 / 100
    aum = 1 + au
    aumentoT = a * aum
    print("Salario com aumento: ", aumentoT)

