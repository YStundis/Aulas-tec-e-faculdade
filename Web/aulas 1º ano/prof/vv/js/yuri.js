var total = 50;
var quantidade = 5;

window.onload = function(){ main(); };

function start() {
    var botao = document.getElementById("btn_soma");
    botao.addEventListener("click", recebe);    
}

function media() {
    var obj_media = document.getElementById("media");
    var media = total / quantidade;
    obj_media.innerHTML = media;
}

function recebe() {
    var obj_nota = document.getElementById("nota");
    var notaDigitada = obj_nota.value;
    
    total += parseFloat(notaDigitada);
    document.getElementById("total").innerHTML = total;
    quantidade++;
    
    media();
    limpar();
}

function limpar(){
    document.getElementById("nota").value = "";
}