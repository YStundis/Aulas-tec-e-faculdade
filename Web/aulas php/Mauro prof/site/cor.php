<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cor</title>

</head>
<body>
   
    <style>
        
       
        
        body{
        background-color : <?php echo "{$_GET['cor']}";  ?>;
            
            
        }   
    

</style>

 <?php
    echo "Cor selecionada: {$_GET['cor']}";  
    
    
    
?>



</body>
</html>