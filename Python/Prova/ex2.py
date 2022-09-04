import math

a = int(input("Quantos alunos: "))
n = list (range (5))
i = 0
while (i < a):

    nome = input("Nome do aluno: ")
    n[0] = float(input("Digite a 1ª nota: "))
    n[1] = float(input("Digite a 2ª nota: "))
    n[2] = float(input("Digite a 3ª nota: "))
    n[3] = float(input("Digite a 4ª nota: "))
    n[4] = float(input("Digite a 5ª nota: "))

    m = ( n[0] + n[1] + n[2] + n[3] + n[4] ) / 5

    print("\nA nota media do",nome," é: ",m,"\n")

    i += 1
