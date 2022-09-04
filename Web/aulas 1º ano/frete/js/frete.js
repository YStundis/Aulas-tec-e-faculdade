window.onload = function() {
    inicia();
}

function inicia() {
    document.getElementById("cep").addEventListener("keyup", buscaDados);
}

function buscaDados() {
    var cep = document.getElementById("cep").value;
    
    if( cep.length == 8 ) {
        var endereco = "https://viacep.com.br/ws/" + cep + "/json/";
        
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                preencheDados(this.responseText);
            }
        };
        xhttp.open("GET", endereco, true);
        xhttp.send();
    }
}

function preencheDados(texto) {
    var objeto = JSON.parse(texto);
    
    document.getElementById("rua").value = objeto.logradouro;
    document.getElementById("numero").value = objeto.gia;
    document.getElementById("bairro").value = objeto.bairro;
    document.getElementById("cidade").value = objeto.localidade;
    document.getElementById("estado").value = objeto.uf;
    
    
    
    calculaFrete(objeto.cep);
}

function calculaFrete(cep) {
    cep = cep.replace("-","");
    
    var cep5 = Math.trunc( cep / 1000 );
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    