document.getElementById("button").addEventListener("click", function(){copia();});
function copia() {
document.getElementById("p").innerHTML= document.getElementById("input").value;
}