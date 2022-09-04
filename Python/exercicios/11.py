import math
pc = float(input("digite o preço de custo do produto: "))
pdc = float(input("digite o percentual de acrescimo: "))
p = pdc / 100
v = p * pc
vv = pc + v
print("o valor de venda será: ",vv)