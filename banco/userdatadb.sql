-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/12/2023 às 23:47
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `userdatadb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioID` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `complemento` varchar(30) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf` char(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `nivel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`usuarioID`, `nome`, `sexo`, `telefone`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `email`, `senha`, `nivel`) VALUES
(1, 'Rafael Costa Pereira', 'M', '(11) 82233-4455', '01234-567', 'Rua dos Girassóis', '321', 'Apto 301', 'Jardim Primavera', 'São Paulo', 'SP', 'rafael.costa@email.com', '123', 'admin'),
(2, 'Juliana Oliveira Santos', 'F', '(22) 73344-5566', '98765-432', 'Rua das Palmeiras', '456', 'Casa 2', 'Parque Residencial', 'Salvador', 'BA', 'juliana.oliveira@email.com', '456', 'user'),
(3, 'Marcos Silva Lima', 'M', '(33) 94455-6677', '87654-321', 'Avenida das Orquídeas', '789', '', 'Centro', 'Rio de Janeiro', 'RJ', 'marcos.silva@email.com', '789', 'user'),
(4, 'Carolina Pereira Rodrigues', 'F', '(44) 55566-7788', '54321-098', 'Rua das Violetas', '101', 'Casa 5', 'Jardim Botânico', 'Brasília', 'DF', 'carolina.pereira@email.com', '987', 'admin'),
(5, 'André Santos Oliveira', 'M', '(55) 76677-8899', '21098-765', 'Alameda dos Ipês', '202', 'Apto 102', 'Vila Flores', 'Porto Alegre', 'RS', 'andre.santos@email.com', '654', 'user'),
(6, 'Camila Lima Costa', 'F', '(66) 87788-9900', '87654-321', 'Rua das Acácias', '303', '', 'Bela Vista', 'São Paulo', 'SP', 'camila.lima@email.com', '651', 'user'),
(7, 'Lucas Oliveira Pereira', 'M', '(77) 98899-0011', '12345-678', 'Avenida das Magnólias', '444', '', 'Jardim das Rosas', 'Fortaleza', 'CE', 'lucas.oliveira@email.com', '789', 'user'),
(8, 'Mariana Costa Santos', 'F', '(88) 89900-1122', '98765-432', 'Rua das Tulipas', '523', '', 'Centro', 'Belo Horizonte', 'MG', 'mariana.costa@email.com', '963', 'user'),
(9, 'Thiago Santos Oliveira', 'M', '(99) 70011-2233', '21098-765', 'Alameda das Begônias', '625', 'Apto 10', 'Jardim América', 'Recife', 'PE', 'thiago.santos@email.com', '478', 'admin'),
(10, 'Bruna Oliveira Lima', 'F', '(00) 21122-3344', '54321-098', 'Avenida das Hortênsias', '787', '', 'Jardim das Flores', 'Curitiba', 'PR', 'bruna.oliveira@email.com', '654', 'user'),
(11, 'Gabriel Pereira Silva', 'M', '(11) 22233-4455', '98765-432', 'Rua dos Lírios', '898', '', 'Parque das Árvores', 'São Luís', 'MA', 'gabriel.pereira@email.com', '987', 'user'),
(12, 'Vanessa Lima Santos', 'F', '(22) 43344-5566', '12345-678', 'Travessa das Margaridas', '947', '', 'Jardim Primavera', 'Porto Velho', 'RO', 'vanessa.lima@email.com', '785', 'user'),
(13, 'Felipe Santos Costa', 'M', '(33) 54455-6677', '21098-765', 'Rua das Camélias', '1010', 'Apto 20', 'Centro', 'Goiânia', 'GO', 'felipe.santos@email.com', '354', 'user'),
(14, 'Letícia Costa Oliveira', 'F', '(44) 65566-7788', '54321-098', 'Alameda das Rosas', '1111', '', 'Bairro Novo', 'Manaus', 'AM', 'leticia.costa@email.com', '145', 'admin'),
(15, 'Ricardo Oliveira Lima', 'M', '(55) 86677-8899', '87654-321', 'Avenida das Azaléias', '1212', '', 'Jardim das Oliveiras', 'João Pessoa', 'PB', 'ricardo.oliveira@email.com', '852', 'user'),
(16, 'Aline Lima Pereira', 'F', '(66) 77788-9900', '98765-432', 'Rua das Hortências', '1333', '', 'Parque São Francisco', 'Campinas', 'SP', 'aline.lima@email.com', '347', 'user'),
(17, 'Gustavo Costa Santos', 'M', '(77) 58899-0011', '21098-765', 'Travessa das Violetas', '1456', 'Apto 303', 'Jardim das Flores', 'Florianópolis', 'SC', 'gustavo.costa@email.com', '953', 'user'),
(18, 'Isabela Santos Oliveira', 'F', '(88) 99900-1122', '54321-098', 'Alameda das Begônias', '1515', '', 'Centro', 'Aracaju', 'SE', 'isabela.santos@email.com', '354', 'admin'),
(19, 'Andréa Oliveira Lima', 'F', '(99) 10011-2233', '87654-321', 'Rua das Camélias', '7412', '', 'Bairro Novo', 'Teresina', 'PI', 'andrea.oliveira@email.com', '156', 'user'),
(20, 'Eduardo Costa Silva', 'M', '(00) 21122-3344', '12345-678', 'Avenida das Orquídeas', '1777', 'Apto 410', 'Jardim das Oliveiras', 'Recife', 'PE', 'eduardo.costa@email.com', '751', 'user'),
(21, 'Larissa Silva Santos', 'F', '(11) 32233-4455', '98765-432', 'Travessa das Magnólias', '8612', '', 'Jardim Primavera', 'Porto Alegre', 'RS', 'larissa.silva@email.com', '875', 'user'),
(22, 'André Lima Costa', 'M', '(22) 83344-5566', '21098-765', 'Rua dos Girassóis', '909', '', 'Parque Residencial', 'São Paulo', 'SP', 'andre.lima@email.com', '931', 'user'),
(23, 'Renata Oliveira Silva', 'F', '(33) 44455-6677', '54321-098', 'Avenida das Tulipas', '20', '', 'Bela Vista', 'Curitiba', 'PR', 'renata.oliveira@email.com', '345', 'admin'),
(24, 'Rodrigo Costa Lima', 'M', '(44) 25566-7788', '87654-321', 'Rua das Azaléias', '1212', 'Apto 50', 'Jardim das Árvores', 'Belo Horizonte', 'MG', 'rodrigo.costa@email.com', '372', 'user'),
(25, 'Priscila Lima Santos', 'F', '(55) 16677-8899', '12345-678', 'Alameda das Lírios', '222', '', 'Jardim Botânico', 'Brasília', 'DF', 'priscila.lima@email.com', '616', 'user');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
