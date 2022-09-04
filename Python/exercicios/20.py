import math
x = 0
i = 0
while i == 0:

    d = int(input("Digite o ano do veiculo(Para sair digite 0): "))

    if ( d <= 2000 ) and ( d > 0 ):
        print("O desconto sera de 12%")
        x += 1
        des = 12 / 100
        de = des * 20000
        vd = (des - de) * -1
        print("Valor com desconto: ",vd)

    elif d > 2000:
        print("O desconto sera de 7%")
        des = 7 / 100
        de = des * 60000
        vdv = (des - de) * -1
        print("Valor com desconto: ",vdv)

    else:
        print("TCHAU!")
        i += 1

print("Total de carro com ano até 2000: ", x)
