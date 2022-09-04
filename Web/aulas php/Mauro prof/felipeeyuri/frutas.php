<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Frutas</title>
</head>
<body>
<?php
    $frutas = array("abacaxi.jpg", "laranja.jpg", "maca.jpg", "melancia.jpg");
    
    $tamanho = count($frutas);
    $contador = 0;
    echo "<table border=\"1\">\n";
    while( $contador < $tamanho ) {
        echo "<tr>\n";
            
        $pos = 0;
        while($pos < 2){
            if($contador >= $tamanho){break;}
            
            echo "<td>" . "<img src=\"img/" . $frutas[$contador] . "\" width=\"100px\">". "</td>\n";
            $contador++;
            $pos++;
        }
        
        echo "</tr>\n";
    }
    echo "</table>";
?>
</body>
</html>