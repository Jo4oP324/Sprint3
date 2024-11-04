<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro com Sucesso | Biblioteca Sesi</title>
    <link rel="icon" href="Img/livro.png">
    <link rel="stylesheet" href="css/estilo.css">
</head>

<body>
<header class="cabecalho-principal">
        <nav class="navegacao-index">
            <a style="display: flex; justify-content: center;" href="index.html" class="logo">Biblioteca Sesi</a>
        </nav>
    </header>
    <div class="success-container">
        <svg class="success-icon" viewBox="0 0 24 24">
            <path
                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" />
        </svg>
        <h1>
        <?php

$nome = $_POST['nome'];
$data = $_POST['dt_de_nasc'];
$cpf = $_POST['cpf'];
$sexo = $_POST['sexo'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$estado = $_POST['estado'];
$endereco = $_POST['endereco'];
$cep = $_POST['cep'];
$cargo = $_POST['cargo'];
$senha = $_POST['senha'];

include "conexao.php";
  
$sql = "INSERT INTO `usuarios` (`nome`, `dt_de_nasc`, `cpf`, `sexo`, `email`, `telefone`, `estado`, `endereco`, `cep`, `cargo`, `senha`) VALUES ('$nome', '$data', '$cpf', '$sexo', '$email', '$telefone', '$estado', '$endereco', '$cep', '$cargo', '$senha')";

  
    if (mysqli_query($con, $sql)) {
        echo 'Cadastro feito com sucesso';
    } else {
      echo "Erro ao cadastrar!";
    }
    ?>
        </h1>
        <p>Obrigado por criar uma conta. Verifique seu e-mail para obter instruções de verificação.</p>
        <a href="menu.html" class="home-link">Ir para o menu</a>
    </div>
    <footer class="rodape-principal">
        <div class="container">
            <div class="logo">
                <p>Biblioteca Sesi</p>
            </div>

            <div class="rodape-links">
                <div class="informacoes">
                    <a href="#">Sobre nós</a>
                    <a href="#">Política AML</a>
                    <a href="#">Convidar amigos</a>
                    <a href="#">Blog</a>
                </div>

                <div class="informacoes">
                    <a href="#">Regulamento</a>
                    <a href="#">VIP</a>
                    <a href="#">Promoções</a>
                    <a href="#">Status</a>
                </div>

                <div class="informacoes">
                    <a href="#">Acordo do Cliente</a>
                    <a href="#">Prestige club</a>
                    <a href="#">Estratégias</a>
                    <a href="#">Central de Ajuda</a>
                </div>

                <div class="redes-sociais">
                    <p>CONTATOS</p>
                    <a href="mailto:support@biblioteca.com">@SuporteBibliotecaSesi@gmail.com</a>
                    <div class="social-icons">
                        <a href="#"><img src="img/download-removebg-preview1.png" alt="Facebook"></a>
                        <a href="#"><img src="img/download__1_-removebg-preview.png" alt="Instagram"></a>
                        <a href="#"><img src="img/x.png" alt="Twitter"></a>
                        <a href="#"><img src="img/likendin.png" alt="Telegram"></a>
                    </div>
                </div>
            </div>

            <div class="aviso-legal">
                <p>A Biblioteca e quaisquer de seus serviços não são destinados...</p>
            </div>

            <div class="endereco">
                <p>Av. Paulista, 1313<br>CEP: 01311-923(FIESP)</p>
            </div>

            <p class="copyright">© 2024 Biblioteca SESI. Todos os direitos reservados</p>
        </div>
    </footer>
    <div vw class="enabled">
    <div vw-access-button class="active"></div>
    <div vw-plugin-wrapper>
      <div class="vw-plugin-top-wrapper"></div>
    </div>
  </div>
  <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
  <script>
    new window.VLibras.Widget('https://vlibras.gov.br/app');
  </script>
</body>

</html>