import math

f = 0
m = 0
o = 0
n = list(range(56))
for i in range(56):
    n = (input("Digite seu nome: "))
    s = (input("Digite seu sexo(para masculino 'm', feminio 'f', outro 'o'): "))

    if s == 'm':
        m += 1

    elif s == 'f':
        f += 1

    else:
        o += 1

    print(n,"é",s)

print("A",m," Homens,",f," Mulheres,",o," Outros")
