<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
      <div  class="table-container" >
   <?php
    session_start();
    $a = count($_SESSION['carrinho']);
    $item = $_GET['item'];
    $quant = $_GET['quantidade'];
    $g=1;
    $j=$_SESSION['carrinho'];
    if($a!=0){
    for($i=0; $i<$a; $i++){
        if($item == $j[$i]['produto']){
            $j[$i]['quantid'] += $quant;
            $g=0;
        }
    }
    }
    if($g==1){
        $j[$a]['produto']=($item);
        $j[$a]['quantid']=($quant);
    }
    $_SESSION['carrinho']=$j;
    
    ?>
    <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
    <tr>
        <th>Produtos</th>
        <th>Quantidade</th>
        </tr>
    <?php

    for($i=0; $i<count($_SESSION['carrinho']); $i++){
        echo "<tr>";
        echo "<td>";
        echo "\n",$j[$i]['produto'],"<br>";
         echo "</td>";
         echo "<td>";
        echo "\n",$j[$i]['quantid'],"<br>";
        echo "</td>";
        echo "</tr>";
    }
    
    ?></table>
    </div>
</body>
</html>



