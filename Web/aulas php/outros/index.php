<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>pagina</title>
</head>
<body>
   
   <table>
    <?php
    
    $carrinho = [
        
        ["memoria.jpg", "Memória RAM", "199.0"],
        ["hd.jpg", "Hard Disk", "173.0"],
        ["cpu.jpg", "Processador", "450.0"]
        
    ];
    
    foreach( $carrinho as $produto ) {
        
        echo "<tr>";
        
        foreach($produto as $item) {
            
        echo"<td>$item</td>";    
            
        }
        
        echo "</tr>\n";
        
    }
    
    
    ?>
    </table>
</body>
</html>