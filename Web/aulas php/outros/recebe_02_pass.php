<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recebe senha</title>
</head>
<body>
    
    <?php
    echo date("H:m d/m/Y");
    
    if( isset($_GET['senha']) ) {
        if( $_GET['senha'] != '' ) {
            echo "<br>Olá {$_GET['senha']}";    
        } else {
            echo "<br>Campo vazio";
        }            
    } else {
        echo "<br>Acesso inválido! <a href='form_02_pass.php'>Acesse aqui</a>";
    }
    
?>
    
    
    
</body>
</html>