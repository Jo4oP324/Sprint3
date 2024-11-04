-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/11/2024 às 13:53
-- Versão do servidor: 8.0.36
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_sprint`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `nome` varchar(255) DEFAULT NULL,
  `dt_de_nasc` date DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`nome`, `dt_de_nasc`, `cpf`, `email`, `telefone`, `estado`, `endereco`, `cep`) VALUES
('Luiz Gustavo Almeida', '1988-11-05', '123.456.789-66', 'luiz.almeida@hotmail.com', '(41) 9 1234-5678', 'Rio Grande do Sul', 'Rua das Estrelas, nº 89', '67890-123'),
('Patrícia da Silva Lima', '1990-11-13', '123.456.789-77', 'patricia.lima@hotmail.com', '(41) 9 2345-6789', 'Rio de Janeiro', 'Praça do Sol, nº 39', '78901-234'),
('Fernando Lima e Silva', '1991-06-25', '123.456.789-88', 'fernando.silva@hotmail.com', '(41) 9 2345-6789', 'Minas Gerais', 'Rua da Amizade, nº 66', '89012-345'),
('Juliana Santos Almeida', '1992-08-17', '123.456.789-99', 'juliana.almeida@hotmail.com', '(41) 9 1234-5670', 'Ceará', 'Avenida da Liberdade, nº 65', '90123-456'),
('Pedro Henrique dos Santos', '1992-10-10', '123.789.456-01', 'pedro.henrique@hotmail.com', '(31) 9 7654-3210', 'Minas Gerais', 'Avenida Brasil, nº 12', '34567-890'),
('Carlos Eduardo Ribeiro', '1995-09-28', '147.258.369-05', 'carlos.ribeiro@hotmail.com', '(61) 9 8765-4321', 'Distrito Federal', 'Setor Comercial, Bloco A', '78901-234'),
('Ricardo Lima Oliveira', '1986-06-27', '234.567.890-00', 'ricardo.oliveira@yahoo.com', '(51) 9 2345-6781', 'Rio Grande do Norte', 'Rua da Esperança, nº 33', '01234-567'),
('Mariana Costa Pereira', '1989-03-22', '234.567.890-11', 'mariana.costa@hotmail.com', '(21) 9 2345-6789', 'Rio de Janeiro', 'Avenida Atlântica, nº 45', '12345-678'),
('Rafaela Martins Oliveira', '1990-08-22', '234.567.890-77', 'rafaela.oliveira@yahoo.com', '(51) 9 2345-6789', 'São Paulo', 'Praça do Comércio, nº 36', '78901-234'),
('Diego Costa Ferreira', '1987-08-04', '234.567.890-88', 'diego.ferreira@yahoo.com', '(51) 9 3456-7890', 'Minas Gerais', 'Rua do Comércio, nº 60', '89012-345'),
('Camila Pereira Santos', '1992-08-12', '234.567.890-99', 'camila.pereira@yahoo.com', '(51) 9 3456-7890', 'Paraná', 'Avenida da Alegria, nº 23', '90123-456'),
('Tatiane Souza Lima', '1980-11-19', '258.369.147-06', 'tatiane.lima@gmail.com', '(81) 9 5432-1098', 'Pernambuco', 'Rua do Sol, nº 5', '89012-345'),
('Fernando Costa Almeida', '1990-01-30', '321.654.987-03', 'fernando.costa@outlook.com', '(41) 9 3210-9876', 'Paraná', 'Praça da Liberdade, nº 30', '56789-012'),
('Lucas Andrade Costa', '1987-05-29', '345.678.901-00', 'lucas.costa@gmail.com', '(61) 9 4567-8901', 'Rio Grande do Sul', 'Rua do Progresso, nº 10', '01234-567'),
('Amanda Costa Silva', '1989-09-30', '345.678.901-11', 'amanda.silva@gmail.com', '(61) 9 3456-7892', 'Sergipe', 'Rua das Acácias, nº 19', '12345-678'),
('Gabriel Rocha Silva', '1985-10-30', '345.678.901-22', 'gabriel.rocha@yahoo.com', '(31) 9 3456-7890', 'Minas Gerais', 'Rua das Flores, nº 99', '23456-789'),
('Sérgio Ricardo Ferreira', '1993-02-19', '345.678.901-88', 'sergio.ferreira@gmail.com', '(61) 9 3456-7890', 'Rio de Janeiro', 'Avenida da Alegria, nº 88', '89012-345'),
('Aline Mendes Oliveira', '1986-04-20', '345.678.901-99', 'aline.oliveira@gmail.com', '(61) 9 4567-8901', 'Paraná', 'Avenida da Alegria, nº 15', '90123-456'),
('Ricardo Gomes da Silva', '1993-07-08', '369.258.147-07', 'ricardo.silva@yahoo.com', '(91) 9 6543-2109', 'Acre', 'Estrada da Floresta, nº 15', '90123-456'),
('Ana Luísa Ferreira', '1988-12-05', '456.123.789-02', 'ana.ferreira@yahoo.com', '(11) 9 4321-6789', 'São Paulo', 'Travessa da Alegria, nº 67', '45678-901'),
('Marcos Paulo Almeida', '1995-10-05', '456.789.012-00', 'marcos.almeida@hotmail.com', '(71) 9 5678-9012', 'Rio Grande do Sul', 'Rua da Paz, nº 22', '01234-567'),
('Nathalia Almeida Ferreira', '1994-12-08', '456.789.012-11', 'nathalia.ferreira@hotmail.com', '(71) 9 5678-9012', 'Distrito Federal', 'Avenida da Esperança, nº 14', '12345-678'),
('Gabriel Martins Ferreira', '1995-07-15', '456.789.012-22', 'gabriel.ferreira@hotmail.com', '(71) 9 4567-8903', 'Pernambuco', 'Avenida dos Coqueiros, nº 84', '23456-789'),
('Ana Clara Martins', '1993-07-05', '456.789.012-33', 'ana.martins@gmail.com', '(41) 9 4567-8901', 'Paraná', 'Praça da Liberdade, nº 10', '34567-890'),
('Gustavo Lima Santos', '1991-01-10', '456.789.012-99', 'gustavo.santos@hotmail.com', '(71) 9 4567-8901', 'Minas Gerais', 'Rua da Liberdade, nº 43', '90123-456'),
('João Pedro Dala Dea Mello', '2008-01-09', '547.420.248-26', 'joaopedrodaladeamello@gmail.com', '551499681539', 'saopaulo', 'Rua Xv De Novembro 439 Centro Ibirarema Sp', '19940000'),
('Silvana Ferreira Santos', '1988-02-18', '567.890.123-11', 'silvana.santos@yahoo.com', '(81) 9 6789-0123', 'Acre', 'Avenida das Flores, nº 78', '12345-678'),
('Vinícius da Silva Lima', '1989-03-11', '567.890.123-22', 'vinicius.lima@yahoo.com', '(81) 9 6789-0123', 'Rio de Janeiro', 'Rua das Flores, nº 30', '23456-789'),
('Luciana Mendes Oliveira', '1990-03-21', '567.890.123-33', 'luciana.oliveira@yahoo.com', '(81) 9 5678-9014', 'Minas Gerais', 'Rua das Palmeiras, nº 50', '34567-890'),
('Ricardo Alves Santos', '1988-12-14', '567.890.123-44', 'ricardo.santos@outlook.com', '(51) 9 5678-9012', 'Rio Grande do Sul', 'Alameda da Paz, nº 23', '45678-901'),
('Juliana Martins Pereira', '1987-03-14', '654.321.098-04', 'juliana.martins@gmail.com', '(51) 9 0987-6543', 'Rio Grande do Sul', 'Rua da Esperança, nº 90', '67890-123'),
('André Gomes da Silva', '1993-03-15', '678.901.234-22', 'andre.silva@gmail.com', '(91) 9 7890-1234', 'São Paulo', 'Rua das Torres, nº 49', '23456-789'),
('Fabiana Costa Almeida', '1995-01-16', '678.901.234-33', 'fabiana.almeida@gmail.com', '(91) 9 7890-1234', 'Minas Gerais', 'Praça do Comércio, nº 8', '34567-890'),
('Rodrigo Alves Santos', '1984-05-14', '678.901.234-44', 'rodrigo.santos@gmail.com', '(91) 9 6789-0125', 'São Paulo', 'Avenida dos Andradas, nº 12', '45678-901'),
('Fernanda Lima Souza', '1990-02-11', '678.901.234-55', 'fernanda.souza@gmail.com', '(61) 9 6789-0123', 'Distrito Federal', 'Rua do Sol, nº 89', '56789-012'),
('Fernanda Alves de Souza', '1991-04-03', '741.852.963-08', 'fernanda.souza@outlook.com', '(22) 9 2109-8765', 'Bahia', 'Alameda dos Coqueiros, nº 25', '01234-567'),
('Juliane Almeida Lima', '1989-07-01', '789.012.345-33', 'juliane.lima@hotmail.com', '(11) 9 8901-2345', 'Rio de Janeiro', 'Praça da Liberdade, nº 11', '34567-890'),
('Renato Santos Ferreira', '1988-07-20', '789.012.345-44', 'renato.ferreira@hotmail.com', '(11) 9 8901-2345', 'São Paulo', 'Avenida das Torres, nº 21', '45678-901'),
('Patrícia Ferreira Lima', '1988-12-01', '789.012.345-55', 'patricia.lima@hotmail.com', '(11) 9 7890-1236', 'Bahia', 'Rua das Margaridas, nº 95', '56789-012'),
('Pedro Henrique Almeida', '1994-11-25', '789.012.345-66', 'pedro.almeida@hotmail.com', '(71) 9 7890-1234', 'Bahia', 'Avenida Sete de Setembro, nº 34', '67890-123'),
('Cláudio Pereira Ferreira', '1992-06-09', '890.123.456-44', 'claudio.ferreira@yahoo.com', '(21) 9 9012-3456', 'Bahia', 'Rua da Esperança, nº 73', '45678-901'),
('Fernanda Lima Silva', '1992-06-30', '890.123.456-55', 'fernanda.silva@yahoo.com', '(21) 9 9012-3456', 'Bahia', 'Rua das Acácias, nº 5', '56789-012'),
('Júlio César Almeida', '1993-10-30', '890.123.456-66', 'julio.almeida@yahoo.com', '(21) 9 8901-2347', 'Ceará', 'Avenida do Mercado, nº 77', '67890-123'),
('Tatiane Ferreira Costa', '1991-01-20', '890.123.456-77', 'tatiane.costa@yahoo.com', '(81) 9 8901-2345', 'Pernambuco', 'Rua das Orquídeas, nº 76', '78901-234'),
('Natália Lima Santos', '1994-12-27', '901.234.567-55', 'natália.santos@gmail.com', '(31) 9 0123-4567', 'Minas Gerais', 'Avenida da Liberdade, nº 14', '56789-012'),
('Roberto Oliveira Martins', '1993-09-09', '901.234.567-66', 'roberto.martins@gmail.com', '(31) 9 0123-4567', 'Ceará', 'Avenida das Palmeiras, nº 45', '67890-123'),
('Talita Martins Ferreira', '1990-02-18', '901.234.567-77', 'talita.ferreira@gmail.com', '(31) 9 9012-3458', 'Rio de Janeiro', 'Rua das Estrelas, nº 48', '78901-234'),
('Bruno Carvalho Martins', '1987-04-08', '901.234.567-88', 'bruno.martins@gmail.com', '(91) 9 9012-3456', 'Acre', 'Rua do Comércio, nº 52', '89012-345'),
('Maria Clara da Silva', '1985-02-22', '987.654.321-00', 'maria.clara@gmail.com', '(21) 9 8765-4321', 'Rio de Janeiro', 'Rua das Flores, nº 45', '23456-789');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_emprestimo` int NOT NULL,
  `cpf_cliente` varchar(20) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `cpf_usuario` varchar(20) NOT NULL,
  `num_livros` int NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_emprestimo`, `cpf_cliente`, `isbn`, `cpf_usuario`, `num_livros`, `data_emprestimo`, `data_devolucao`) VALUES
(1, '123.456.789-66', '978-3-16-148410-0', '147.258.369-00', 1, '2024-11-04', '2024-12-05'),
(4, '234.567.890-11', '978-0-14-044913-6', '147.258.369-00', 1, '2024-11-04', '2024-12-05'),
(5, '547.420.248-26', '978-85-63219-34-1', '147.258.369-00', 2, '2024-11-04', '2024-12-05'),
(6, '234.567.890-00', '978-0-385-72227-4', '147.258.369-00', 1, '2024-11-04', '2024-12-05'),
(7, '567.890.123-33', '978-0-553-21311-7', '147.258.369-00', 2, '2024-11-04', '2024-12-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `isbn` varchar(20) NOT NULL,
  `numero_copias` int DEFAULT NULL,
  `ano_publicacao` varchar(40) DEFAULT NULL,
  `categoria` varchar(60) DEFAULT NULL,
  `idioma` varchar(30) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `editora` varchar(255) DEFAULT NULL,
  `numero_edicao` int DEFAULT NULL,
  `numero_volume` int DEFAULT NULL,
  `numero_paginas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`isbn`, `numero_copias`, `ano_publicacao`, `categoria`, `idioma`, `titulo`, `editora`, `numero_edicao`, `numero_volume`, `numero_paginas`) VALUES
('978-0-06-112008-4', 30, '1960', 'Ficção', 'Inglês', 'O Sol é Para Todos', 'HarperCollins', 1, 1, 336),
('978-0-14-044913-6', 15, '2010', 'Clássico', 'Português', 'Crime e Castigo', 'Penguin', 2, 1, 576),
('978-0-345-39180-3', 18, '1996', 'Fantasia', 'Inglês', 'A Guerra dos Tronos', 'Bantam Books', 1, 1, 694),
('978-0-385-50420-8', 12, '2005', 'Suspense', 'Inglês', 'O Código Da Vinci', 'Doubleday', 1, 1, 689),
('978-0-385-72227-4', 22, '2015', 'Ficção', 'Inglês', 'A Garota no Trem', 'Riverhead Books', 1, 1, 336),
('978-0-452-28423-4', 18, '1967', 'Distopia', 'Inglês', 'O Admirável Mundo Novo', 'Harper Perennial', 1, 1, 268),
('978-0-553-21311-7', 10, '1954', 'Fantasia', 'Inglês', 'O Senhor dos Anéis: A Sociedade do Anel', 'Houghton Mifflin', 1, 1, 423),
('978-0-7432-7355-8', 8, '1997', 'Biografia', 'Inglês', 'Benjamin Franklin: An American Life', 'Simon & Schuster', 1, 1, 608),
('978-0-7432-7356-5', 25, '2003', 'Biografia', 'Português', 'Steve Jobs', 'Simon & Schuster', 1, 1, 656),
('978-1-5011-8747-7', 15, '2019', 'Ficção', 'Inglês', 'Onde Cantam os Pássaros', 'Scribner', 1, 1, 368),
('978-3-16-148410-0', 20, '2020', 'Ficção Científica', 'Português', 'Eu, Robô', 'Companhia das Letras', 3, 1, 350),
('978-84-376-0494-7', 22, '1945', 'Distopia', 'Espanhol', 'Rebelión en la Granja', 'Seix Barral', 1, 1, 152),
('978-85-209-3795-6', 14, '2020', 'Negócios', 'Português', 'Os Segredos da Mente Milionária', 'Sextante', 1, 1, 176),
('978-85-220-0967-6', 25, '2018', 'Autoajuda', 'Português', 'O Poder do Hábito', 'Objetiva', 1, 1, 408),
('978-85-250-3056-1', 10, '2014', 'Filosofia', 'Português', 'O Mundo de Sofia', 'Companhia das Letras', 1, 1, 560),
('978-85-254-2164-3', 8, '1988', 'Autoajuda', 'Português', 'O Alquimista', 'HarperCollins', 2, 1, 208),
('978-85-359-0277-3', 12, '2000', 'Romance', 'Português', 'Cem Anos de Solidão', 'Record', 1, 1, 432),
('978-85-359-0668-1', 30, '2003', 'História', 'Português', 'Sapiens: Uma Breve História da Humanidade', 'L&PM', 1, 1, 464),
('978-85-510-0209-2', 35, '2015', 'Tecnologia', 'Português', 'Homo Deus: Uma Breve História do Amanhã', 'Companhia das Letras', 1, 1, 448),
('978-85-63219-34-1', 20, '2011', 'Ficção Científica', 'Português', 'Neuromancer', 'Aleph', 1, 1, 384);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `nome` varchar(255) DEFAULT NULL,
  `dt_de_nasc` date DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `sexo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`nome`, `dt_de_nasc`, `cpf`, `email`, `sexo`, `telefone`, `estado`, `endereco`, `cep`, `cargo`, `senha`) VALUES
('Ana Clara Souza', '1995-03-25', '123.456.789-00', 'anaclarasouza@gmail.com', 'feminino', '11987654321', 'sao paulo', 'AV. PAULISTA, 100', '01310-000', 'professor(a)', 'senha123'),
('Mariana Ramos', '1988-12-01', '147.258.369-00', 'marianaramos@hotmail.com', 'feminino', '31987654321', 'rio de janeiro', 'PRAIA DE COPACABANA, 200', '22070-001', 'reitor(a)', 'mariana123'),
('Gustavo Henrique', '1990-05-22', '258.369.147-00', 'gustavohenrique@gmail.com', 'masculino', '31987654322', 'espirito santo', 'RUA DAS FLORES, 75', '29060-000', 'diretor(a)', 'gustavo@senha'),
('Carla Fernandes', '1993-08-30', '369.258.147-00', 'carlaf@gmail.com', 'feminino', '11976543210', 'bahia', 'AV. SETE DE SETEMBRO, 150', '40000-000', 'procurador_institucional', 'carlasenha'),
('João Pedro Dala Dea Mello', '2000-01-09', '547.420.248-26', 'joaopedrodaladeamello@gmail.com', 'masculino', '5514996815396', 'saopaulo', 'Rua Xv De Novembro 439 Centro ', '19940000', 'procurador_institucional', 'senha123'),
('Luan Roberto', '1992-07-14', '987.654.321-00', 'luanroberto@gmail.com', 'masculino', '11912345678', 'minas gerais', 'RUA DOS ARTISTAS, 45', '30170-000', 'coordenador(a)', 'senhaluan');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_emprestimo`),
  ADD KEY `cpf_cliente` (`cpf_cliente`),
  ADD KEY `cpf_usuario` (`cpf_usuario`),
  ADD KEY `isbn` (`isbn`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`isbn`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id_emprestimo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `clientes` (`cpf`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`cpf_usuario`) REFERENCES `usuarios` (`cpf`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`isbn`) REFERENCES `livros` (`isbn`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
