<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Comando if</title>
</head>
<body>
    <?php
    // ajusta o fuso horário para o Brasil
    date_default_timezone_set('America/Sao_Paulo');
    
    $hora = date('H');
    
    if( $hora < 6 || $hora > 17) {
        echo "Tenha uma boa noite!<br>";
    }
    else if ($hora > 13 || $hora < 18) {
        echo "Boa tarde!<br>";
    }
    else {
        echo "Tenha um bom dia!";
    }
    
    ?>
</body>
</html>