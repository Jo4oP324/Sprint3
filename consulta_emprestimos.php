<!DOCTYPE html>
<html lang="pt-BR">

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
    <div class="container-centralizado" style="display: flex; justify-content: center; margin: 20px;">
    <table style="border-collapse: collapse; width: 100%; max-width: 800px; border: 1px solid #ccc;">
        <thead>
            <tr>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">ID Empréstimo</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">CPF do Cliente</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">ISBN</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">CPF do Usuário</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">Número de Livros</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">Data de Empréstimo</th>
                <th style="background-color: #c41230; padding: 10px; text-align: left; border: 1px solid #ccc; color: white;">Data de Devolução</th>
            </tr>
        </thead>
        <tbody>
            <?php
                include "conexao.php";
                $sql = "SELECT * FROM emprestimo";
                $dados = mysqli_query($con, $sql);
    
                while ($linha = mysqli_fetch_array($dados)) {
                    $id_emprestimo = $linha['id_emprestimo'];
                    $cpf_cliente = $linha['cpf_cliente'];
                    $isbn = $linha['isbn'];
                    $cpf_usuario = $linha['cpf_usuario'];
                    $num_livros = $linha['num_livros'];
                    $data_emprestimo = $linha['data_emprestimo'];
                    $data_devolucao = $linha['data_devolucao'];
                    
                    echo "<tr>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$id_emprestimo</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$cpf_cliente</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$isbn</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$cpf_usuario</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$num_livros</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$data_emprestimo</td>
                            <td style='padding: 10px; border: 1px solid #ccc;'>$data_devolucao</td>
                          </tr>";
                }
            ?>
        </tbody>
    </table>
    <div class="centralizar" style="margin-top: 20px;">
        <a href="menu.html" class="home-link" style="text-decoration: none; color: white;">Voltar</a>
    </div>
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