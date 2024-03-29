-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:37
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar`, `token`, `tempo_de_vida`) VALUES
(1, 'Priscila', 'Priscila', 'priscila@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2019-09-06 13:38:53', '', '', '2019-09-12 19:33:21'),
(2, 'priscilaq', 'priscilaq', 'priscilaq@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:17:35', 'https://cdn.pixabay.com/photo/2016/09/22/16/38/avatar-1687700_960_720.jpg', '', '2019-09-12 19:33:21'),
(3, 'priscila1', 'priscila1', 'pri@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:36:00', 'https://cdn.pixabay.com/photo/2014/06/01/21/05/photo-effect-359981_960_720.jpg', '', '2019-09-12 19:33:21'),
(4, 'priscila0', 'priscila0', 'priss@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:37:41', 'https://scontent-sea1-1.cdninstagram.com/vp/1ce3e6dc63ebf09147f7ae46a7aea09a/5DE93B8B/t51.2885-19/s150x150/65951469_1243447455863886_1560560381133324288_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com', '', '2019-09-12 19:33:21'),
(5, 'Priscila1', 'Priscila1', 'priscila1@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:32:44', 'https://uploads.metropoles.com/wp-content/uploads/2019/01/19112146/Screenshot_2588.jpg', '', '2019-09-12 19:33:21'),
(6, 'priscilla', 'priscilla', 'priscilla@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:34:01', 'https://lh3.googleusercontent.com/-bptqdnGz_4g/XH_13hZZiEI/AAAAAAAAACI/NXOexQr3wYYCtzyXDA9I9BxgBlaB9IoywCEwYBhgL/w140-h140-p/soun%2Blinda.jpg', '', '2019-09-12 19:33:21');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
