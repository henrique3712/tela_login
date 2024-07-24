<?php require_once("../conexao/conexao.php"); ?>

<?php
    session_start();

    if(!isset($_SESSION["user_portal"])) {
            header("location:login.php");
    }
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

    
</body>
</html>