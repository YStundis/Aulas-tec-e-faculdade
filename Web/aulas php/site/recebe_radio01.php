<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    <style>
        img { width: 50%; }
    </style>
</head>
<body>
    <h1>Aproveite:</h1>
<p>
<?php
    switch( $_GET['alimentacao'] ) {
        case 'oni':
            echo "<img src='img/completo.jpg' alt='Prato completo'>";
            break;
        case 'car':
            echo '<img src="img/carne.jpg" alt="Carne">';
            break;
        case 'her':
            echo '<img src="img/vegano.jpg" alt="Vegano">';
            break;
    }
?>
</p>
</body>
</html>