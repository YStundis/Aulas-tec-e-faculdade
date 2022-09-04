<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intervalo recebido</title>
</head>
<body>
<?php
    if( isset($_GET['valor'])) {
        echo "Nota recebida: " . $_GET['valor'];
    }  
?>
</body>
</html>