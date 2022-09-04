<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    
    <style>
        
        
             body{
        background-color : <?php echo "{$_GET['cor']}";  ?>;
            
            
        }   
    <?php
        
    switch( $_GET['cor'] ) {
        case 'red':
            
            
            echo "$red";
            
            break;
            
        case 'blue':
            
            echo "$blue";
            
            break;
            
        case 'green':
            
            echo "$green";
            
            break;
    }

            ?>

</p>
    </style>
</head>
<body>

<p>

</body>
</html>