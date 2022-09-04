<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php    date_default_timezone_set('America/Sao_Paulo');
    $dia = new DateTime($_GET['data']);
    $hj = new DateTime(date('Y-m-d'));
    
    $intervalo = $hj->diff($dia);
    $qtd_dias = $intervalo->format('%a');
    echo $qtd_dias;
?>
</body>
</html>