-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Fev-2017 às 07:22
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbos`
--
ALTER TABLE `tbos`
  ADD PRIMARY KEY (`os`),
  ADD KEY `idcli` (`idcli`);

--
-- AUTO_INCREMENT for dumped tables
--

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
