<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>recebe</title>
</head>
<body>
    <?php
    date_default_timezone_set('America/Sao_Paulo');
    $data = date("YmdHis");
    echo $data; //  Imprime 2019
    
$diretorio = "Academia/";
$destino = $diretorio . basename($_FILES["arquivo"]["name"]);
 $tipo = strtolower(pathinfo($destino,PATHINFO_EXTENSION));

if($tipo != "jpg"&&"srg"&&"bmp"&&"png"&&"ico" ) {
    echo "Aceitamos apenas jpg,srg,bmp,png,ico, desculpe.";
    die("\nErro, a página morreu aqui mesmo!");
}

if (move_uploaded_file($_FILES["arquivo"]["tmp_name"], $destino)) {
    echo "\nO arquivo ". basename( $_FILES["arquivo"]["name"]). " foi enviado.";
} else {
    echo "Erro no envio.";
}
?>
</body>
</html>