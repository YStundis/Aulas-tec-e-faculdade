<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Frutas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>

    <style>
        .has-image-centered {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>

<body>
    <?php
    session_start();
    
    if(isset($_SESSION['carrinho']) == false) {
        $_SESSION['carrinho'] = array();
    }
?>
    <nav class="navbar" role="navigation" aria-label="main navigation">
        
        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item">
                    Home
                </a>

                <a class="navbar-item">
                    Documentation
                </a>

                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        More
                    </a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                            About
                        </a>
                        <a class="navbar-item">
                            Jobs
                        </a>
                        <a class="navbar-item">
                            Contact
                        </a>
                        <hr class="navbar-divider">
                        <a class="navbar-item">
                            Report an issue
                        </a>
                    </div>
                </div>
            </div>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a class="button is-light">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
       <div class="columns">
           <div class="column">&nbsp;</div>
       </div>
        <div class="columns is-vcentered">
            <div class="column">
                <div class="card">
                    <div class="card-image">
                        <figure class="image is-128x128 has-image-centered">
                            <img src="img/uva.jpg" alt="Placeholder image">
                        </figure>
                    </div>
                    <div class="card-content">
                        <div class="media">
                            <div class="media-content has-text-centered">
                                <p class="title is-4">Uva Rubi</p>
                            </div>
                        </div>
                    </div>
                    <form action="carrinho.php">
                        <footer class="card-footer">
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input type="hidden" name="item" value="uva">
                                        <label for="qtd">Quantidade:</label>
                                        <input class="input" type="number" min="1" name="quantidade" value="1">
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input class="button is-success" type="submit" value="Comprar">
                                    </div>
                                </div>
                            </div>
                        </footer>
                    </form>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-image is-narrow has-text-centered">
                        <figure class="image is-128x128 has-image-centered">
                            <img src="img/laranja.jpg" alt="Placeholder image">
                        </figure>
                    </div>
                    <div class="card-content">
                        <div class="media">
                            <div class="media-content has-text-centered">
                                <p class="title is-4">Laranja</p>
                            </div>
                        </div>
                    </div>
                    <form action="carrinho.php">
                        <footer class="card-footer">
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input type="hidden" name="item" value="laranja">
                                        <label for="qtd">Quantidade:</label>
                                        <input class="input" type="number" min="1" name="quantidade" value="1">
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input class="button is-success" type="submit" value="Comprar">
                                    </div>
                                </div>
                            </div>
                        </footer>
                    </form>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-image">
                        <figure class="image is-128x128 has-image-centered">
                            <img src="img/pera.jpg" alt="Placeholder image">
                        </figure>
                    </div>
                    <div class="card-content">
                        <div class="media">
                            <div class="media-content has-text-centered">
                                <p class="title is-4">Pera</p>
                            </div>
                        </div>
                    </div>
                    <form action="carrinho.php">
                        <footer class="card-footer">
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input type="hidden" name="item" value="pera">
                                        <label for="qtd">Quantidade:</label>
                                        <input class="input" type="number" min="1" name="quantidade" value="1">
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer-item">
                                <div class="field">
                                    <div class="control">
                                        <input class="button is-success" type="submit" value="Comprar">
                                    </div>
                                </div>
                            </div>
                        </footer>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
