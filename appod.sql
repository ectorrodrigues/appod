-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 26/03/2022 às 05:10
-- Versão do servidor: 5.7.34
-- Versão do PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `appod`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `episode`
--

CREATE TABLE `episode` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date_publish` date NOT NULL,
  `date_added` date NOT NULL,
  `id_podcast` int(100) NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `episode`
--

INSERT INTO `episode` (`id`, `title`, `url`, `date_publish`, `date_added`, `id_podcast`, `id_publisher`, `id_user`, `status`) VALUES
(281, ' #43 Maura           ', 'https://open.spotify.com/embed/episode/0M6rYBfxT793Jz7XV466eE', '2021-12-16', '2022-03-25', 1, 1, 1, 0),
(282, ' #42 Mark           ', 'https://open.spotify.com/embed/episode/4stY381hQErlrE6fpYhOdE', '2021-12-09', '2022-03-25', 1, 1, 1, 0),
(283, ' #41 Barbara Wilson           ', 'https://open.spotify.com/embed/episode/3w8ixRAVatVyzg63Nf8NLr', '2021-11-18', '2022-03-25', 1, 1, 1, 0),
(284, ' #40 Barbara Shutt           ', 'https://open.spotify.com/embed/episode/2BZrL9n11cbetRKfpSuAC9', '2021-11-18', '2022-03-25', 1, 1, 1, 0),
(285, ' #39 Stephen           ', 'https://open.spotify.com/embed/episode/03Nep7Pgs1hTrDwcqy7dht', '2021-10-28', '2022-03-25', 1, 1, 1, 0),
(286, ' #38 Justine           ', 'https://open.spotify.com/embed/episode/16yGTBn9IXaHkR9G9m9q0I', '2021-10-21', '2022-03-25', 1, 1, 1, 0),
(287, ' #37 John           ', 'https://open.spotify.com/embed/episode/6QYP10F2Hwevc7XLdKGqT2', '2021-10-07', '2022-03-25', 1, 1, 1, 0),
(288, ' #36 Brandon           ', 'https://open.spotify.com/embed/episode/0RtYPfbxDH8RXv0jAMRxw4', '2021-09-30', '2022-03-25', 1, 1, 1, 0),
(289, ' Heavyweight Short: Hallie           ', 'https://open.spotify.com/embed/episode/7nH4q5cQ8pAVDefoNd1XK5', '2021-06-17', '2022-03-25', 1, 1, 1, 0),
(290, ' #35 Rachel and Jon           ', 'https://open.spotify.com/embed/episode/6jiqezUBhbDOfbCuFJK2TP', '2020-11-12', '2022-03-25', 1, 1, 1, 0),
(291, ' #34 Annie           ', 'https://open.spotify.com/embed/episode/6in5V1yLC4AdjRTpBx0BeC', '2020-11-05', '2022-03-25', 1, 1, 1, 0),
(292, ' #33 Bobby           ', 'https://open.spotify.com/embed/episode/2YjgiZpS7tioIlL4y8QAA8', '2020-10-22', '2022-03-25', 1, 1, 1, 0),
(293, ' #32 Vivian           ', 'https://open.spotify.com/embed/episode/0h4nFE0qhocuMcfEXym259', '2020-10-15', '2022-03-25', 1, 1, 1, 0),
(294, ' Why Is Mason Reese Crying?           ', 'https://open.spotify.com/embed/episode/4AOPapQxrrmXzQuGo747hq', '2020-10-08', '2022-03-25', 1, 1, 1, 0),
(295, ' Heavyweight Check In 8           ', 'https://open.spotify.com/embed/episode/7HWu5SMBwAxSLGA80oUT1O', '2020-06-18', '2022-03-25', 1, 1, 1, 0),
(296, ' Heavyweight Check In 7           ', 'https://open.spotify.com/embed/episode/45INHfAbW5f7yG3sxpsBWt', '2020-06-04', '2022-03-25', 1, 1, 1, 0),
(297, ' Heavyweight Check In 6           ', 'https://open.spotify.com/embed/episode/0GyBE3B9EhN1gsUGCO5soX', '2020-05-21', '2022-03-25', 1, 1, 1, 0),
(298, ' Heavyweight Check In 5           ', 'https://open.spotify.com/embed/episode/6oUMel4VioFGVywUCkkI4u', '2020-05-07', '2022-03-25', 1, 1, 1, 0),
(299, ' Heavyweight Check In 4           ', 'https://open.spotify.com/embed/episode/4Ys8D9H7CWGpBMqCSz2SJm', '2020-04-27', '2022-03-25', 1, 1, 1, 0),
(300, ' Heavyweight Check In 3           ', 'https://open.spotify.com/embed/episode/0WUtx6YZN4iO2kHb7iAHi4', '2020-04-14', '2022-03-25', 1, 1, 1, 0),
(301, ' Heavyweight Check In 2           ', 'https://open.spotify.com/embed/episode/64IJbqhggYHlDnh5TlHtFt', '2020-03-27', '2022-03-25', 1, 1, 1, 0),
(302, ' Heavyweight Checks In           ', 'https://open.spotify.com/embed/episode/3wyuC1zt8iSmVzRuPGE4Hr', '2020-03-18', '2022-03-25', 1, 1, 1, 0),
(303, ' #31 Marie-Claude           ', 'https://open.spotify.com/embed/episode/0dkA49NR29JIsywbUeWSub', '2019-12-19', '2022-03-25', 1, 1, 1, 0),
(304, ' #30 The Marshes           ', 'https://open.spotify.com/embed/episode/0IEbDo5NWHqHtkA8BEijl4', '2019-12-12', '2022-03-25', 1, 1, 1, 0),
(305, ' #29 Elyse           ', 'https://open.spotify.com/embed/episode/4cravvuXyaeZxbP0I7yXMR', '2019-11-21', '2022-03-25', 1, 1, 1, 0),
(306, ' #28 Dr. Muller           ', 'https://open.spotify.com/embed/episode/2lV7SJiUiCtBAGBY91KMaF', '2019-11-07', '2022-03-25', 1, 1, 1, 0),
(307, ' #27 Scott           ', 'https://open.spotify.com/embed/episode/3ZBwxPjR3OxCThz3PEkVyI', '2019-10-24', '2022-03-25', 1, 1, 1, 0),
(308, ' #26 Beverley and Van           ', 'https://open.spotify.com/embed/episode/1i0lq4KRorbmqZY2Xeo2Q0', '2019-10-10', '2022-03-25', 1, 1, 1, 0),
(309, ' #25 Becky and Jo           ', 'https://open.spotify.com/embed/episode/3xTzU8lcNdFVoaK4fwCgj2', '2019-10-03', '2022-03-25', 1, 1, 1, 0),
(310, ' #24 Jimmy and Mark           ', 'https://open.spotify.com/embed/episode/6szrriPwbHodLLv9bUcJPP', '2019-09-26', '2022-03-25', 1, 1, 1, 0),
(311, ' #23 Alex           ', 'https://open.spotify.com/embed/episode/342vSTJhgIVas4ve1nUyCH', '2018-12-13', '2022-03-25', 1, 1, 1, 0),
(312, ' #22 Marchel           ', 'https://open.spotify.com/embed/episode/6aBJTNyRSAw2a2s98GLatw', '2018-12-06', '2022-03-25', 1, 1, 1, 0),
(313, ' #21 Rachael           ', 'https://open.spotify.com/embed/episode/4MY69fA8LBsodltQwR5CqW', '2018-11-15', '2022-03-25', 1, 1, 1, 0),
(314, ' #20 Soraya           ', 'https://open.spotify.com/embed/episode/0GEVgoNZVFn8U0ApdXC0NX', '2018-11-08', '2022-03-25', 1, 1, 1, 0),
(315, ' #19 Joey           ', 'https://open.spotify.com/embed/episode/4WPRFrthdKNX410a5Z2JMZ', '2018-11-01', '2022-03-25', 1, 1, 1, 0),
(316, ' Zoe, PJ, and Chanel           ', 'https://open.spotify.com/embed/episode/5XiPCULqejDwzTNoVFH3t7', '2018-10-25', '2022-03-25', 1, 1, 1, 0),
(317, ' #18 Sven           ', 'https://open.spotify.com/embed/episode/31KTj6QvGuM5g7VoEkP9Ax', '2018-10-18', '2022-03-25', 1, 1, 1, 0),
(318, ' #17 Skye           ', 'https://open.spotify.com/embed/episode/5xvawJYLebA5zipoDnwhju', '2018-10-11', '2022-03-25', 1, 1, 1, 0),
(319, ' #16 Rob           ', 'https://open.spotify.com/embed/episode/3ujjIbe8EuyUHENrHjdgRj', '2018-10-04', '2022-03-25', 1, 1, 1, 0),
(320, ' #15 Dina           ', 'https://open.spotify.com/embed/episode/1oIjRKM1wT2xVVUJTYdePn', '2017-12-07', '2022-03-25', 1, 1, 1, 0),
(321, ' #14 Isabel           ', 'https://open.spotify.com/embed/episode/7IQcwYFKk3i9MvWQR1wNkW', '2017-11-30', '2022-03-25', 1, 1, 1, 0),
(322, ' #13 Kenny           ', 'https://open.spotify.com/embed/episode/6bqp6Ep6LDB2kWHF9aNxzO', '2017-11-16', '2022-03-25', 1, 1, 1, 0),
(323, ' #12 Jesse           ', 'https://open.spotify.com/embed/episode/2h7zw4DA0zBVm2qD4Tu7xz', '2017-11-09', '2022-03-25', 1, 1, 1, 0),
(324, ' #11 Christina           ', 'https://open.spotify.com/embed/episode/4X7IyUWzLzIx9im5BapC27', '2017-11-02', '2022-03-25', 1, 1, 1, 0),
(325, ' #10 Rose           ', 'https://open.spotify.com/embed/episode/6LCxtHAKFz353gOIiCqSy1', '2017-10-26', '2022-03-25', 1, 1, 1, 0),
(326, ' #9 Milt           ', 'https://open.spotify.com/embed/episode/0yrrNYCLE3zU23X1HhQmRo', '2017-09-28', '2022-03-25', 1, 1, 1, 0),
(327, ' #8 Jeremy           ', 'https://open.spotify.com/embed/episode/0FKSFGbWwmsCSLF0Nux23i', '2016-11-15', '2022-03-25', 1, 1, 1, 0),
(328, ' #7 Julia           ', 'https://open.spotify.com/embed/episode/6gyp1ojVkEPGAthe0Io1TT', '2016-11-08', '2022-03-25', 1, 1, 1, 0),
(329, ' #6 James           ', 'https://open.spotify.com/embed/episode/5PHM3WlpceQnpVNhBKsWyK', '2016-11-01', '2022-03-25', 1, 1, 1, 0),
(330, ' #5 Galit           ', 'https://open.spotify.com/embed/episode/171C8grV9yyXvTfeZP8KDg', '2016-10-25', '2022-03-25', 1, 1, 1, 0),
(331, ' #4 Tony           ', 'https://open.spotify.com/embed/episode/3bOBw2rcYr1zcazpuRNOC2', '2016-10-11', '2022-03-25', 1, 1, 1, 0),
(333, ' #2 Gregor           ', 'https://open.spotify.com/embed/episode/6LKrLVEAY3tsqHPURec6ke', '2016-09-24', '2022-03-25', 1, 1, 1, 0),
(335, ' Trailer           ', 'https://open.spotify.com/embed/episode/3OcMTqDu5RyFqzUn4zo5Ww', '2016-09-03', '2022-03-25', 1, 1, 1, 0),
(336, ' #3 Tara           ', 'https://open.spotify.com/embed/episode/7LMLJrRwxlM0SjXQMZKm02', '2016-10-04', '2022-03-25', 1, 1, 2, 1),
(337, ' #1 Buzz           ', 'https://open.spotify.com/embed/episode/68kq3bNz6hEuq8NtdfwERG', '2016-09-23', '2022-03-25', 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `feed`
--

CREATE TABLE `feed` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `title_episode` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `podcast`
--

CREATE TABLE `podcast` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `podcast`
--

INSERT INTO `podcast` (`id`, `title`, `id_publisher`, `id_user`) VALUES
(1, 'heavyweight', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `publisher`
--

CREATE TABLE `publisher` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `publisher`
--

INSERT INTO `publisher` (`id`, `title`) VALUES
(1, 'gimlet'),
(2, 'test');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `title`, `password`) VALUES
(1, 'ectorrodrigues', 'fritaxmetal'),
(2, 'test', 'test');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `podcast`
--
ALTER TABLE `podcast`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT de tabela `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `podcast`
--
ALTER TABLE `podcast`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
