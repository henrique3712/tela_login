<header>
    <div id="header_central">
        <?php 
            if(isset($_SESSION["user_portal"])) {

                $user = $_SESSION["user_portal"];
                

                $saudacao = "SELECT nome ";
                $saudacao .= " FROM usuarios ";
                $saudacao .= " WHERE usuarioID = {$user}";

                $saudacao_login = mysqli_query($conecta, $saudacao);
                if(!$saudacao_login) {
                    die("Falha no banco de dados");
                }

                $saudacao_login = mysqli_fetch_assoc($saudacao_login);
                $nome = $saudacao_login["nome"];

                $primeiroNome = explode(" ", $nome);
        ?>

            <div id="header_saudacao">
                <h5>Seja bem-vindo, <?php echo $primeiroNome[0]; ?> | <a id="logout" href="logout.php"> sair </a></h5>
            </div>
            
        <?php 
            }
        ?>
    </div>
</header>