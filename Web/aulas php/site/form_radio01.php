<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Radio</title>
    <script>
    function habilitaBotao() {
        var btn = document.getElementById("botao");
        btn.disabled = false;
    }
    </script>
</head>
<body>
   Você é:
    <form action="recebe_radio01.php">
        <input type="radio" name="alimentacao" value="oni" onclick="habilitaBotao()">Onívoro <br>
        <input type="radio" name="alimentacao"
        value="car" onclick="habilitaBotao()">Carnívoro <br>
        <input type="radio" name="alimentacao" value="her" onclick="habilitaBotao()">Herbívoro <br>
        <input id="botao" type="submit" disabled>
    </form>
</body>
</html>