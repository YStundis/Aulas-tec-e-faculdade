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
    
    if(( $hora > 6 ) && ( $hora <=12)) {
        echo "Bom dia!<br>";
    }
    
    if(( $hora > 12 ) && ( $hora <=17)) {
        echo "Boa tarde!<br>";
    }
    
    
    elseif (( $hora > 17 ) && ( $hora <=23)) {
        
        echo "Boa noite!<br>";
    }
    
    else{
        
        echo "Boa madrugada!<br>";
    }
    
    
    echo "<br>Hora: $hora";
    
    ?>
</body>
</html>