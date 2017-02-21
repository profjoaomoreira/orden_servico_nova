-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Fev-2017 às 07:36
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
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE `tbclientes` (
  `idcli` int(11) NOT NULL,
  `nomecli` varchar(50) NOT NULL,
  `endcli` varchar(100) DEFAULT NULL,
  `fonecli` varchar(50) NOT NULL,
  `emailcli` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`idcli`, `nomecli`, `endcli`, `fonecli`, `emailcli`) VALUES
(1, 'Linus Torvalds', 'Rua Tux, 2015', '9999-9999', 'linux@linux.com'),
(5, 'joaquin jorge alencar', 'rua das oliveira', '4553453453', 'joaquinjorge@gmail.com'),
(6, 'leonardo pereira ramos', 'rua das flores', '54353434', 'leandro@hotamail.com'),
(7, 'Alana Moreira Machado', 'rua solimoes, 236', '5134233103', 'alanamoreira@gmail.com'),
(8, 'juliana paes', 'rua globo', 'er543534534', 'ju#globo.com'),
(13, 'Joao Padilha Moreira', 'rua jose de alencar', '5194744224', 'professorjoaomoreira@gmail.com'),
(14, 'eva denise lopes machado moreira', 'rua jose de alencar', '94744224', 'eva@gmail.com'),
(15, 'joao moreira', 'rua jose de alencar', '94744224', 'joao.moreira@qi.edu.br'),
(16, 'alana moreira barbosa', 'rua alameda das garcas', '4534098308945890', 'alana@bol.com.br'),
(17, 'joao alan machado', 'rua pingo', '234039842', 'joaoalan@bol.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbos`
--

CREATE TABLE `tbos` (
  `os` int(11) NOT NULL,
  `data_os` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(15) NOT NULL,
  `situacao` varchar(20) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbos`
--

INSERT INTO `tbos` (`os`, `data_os`, `tipo`, `situacao`, `equipamento`, `defeito`, `servico`, `tecnico`, `valor`, `idcli`) VALUES
(1, '2016-04-26 01:41:25', '', '', 'notebook', 'nao liga', 'troca da fonte', 'ze', '87.50', 1),
(2, '2017-02-13 04:22:48', 'os', 'Aguardando Aprovação', 'telefone moto z', 'botao quebrado', 'trocar o botao', 'juarez', '500.00', 5),
(3, '2017-02-13 04:39:25', 'orcamento', 'Aguardando Aprovação', 'fone de ouvido', 'nao toca musica', 'trocar o fone', 'joao', '4000.00', 1),
(4, '2017-02-13 04:57:09', 'orcamento', 'Entrega OK', 'radio', 'sem pilha', '', '', '90.00', 6),
(5, '2017-02-13 04:57:55', 'Orçamento', 'Aguardando Aprovação', 'scaner', 'lampada queimada', 'trocar lampada', 'pedro', '1.00', 1),
(6, '2017-02-13 04:59:43', 'os', 'Aguardando peça', 'capinha rasgada', 'descosturada', '', '', '50.80', 7),
(8, '2017-02-14 03:46:47', 'os', 'Aguardando peça', 'carregador de celular', 'nao esta carregando', 'fazer funcionar ou trocar por outro novo', 'joao moreira', '140.00', 13),
(9, '2017-02-14 03:56:33', 'Orcamento', 'Na bancada', 'lampada de led', 'corte lateral', 'fazer corte a laser', 'joao moreira', '10.00', 5),
(10, '2017-02-18 23:34:27', 'os', 'Aguardando Aprovação', 'celular moto x play', 'som baixo', 'trocar o autofalante', 'joao moreira', '0.00', 17);

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
-- Indexes for table `tbclientes`
--
ALTER TABLE `tbclientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indexes for table `tbos`
--
ALTER TABLE `tbos`
  ADD PRIMARY KEY (`os`),
  ADD KEY `idcli` (`idcli`);

--
-- Indexes for table `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbclientes`
--
ALTER TABLE `tbclientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbos`
--
ALTER TABLE `tbos`
  MODIFY `os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbos`
--
ALTER TABLE `tbos`
  ADD CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
