window.onload = function () {
    //Var
    var campoHora = document.getElementById("hora");
    campoHora.innerHTML = Date();

    var d = new Date();
    var horaAtual = d.getHours();

    //Style
    if (horaAtual > 6 && horaAtual < 10) {
        campoHora.style.backgroundColor = "rgb(200,200,200)";
        campoHora.style.color = "rgb(50,50,50)";
    } else if (horaAtual < 18) {
        campoHora.style.backgroundColor = "rgb(150,150,150)";
        campoHora.style.color = "rgb(100,100,100)";
    } else {
        campoHora.style.backgroundColor = "rgb(100,100,100)";
        campoHora.style.color = "rgb(200,200,200)";
    }
}
