const form = document.getElementById('form_cadastro');

form.onsubmit = function(e){
    e.preventDefault();
    
    const name = document.getElementById('name');
    const email = document.getElementById('email');
    const dados_cadastrar = document.getElementsById('dados_cadastrar')

    //console.log(form);

    //const name = this.querySelector('#name');
    //const email = form.getElementById('email');

    dados_cadastrar.innerHTML = name.value + ' - ' + email.value;

    //alert(name.value + ' - ' + email.value);
};

/*form.addEventListener('submit', function(e){
    e.preventDefault();
    
    const name = document.getElementById('name');
    const email = document.getElementById('email');
    const dados_cadastrar = document.getElementsById('dados_cadastrar')

    dados_cadastrar.innerHTML = name.value + ' - ' + email.value;
});*/



const form_google = document.getElementById('forme_google');

form_google.onsubmit = function(e){
    //e.preventDefault();

    alert("formulario enviando ao google");
};