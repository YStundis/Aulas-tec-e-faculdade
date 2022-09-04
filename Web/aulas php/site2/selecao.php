<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Caixa de seleção</title>
</head>

<body>
    <h2>Selecione os produtos desejados:</h2>
    <table>
        <form action="recebe_caixa.php">
            <tr>
                <td>
                    <img src="imagens/maca.jpg" width="75px" alt="">
                </td>
                <td>
                    <input type="checkbox" name="maca">
                </td>
                
                <td>
                 <br> Quantidade: 0 <input type="range" name="quantidade" min="0" max="10"> 10
                </td>
            </tr>
            <tr>
                <td>
                    <img src="imagens/melancia.jpg" width="75px" alt="">
                </td>
                <td>
                    <input type="checkbox" name="melancia">
                </td>
                
                <td>
                 <br> Quantidade: 0 <input type="range" name="quantidade" min="0" max="10"> 10
                </td>
                
                </tr>
                
                <tr>
                
                <td>
                    <img src="imagens/banana.jpg" width="75px" alt="">
                </td>
                <td>
                    <input type="checkbox" name="banana">
                </td>
                
                <td>
                 <br> Quantidade: 0 <input type="range" name="quantidade" min="0" max="10"> 10
                </td>
                
                   
                    <form action="recebe_caixa.php">
                    <br> Digite a data da entrega:<input type="date" name="data">
                    <input type="submit">
                    </form>
                    

                
            </tr>
            <tr>
                <td colspan="2"><input type="submit"></td>
            </tr>

        </form>
    </table>
</body>

</html>
