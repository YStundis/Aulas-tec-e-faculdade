<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kabum</title>
    <style>
        img {
            width: 50px;
        }
        span {
            font-weight: bold;
        }
        
        span#melhor {
            font-size: 48px;
        }
    </style>
</head>
<body>
    <h1>Carrinho:</h1>
    
    <table border="1">
        <tr>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Preço Unitário</th>
            <th>Valor Total</th>
        </tr>
<?php
    $carrinho = [
        [
            "imagem" => "melancia.jpg",
            "descricao" => "Melancia do Agreste",
            "quantidade" => 2,
            "preco" => "19.99"
        ],
        [
            "imagem" => "abacaxi.jpg",
            "descricao" => "Abacaxi de Monte Alegre",
            "quantidade" => 3,
            "preco" => "9.99"
        ],
        [
            "imagem" => "banana.jpg",
            "descricao" => "Banana Prata",
            "quantidade" => 5,
            "preco" => "4.99"
        ]        
    ];
        
    for($i = 0; $i < count($carrinho); $i++) {
        echo "<tr>";
        echo "<td><img src='{$carrinho[$i]['imagem']}'><span>{$carrinho[$i]['descricao']}</span></td>";
        echo "<td>{$carrinho[$i]['quantidade']}</td>";
        echo "<td>{$carrinho[$i]['preco']}</td>";
        
        $total = $carrinho[$i]['quantidade'] * $carrinho[$i]['preco'];
        echo "<td>R$ $total</td>\n";
        
        echo "</tr>";
    }
    
?>
        
    </table>
    
    
</body>
</html>












