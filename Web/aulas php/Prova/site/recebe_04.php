<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php
    if(isset($_GET['blusa'])) {
        echo "Vai usar blusa<br>";
    } 
    if(isset($_GET['guarda'])) {
        echo "Vai usar guarda-chuva<br>";
    } 
    if(isset($_GET['capa'])) {
        echo "Vai usar capa<br>";
    } 
?>
</body>
</html>