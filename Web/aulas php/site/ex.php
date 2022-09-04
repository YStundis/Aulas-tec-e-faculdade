<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Que Top</title>
    <style>
        img{
            width: 50px;
        }
        span{
            font-weight: bold;
        }
    </style>
    
</head>
<body>
    <h1>Carrinho:</h1>
    
    <table border="3">
        <tr>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Preço Unitário</th>
            <th>Valor Total</th>
        </tr>
        
    <?php
        $conta = 0;
        $carrinho = [
            [
                "imagem" => "melancia.jpg",
                "descricao" => "Melancia do Agreste",
                "quantidade" =>  1,
                "preco" => "33.33",
            ],
            
            [
                "imagem" => "abacaxi.jpg",
                "descricao" => "Abacaxi de Monte Alegre",
                "quantidade" => 4,
                "preco" => "33.33",
            ],
            
            [
                "imagem" => "banana.jpg",
                "descricao" => "Banana Prata",
                "quantidade" => 1,
                "preco" => "33.33",
            ]
        ];
        
        
    
        for($i = 0; $i<count($carrinho); $i++){
            echo "<tr>";
            echo "<td><img src='{$carrinho[$i]['imagem']}'><span>{$carrinho[$i]['descricao']}</span></td>";
            echo "<td>{$carrinho[$i]['quantidade']}</td>";
            echo "<td>R$ {$carrinho[$i]['preco']}</td>";
        
            $total = $carrinho[$i]['quantidade'] * $carrinho[$i]['preco'];
            echo "<td>R$ $total</td>\n";
        
            echo "</tr>";
            
            $conta += $total;
            while($i == 2){
                $frete = $conta/10;
                $cred = 8.99;
                $fin = $conta + $frete - $cred;
                
                echo "</table>";
                echo "<br><br><b>Total:</b> R$ $conta";
                echo "<br><b>Frete:</b> R$ $frete";
                echo "<br><b>Crédito:</b> R$ $cred";
                echo "<br><br><b>Valor Final:</b> R$ $fin";
                $i = 3;
            }
        }
    ?>
    
</body>
</html>