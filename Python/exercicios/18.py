import math

id = list(range(75))
for i in range(75):
    id = int(input("Digite sua idade: "))

    if id >= 18:
        print("Voce é maior de idade\n")

    else:
        print("Voce é menor de idade\n")