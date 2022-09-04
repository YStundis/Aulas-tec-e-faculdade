<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Carrinho</title>
</head>
<body>
<?php
    session_start();
        
    $vetor = $_SESSION['carrinho'];
    
    // Pega o item passado
    $item = $_GET['fruta'];
    array_push($vetor, $item);
    
    // Exibe os elementos do carrinho
    for($i = 0; $i < count($vetor); $i++) {
        echo "<p>{$vetor[$i]}</p>";
    }
    
    $_SESSION['carrinho'] = $vetor;
?>    
</body>
</html>