-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Fev-2017 às 07:23
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinfox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `iduser` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `perfil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`iduser`, `usuario`, `fone`, `login`, `senha`, `perfil`) VALUES
(1, 'joao moreira', '9999-9999', 'joaomoreira', '123456', 'admin'),
(2, 'administrador', '9999-9999', 'admin', 'admin', 'admin'),
(3, 'Leandro Lima', '9999-9999', 'leandro', '123456', 'user'),
(4, 'Silvio Langer', '7777-7777', 'silvio', '123456', 'user'),
(5, 'Marlene Oliveira', '5555-5555', 'marlene', '123456', 'user'),
(6, 'bruce alisson', '3333-3333', 'bruce', '123456', 'user'),
(8, 'Pedro deboni', '4444-4444', 'pedro', '1234567', 'user'),
(9, 'Jeferson Leon', '2222-2222', 'leon', '123456', 'user'),
(12, 'maria cristina', '2222-2222', 'maria', '123456', 'user'),
(13, 'maria ana', '4444-4444', 'ana', '123456', 'user'),
(14, 'Jurema do bar', '4444-4444', 'jurema', '123456', 'user'),
(15, 'joca nunes', '5555-5555', 'joca', '123456', 'user'),
(16, 'Maria aparecida', '1111-1111', 'aparecida', '123456', 'user'),
(17, 'joao alan', '3333-3333', 'alan', '123456', 'user'),
(18, 'uriel cardoso', '4444-4444', 'uriel', '123456', 'user'),
(19, 'uzias oliveira', '7777-7777', 'uzias', '123456', 'user'),
(20, 'Rodrigo Faro', '1234-4321', 'Faro', '123456', 'user'),
(67, 'Ricardo', '5191886547', 'ric', '12345678', 'user'),
(100, '', '', '', '', 'admin'),
(101, 'jhon moreira', '1111-1111', 'jhon', '123456', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `login` (`login`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
