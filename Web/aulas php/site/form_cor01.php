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
    <form action="recebe_cor01.php">
        <input type="radio" name="cor" value="red" onclick="habilitaBotao()">Vermelho <br>
        <input type="radio" name="cor"
        value="blue" onclick="habilitaBotao()">Azul <br>
        <input type="radio" name="cor" value="green" onclick="habilitaBotao()">Verde <br>
        <input id="botao" type="submit" disabled>
    </form>
</body>
</html>