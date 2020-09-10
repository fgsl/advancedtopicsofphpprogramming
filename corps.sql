-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09/09/2020 às 22:37
-- Versão do servidor: 8.0.21-0ubuntu0.20.04.4
-- Versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `corps`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanterna`
--

CREATE TABLE `lanterna` (
  `codigo` int NOT NULL,
  `nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_setor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `lanterna`
--

INSERT INTO `lanterna` (`codigo`, `nome`, `codigo_setor`) VALUES
(1, 'Rot Lop Fan', 911),
(2, 'Sinestro', 1417),
(3, 'Mogo', 911),
(4, 'Hal Jordan', 2814);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `codigo` int NOT NULL,
  `nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `setor`
--

INSERT INTO `setor` (`codigo`, `nome`) VALUES
(911, 'Profundezas Obsidianas'),
(1417, 'Korugar'),
(2261, 'Mogo'),
(2814, 'Terra'),
(3182, 'Daxam');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `uid` int NOT NULL,
  `identidade` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credencial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `lanterna`
--
ALTER TABLE `lanterna`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
