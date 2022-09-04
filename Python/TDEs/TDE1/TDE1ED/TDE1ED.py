
a = float(input("Digite o número que representa A:"))
b = float(input("Digite o número que representa B:"))
c = float(input("Digite o número que representa C:"))

delta = float((b*b) - (-4 * a) * c)
print("\nDelta: ", delta)

raiz = float(delta) ** 0.5
print(f'\nA raiz quadrada de {delta} é {raiz}\n')

x1 = float((-b + raiz ) / (2 * a))
x2 = float((-b - raiz ) / (2 * a))

print("X': ", x1)
print("X'': ", x2)