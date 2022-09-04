<!-- http://localhost/site/exemplo1.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tamanho de string</title>
</head>
<body>
<?php
    $senha = "xamArim";    
    $tamanhoStr = strlen($senha);
    
    $tamanhoMinimo = 50;
    
    echo "A senha é $senha <br>";
    
    if( $tamanhoStr >= $tamanhoMinimo ) {
        echo "Senha atende ao padrão.";
    } else {
        echo "A senha precisa ter no mínimo $tamanhoMinimo caracteres.";
    }
?>
</body>
</html>






