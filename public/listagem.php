<?php require_once("../conexao/conexao.php"); ?>
<?php 
    $usuarios = "SELECT usuarioID, nome, email, senha, nivel ";
    $usuarios .= " FROM usuarios ";
    $resultado = mysqli_query($conecta, $usuarios);

    if(!$resultado) {
        die("Falha na consulta ao banco: " . mysqli_error($conecta));
    }
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Cadastrados</title>

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <span class="list">
        <ul>
            <?php 
                while ($registro = mysqli_fetch_assoc($resultado)) {
            ?>
                <li><?php echo $registro["nome"] ?></li>
                <li id="email_list"><?php echo $registro["email"] ?></li>
                <li id="pass_list"><?php echo $registro["senha"] ?></li>
                <li><?php echo $registro["nivel"] ?></li>
            <?php
                }
            ?>
        </ul>

        <?php 
            mysqli_free_result($resultado); 
        ?>

    </span>


    
</body>
</html>
<?php 
    mysqli_close($conecta);
?>