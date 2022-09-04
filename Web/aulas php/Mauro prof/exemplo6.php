<!-- http://localhost/site/exemplo1.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tamanho de string</title>
    <style>
        #enc {
            color: red;
        }
    </style>
</head>
<body>
    
<?php
    $texto = "O pintor Edmilson Alves de Oliveira, de 55 anos, foi morto pelos pit bulls da família nesta segunda-feira (11), no setor Barra Vento, em Goiânia. Segundo a família, os cães começaram a mordê-lo quando ele foi fechar o portão da casa e não soltaram mesmo com as tentativas do enteado e da esposa em afastá-lo dos animais.";
    
    $palavra = "família";
    
    $troca = "<span id=\"enc\">$palavra</span>";
    
    $novoTexto = str_replace($palavra, $troca, $texto);
    
    echo $novoTexto;
?>
</body>
</html>






