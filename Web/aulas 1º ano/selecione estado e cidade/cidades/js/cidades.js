window.onload = function() {
    iniciar();
}

function iniciar() {
    document.getElementById("estados").addEventListener("change", function() { mudouEstado(); });
}

function mudouEstado() {
    var valor = document.getElementById("estados").value;
    
    buscaCidades(valor);
}

function buscaCidades(v) {
    var endereco = "http://servicodados.ibge.gov.br/api/v1/localidades/estados/" + v + "/municipios";
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        preencheCidades(this.responseText);
    }
  };
  xhttp.open("GET", endereco, true);
  xhttp.send();
}

function preencheCidades(texto) {
    var objetoCidades = JSON.parse(texto);
    var cidades = document.getElementById("cidades");
    
    for(var cidade in objetoCidades) {
        cidades.innerHTML += '<option value="' + objetoCidades[cidade].nome + '">' + objetoCidades[cidade].nome + '</option>';
        
    }
}