<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recebe texto</title>
</head>
<body>
<?php
    echo date("H:m d/m/Y");
    
    if( isset($_GET['usuario']) ) {
        if( $_GET['usuario'] != '' ) {
            echo "<br>Olá {$_GET['usuario']}";    
        } else {
            echo "<br>Campo vazio";
        }            
    } else {
        echo "<br>Acesso inválido! <a href='form_01_text.php'>Acesse aqui</a>";
    }
    
?>
</body>
</html>