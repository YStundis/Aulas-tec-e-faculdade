var total = 0;
var quantidade = 0;

window.onload = function() { main(); };

function main() {
    var botao = document.getElementById("btn_soma");
    botao.addEventListener("click", recebe);
}

function media() {
    var objetoMedia = document.getElementById("media");
    var media = total / quantidade;
    objetoMedia.innerHTML = media;
}

function recebe() {
    var objetoNota = document.getElementById("nota");
    var notaDigitada = objetoNota.value;
    
    total = total + parseFloat(notaDigitada); 
    document.getElementById("total").innerHTML = total;
    
    quantidade = quantidade + 1; 
    
    media();
    limpar();
}

function limpar() {
    document.getElementById("nota").value = "";
}
