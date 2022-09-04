<!-- http://localhost/site/exemplo1.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tamanho de string</title>
</head>
<body>
<?php
    $nome = "Fulano Tal";    
    $tamanhoNome = str_word_count($nome);
    
    $tamanhoMinimo = 5;
    
    echo "O nome é $nome <br>";
    
    if( $tamanhoNome >= $tamanhoMinimo ) {
        echo "O nome atende ao padrão.";
    } else {
        echo "O nome precisa ter no mínimo $tamanhoMinimo palavras.";
    }
?>
</body>
</html>






