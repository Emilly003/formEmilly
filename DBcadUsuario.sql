-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28/04/2021 às 09:03
-- Versão do servidor: 8.0.24
-- Versão do PHP: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `DBcadUsuario`
--
CREATE DATABASE IF NOT EXISTS `dbUsers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `DBcadUsuario`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;

ALTER TABLE `usuario` 
  DROP COLUMN `Data de nascimento`,
  DROP COLUMN `Numero de telefone`,
  ADD COLUMN `dataDeNascimento` INT(8) NOT NULL,
  ADD COLUMN `numeroDeTelefone` INT(20) NOT NULL;

CREATE TABLE `usuario` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Senha` varchar(32) NOT NULL,
  `Usuario` varchar(300) NOT NULL,
  `Gêneros` varchar(300) NOT NULL,
  `Data de nascimento` int(8) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Cidade` varchar(300) NOT NULL,
  `Numero de telefone` int(15) NOT NULL,
  `UF` varchar(300) NOT NULL,
  `Logradouro` varchar(300) NOT NULL,
  `Número` int(10) NOT NULL,
  `Complemento` varchar(300) NOT NULL,
  PRIMARY KEY (id_user),
  UNIQUE KEY (email),
  UNIQUE KEY (CPF)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

alter table `usuario` change `Gêneros` `Genero` varchar (300) NOT NULL;

ALTER TABLE `usuario` change `Data de nascimento` `DataDeNascimento`  int(8) NOT NULL;
alter table  `usuario` change  `numero de telefone`  `NumeroDeTelefone`  int(15) NOT NULL;