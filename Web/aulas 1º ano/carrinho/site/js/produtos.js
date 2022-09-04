window.onload = function() {
    inicia();
    localStorage.setItem("carrinho", JSON.stringify([]));
}

function inicia() {

document.getElementById("p1").addEventListener("click", function() {compra(1);});

document.getElementById("p2").addEventListener("click", function() {compra(2);});

document.getElementById("p3").addEventListener("click", function() {compra(3);});

}

function compra(produto) {
    // pega valor atual
    var vetor = JSON.parse(localStorage.getItem("carrinho"));
    // acrescenta produto
    vetor.push(produto);
    // salva valor novo
    localStorage.setItem("carrinho", JSON.stringify(vetor));
    
    frete(vetor.length);
}

function frete(quantidade) {
    // resolver o exercício
    // mostrar para o usuário a mensagem:
    // Frete: x reais
    // de acordo com a tabela:
    // de 1 a 2 produtos o frete é 1.99
    // de 3 a 5 produtos o frete é 1.54
    // mais 5 produtos o frete é 0.99 por produto
}