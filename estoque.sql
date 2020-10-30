-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Out-2020 às 20:49
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cod` int(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `cod`, `name`, `price`, `quantity`, `min_quantity`) VALUES
(1, 12345, 'Teste versao 1.0', 180.6, 10, 12),
(2, 576483823, 'Teste 02', 270, 30, 2),
(3, 4563, 'Teste 03', 540.1, 40, 2),
(4, 6985741, 'Teste 04', 54, 20, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_report`
--

CREATE TABLE `product_report` (
  `id` int(11) NOT NULL,
  `user_number` int(11) NOT NULL,
  `cod_products` int(11) NOT NULL,
  `type_action` tinyint(5) NOT NULL,
  `date_report` datetime NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `product_report`
--

INSERT INTO `product_report` (`id`, `user_number`, `cod_products`, `type_action`, `date_report`, `quantity`) VALUES
(1, 123, 576483823, 1, '2020-10-13 05:14:05', 15),
(2, 123, 4563, 1, '2020-10-13 05:14:26', 21),
(3, 123, 12345, 2, '2020-10-13 05:15:41', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_number` int(10) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `user_token` varchar(32) DEFAULT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `user_number`, `user_pass`, `user_token`, `name`) VALUES
(1, 123, '202cb962ac59075b964b07152d234b70', 'cc84b81809330070be2b21550c220dfa', 'Renan'),
(3, 321, 'caf1a3dfb505ffed0d024130f58c5cfa', NULL, 'Admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `product_report`
--
ALTER TABLE `product_report`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `product_report`
--
ALTER TABLE `product_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
