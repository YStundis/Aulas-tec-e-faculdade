import math

x = 0
n = list(range(80))
for i in range(80):
    n[i] = float(input("Digite um numero: "))

    if (n[i] >= 10) and (n[i] <= 150):
        x += 1

print("Entre esses numero digitados contém ",x,", no intervalo entre 10 e 150")
