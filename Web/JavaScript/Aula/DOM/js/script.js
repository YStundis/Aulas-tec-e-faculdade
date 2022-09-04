// Variáveis

//Versão antiga ou pré ES6
//var a;

//Declaração de variáveis pós ES6
let a;

//Declaração de constantes 
const b = 15;

a = 10;
console.log("Teste" + a + " - " + typeof a);

a = "Maria";
console.log("Teste" + a + " - " + typeof a);

a = Array(0, 1, 2);
//a = [0, 1, 2];
console.log("Teste" + a + " - " + typeof a);

if(b == 15){
    let c = "josé";
    console.log("Acertou miseravi" + a);
}else{
    let c = "Joaquina";
    console.log("Só que não" + a);
}

//console.log("Variavel C " + c);


// Manipulação do DOM - Document Object Model


let p_teste = document.getElementById('teste');

console.log(p_teste);
console.log(typeof p_teste);

p_teste.innerHTML = 'abacaxi';


// cria um vetor/HTMLCollection de todas tags 'paragrafo'
let p_paragrafo = document.getElementsByClassName('paragrafo');

console.log(p_paragrafo);

//Pega o primeiro elemento/objeto/posição do vetor 
p_paragrafo[0].innerHTML = "Novo texto do Sub título"


let p_todos = document.getElementsByTagName('p');

console.log(p_todos);

for(let i = 0 ; i < p_todos.length ; i++){
    p_todos[i].style.backgroundColor = "red";
    p_todos[i].innerHTML = 'Texto alterado';
}


//let h1 = document.getElementsByTagName('h1');
let h1 = document.querySelector('h1');
h1.innerHTML = "Trocando de Título"

let h2 = document.querySelector('h2.paragrafo');
h1.innerHTML = "Trocando de Sub Título"


let p_paragrafo_home_container = document.querySelector('#home .container p.paragrafo');

console.log(p_paragrafo_home_container);

