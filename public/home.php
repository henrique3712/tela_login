<?php require_once("../conexao/conexao.php"); ?>

<?php 
    session_start();

    if(!isset($_SESSION["user_portal"])) {
        header("location:login.php");
    }

    $dados = "SELECT * ";
    $dados .= " FROM usuarios ";
    $dados .= " WHERE usuarioID = {$_SESSION["user_portal"]}";

    $user_dados = mysqli_query($conecta, $dados);
    if(!$user_dados) {
        die("Falha no banco de dados");
    }

    $user_dados = mysqli_fetch_assoc($user_dados);
    $nome = $user_dados["nome"];
    $nivel = $user_dados["nivel"];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <?php include_once("_incluir/topo.php"); ?>

    <div class="user-detail-container">
        <h1>Usuário: <?php echo $nome; ?></h1>
        <h2>Nível de acesso: 
            <?php
                if ($nivel == "admin") { 
                    echo "<span>Administrador</span>"; 
                } else { 
                    echo "<span>Usuário</span>"; 
                }
            ?>
        </h2>
        <p>
            <?php if($nivel != "admin") { ?>
                <a href="#" onclick="mostrarMensagem()">Acesso administrativo</a> 
            <?php } else { ?>
                <a id="access" href="adm.php">Acesso administrativo</a> 
            <?php } ?>

            | <a href="logout.php">sair</a></p>

    </div>
    
    <script src="script.js"></script>
</body>
</html>