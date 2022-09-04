import math
n = input("Digite o nome do aluno: ")
a = float(input("Digite a primeira nota: "))
b = float(input("Digite a segunda nota: "))
c = float(input("Digite a terceira nota: "))

m = ( a + b + c ) / 3

if m >= 7:
    print(n,"sua nota media é: ",m,", voce esta aprovado")

elif m <= 5:
    print(n,"sua nota media é: ",m,", voce esta reprovado")

else:
    print(n,"sua nota media é: ",m,", voce esta de recuperação")
