<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cor</title>
    <script>
    function habilitaBotao() {
        var btn = document.getElementById("botao");
        btn.disabled = false;
    }
    </script>
</head>
<body>
    <form action="recebe_cor01.php">
        Selecione a cor: <input type="color" name="cor" > <br>
        <input type="submit" name="Enviar">
      
    </form>
</body>
</html>