import math
p = list(range(40))
for i in range(40):
    pc = float(input("Digite o preco de custo: "))
    pv = float(input("Digite o preco de venda: "))

    if pv > pc:
        print("Lucro")
    elif pv < pc:
        print("prejuizo")
    elif pv == pc:
        print("empate")

    mc = pc / 40
    mv = pv / 40

    print("media de custo: ",mc,"\nMedia de venda: ",mv)