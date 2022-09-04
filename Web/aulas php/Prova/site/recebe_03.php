<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php
    $fruta = $_GET['fruta'];
    
    if( $fruta == 'melancia' ) {
        echo "Acertou!";
    } else {
        echo "Errou!";
    }
?>
</body>
</html>