<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Frutas</title>
</head>
<body>
<?php
    session_start();
    
    if(isset($_SESSION['carrinho']) == false) {
        $_SESSION['carrinho'] = array();
    }
?>
    <a href="http://localhost/s/carrinho.php?fruta=uva"><img src="img/uva.jpg" alt="" width="120"></a>
    <a href="http://localhost/s/carrinho.php?fruta=laranja"><img src="img/laranja.jpg" alt="" width="120"></a>
    <a href="http://localhost/s/carrinho.php?fruta=pera"><img src="img/pera.jpg" alt="" width="120"></a> 
    <a href="http://localhost/s/carrinho.php?fruta=ferrari">Ferrari</a>
</body>
</html>