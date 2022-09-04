<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Enviando texto</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css" />
</head>

<body>
    <div class="container">
        <form action="recebe_01_text.php">
            <div class="field">
                <label class="label">Nome de usuário:</label>
                <div class="control">
                    <input type="text" name="usuario" class="input is-primary" placeholder="Digite seu nome.">
                </div>
                
                
                <div class="control">
                    <input type="submit" value="Enviar" class="button is-primary">
                </div>
            </div>
        </form>
    </div>
</body>

</html>
