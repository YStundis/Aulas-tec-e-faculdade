//const link = document.querySelector('a');
const link = document.querySelector('link');


link.onclick = function(){
    alert('clicou aqui');
};

link.onmouseout = function(){
    console.log('mouse saiu do link')
};

link.onmouseenter = function(){
    console.log('mouse entrou do link')
};

const button = document.getElementById('button');

button.addEventListener("click", function(){
    alert('clicou no botão');

    //window.open('http://google.com', 'teste');
    //window.open('http://globo.com');

    //window.print();
});

button.addEventListener("mouseout", function(){
    console.log('mouse saiu do botão');
});

button.addEventListener("mouseenter", function(){
    console.log('mouse entrou no botão');
});















