  <!DOCTYPE html>
  <html lang="pt-br">
  
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Estoque de livros | Biblioteca SESI</title>
      <link rel="stylesheet" href="css/estilo.css">
      <link rel="icon" href="img/livro.png">
  </head>
  
  <body>
  <header class="cabecalho-principal">
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
    <div class="success-container">
        <svg class="success-icon" viewBox="0 0 24 24">
            <path
                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" />
        </svg>
        <h1><?php

$isbn = $_POST['isbn'];
$numero_copias = $_POST['numero_copias'];
$ano_publicacao = $_POST['ano_publicacao'];
$categoria = $_POST['categoria'];
$idioma = $_POST['idioma'];
$titulo = $_POST['titulo'];
$editora = $_POST['editora'];
$numero_edicao = $_POST['numero_edicao'];
$numero_volume = $_POST['numero_volume'];
$numero_paginas = $_POST['numero_paginas'];

include "conexao.php";

$sql = "INSERT INTO `livros` (`isbn`, `numero_copias`, `ano_publicacao`, `categoria`, `idioma`, `titulo`, `editora`, `numero_edicao`, `numero_volume`, `numero_paginas`) 
        VALUES ('$isbn', '$numero_copias', '$ano_publicacao', '$categoria', '$idioma', '$titulo', '$editora', '$numero_edicao', '$numero_volume', '$numero_paginas')";

if (mysqli_query($con, $sql)) {
    echo 'Livro cadastrado feito com sucesso';
} else {
    echo "Erro ao cadastrar!";
}
?>
</h1>
        <p>Obrigado por criar uma conta. Verifique seu e-mail para obter instruções de verificação.</p>
        <a href="home.html" class="home-link">Retornar</a>
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
