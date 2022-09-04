<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Data Recebida</title>
</head>
<body>
<?php
    if(isset($_GET['data'])) {
        echo $_GET['data'];
    } else {
        echo "Nenhuma data foi recebida.";
    }
?>
</body>
</html>