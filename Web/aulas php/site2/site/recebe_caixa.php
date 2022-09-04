<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recebe Seleção</title>
</head>
<body>
<?php
    if(isset($_GET['maca'])) {
        echo "Maçã selecionada <br>";
    }  
    if(isset($_GET['melancia'])) {
        echo "Melancia selecionada";
    }
?>
</body>
</html>