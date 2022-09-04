<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Começo</title>
</head>
<body>
<?php
    session_start();
    
    $vetor = array();
    
    array_push($vetor, "Iphone");
    //$vetor[0] = "Iphone";
    
    array_push($vetor, "Samsung");
    //$vetor[1] = "Samsung";
    
    $_SESSION['carrinho'] = $vetor;
?>
</body>
</html>