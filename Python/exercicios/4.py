import math
n = input("Digite o nome do vendedor: ")
sfx = float(input("Digite o salario fixo: "))
tv = float(input("Digite o total de vendas feitas no mes (em dinheiro) pelo vendedor: "))
s = sfx * 0.15
sm = sfx + s
print(n,", seu salario no final do mes será: ", sm)
