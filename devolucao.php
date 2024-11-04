
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Biblioteca Sesi</title>
  <link rel="stylesheet" href="css/estilo.css">
  <link rel="icon" href="img/livro.png">
</head>

<body>
<header class="cabecalho-principal">
        <nav class="navegacao">
            <a href="menu.html" class="logo">Biblioteca Sesi</a>
            <div class="links-nav">
                <a href="menu.html">Início</a>
                <a href="#">Livros</a>
                <a href="#">Clientes</a>
                <a style="text-decoration: none; color: white;" href="index.html">Sair</a>
            </div>
        </nav>
    </header>

  <div class="corpo">
    <h1 class="titulo">Devolução</h1>

    <?php
$isbn = $_POST["isbn"];
$cpf = $_POST["cpf"];

/*SPRINT 4*/

include 'conexao.php';

$id_delete = $isbn;
$sql = "DELETE FROM emprestimo WHERE isbn = $id_delete";


echo 'Erro!'
?>
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