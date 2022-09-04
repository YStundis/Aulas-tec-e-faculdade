const demo = document.getElementsById("demo");
const demo2 = document.getElementsById("demo2");

function multiplica(n1, n2){
    return n1 * n2;
}

function soma(n1, n2){
    demo2.innerHTML = n1 + n2;
    //return n1 + n2;
}

demo.innerHTML = multiplica(7, 5);

soma(7, 5);

soma(9, 6);

function recursivo(contador){

    console.log(contador);

    if(contador > 1){
        contador --;
        recursivo(contador);
    }
}

recursivo(150);












