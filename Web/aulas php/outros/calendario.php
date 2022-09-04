<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>pagina1º</title>
</head>
<body>
    
    <?php
    
    
    
    $data = date('D');
    
    switch ($data) {
            
        case  "Mon":
                echo "Segunda - feira<br>";
            break;
            
        case "Tue":
                echo "Terça - feira<br>";
            break;
            
        case "Wed":
                echo "Quarta - feira<br>";
            break;
            
        case "Thu":
                echo "Quinta - feira<br>";
            break;
            
        case "Fri":
                echo "Sexta - feira<br>";
            break;
            
        case "Sat":
                echo "Sabado<br>";
            break;
            
        case "Sun":
                echo "Domingo<br>";
            break;
            
            
            
            
            
    }
    
    
    ?>
    
    
    
</body>
</html>