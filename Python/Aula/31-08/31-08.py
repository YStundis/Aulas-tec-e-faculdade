print("calculadora de imc")
altura = float(input("digite a altura: "))
peso = float(input("digite o peso: "))
imc = peso / (altura ** 2)

if imc >= 40:
    print("obsidade morbida")
    print("imc: {: .2f}".format(imc))

elif (imc < 40) and (imc >= 35):
    print("obesidade grau II")
    print("imc: {: .2f}".format(imc))

elif (imc < 35) and (imc >= 30):
    print("obsidade grau I")
    print("imc: {: .2f}".format(imc))

elif (imc < 30) and (imc >= 25):
    print("sobre peso")
    print("imc: {: .2f}".format(imc))

elif (imc < 25) and (imc >= 20):
    print("magro")
    print("imc: {: .2f}".format(imc))

else:
    print("muito magro")
    print("imc: {: .2f}".format(imc))


