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
                    <img src="imagens/maca.jpg" width="75px" alt="">    <form action="">
           Quantidade: <br> 0<input type="range" name="valor" min="0" max="10">10
        
    </form>
                </td>
                <td>
                    <input type="checkbox" name="maca">
                </td>
            </tr>
            <tr>
                <td>
                    <img src="imagens/melancia.jpg" width="75px" alt="">    <form action="">
           Quantidade: <br> 0<input type="range" name="valor" min="0" max="10">10
        
    </form>
                </td>
                <td>
                    <input type="checkbox" name="melancia"> 
                </td>
                </tr>
                
                <tr>
                <td>
                    <img src="imagens/banana.png" width="75px" alt="">   <form action="">
           Quantidade: <br> 0<input type="range" name="valor" min="0" max="10">10
        
    </form>
                </td>
                
                <td>
                    <input type="checkbox" name="banana">
                </td>
                </tr> 
                
            
            <tr>
                <td colspan="2"><input type="submit"></td>
            </tr>

        </form>
    </table>
    
    
        

    
</body>

</html>
