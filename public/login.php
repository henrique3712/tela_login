<?php require_once("../conexao/conexao.php"); ?>

<?php 
    session_start();

    if(isset($_POST["email"])) {
        $email = $_POST["email"];
        $senha = $_POST["senha"];

        $login = "SELECT * ";
        $login .= " FROM usuarios ";
        $login .= " WHERE email = '{$email}' AND senha = '{$senha}' ";

        $acesso = mysqli_query($conecta, $login);
        
        if(!$acesso) {
            die("Falha na consulta ao banco");
        }

        $informacao = mysqli_fetch_assoc($acesso);

        if(empty($informacao)) {
            $mensagem = "Login sem sucesso";
        } else {
            $_SESSION["user_portal"] = $informacao["usuarioID"];
        }
    }

    if(isset($_SESSION["user_portal"])) {
        header("location:home.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <title>Form Input Wave</title>
</head>
<body>
    <div class="container">
        <form action="login.php" method="post">

            <h1>Fazer login</h1>

            <div class="form-control">
                <input type="text" name="email" required>
                <label>Email</label>
            </div>

            <div class="form-control">
                <input type="password" name="senha" required>
                <label>Senha</label>
            </div>

            <button class="btn">Entrar</button>
            <p class="text">Não tem uma conta? <a href="listagem.php">Registre-se</a></p>
            
            <?php 
                if(isset($mensagem)) {
            ?>
                <p class="mensagem"><?php echo $mensagem ?></p>
            <?php 
                }
            ?>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>

<?php 
    mysqli_close($conecta);
?>