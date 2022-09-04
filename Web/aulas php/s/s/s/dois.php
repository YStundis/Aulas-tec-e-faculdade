<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Começo</title>
</head>
<body>
<?php
    session_start();
    
    $vetor = $_SESSION['carrinho'];
    
    for($i = 0; $i < 2; $i++) {
        echo "<p>{$vetor[$i]}</p>";
    }
?>
</body>
</html>