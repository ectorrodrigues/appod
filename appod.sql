-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2024 at 01:38 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appod`
--

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(10) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date_publish` date NOT NULL,
  `date_added` date NOT NULL,
  `id_podcast` int(100) NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `currenttime` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed`
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
-- Table structure for table `podcast`
--

CREATE TABLE `podcast` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `podcast`
--

INSERT INTO `podcast` (`id`, `title`, `id_publisher`, `url`, `id_user`) VALUES
(1, 'Heavyweight', 1, 'https://feeds.megaphone.fm/heavyweight-spot', 0),
(2, 'Reply All', 1, 'https://feeds.megaphone.fm/replyall', 0),
(22, 'Science Vs', 1, 'https://feeds.megaphone.fm/sciencevs', 0),
(35, 'Braincast', 2, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/d4c8e398-446c-447a-ad41-acd400edccc1/podcast.rss', 0),
(47, 'Nerdcast', 3, 'https://api.jovemnerd.com.br/feed-nerdcast/', 0),
(58, 'Anticast', 5, 'https://anchor.fm/s/f1a7ac64/podcast/rss', 0),
(61, 'Radiolab', 6, 'https://feeds.simplecast.com/EmVW7VGp', 0),
(85, 'Xadrez Verbal', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNDcxMjIzNy9lcGlzb2Rlcy9mZWVk', 0),
(86, 'Medo e Delírio em Brasília', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL21lZG8tZS1kZWxpcmlvL2ZlZWQvcG9kY2FzdC8', 0),
(87, 'Fronteiras Invisíveis do Futebol', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL2Zyb250ZWlyYXMtaW52aXNpdmVpcy1kby1mdXRlYm9sL2ZlZWQv', 0),
(88, 'Naruhodo', 2, 'https://feeds.simplecast.com/hwQVm5gy', 0),
(89, 'Mamilos', 2, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/c7d40835-26d2-4ce6-bb56-acd401531b79/29d28dbf-9a33-4dd4-82e0-acd401531b87/podcast.rss', 0),
(90, 'Cinemático', 2, 'https://feeds.acast.com/public/shows/639392cb6c25ea001115e06a', 0),
(91, 'Código Aberto', 2, 'https://feeds.acast.com/public/shows/638aa82941e41a00108d85fc', 0),
(92, 'História Preta', 2, 'https://historiapreta.com.br/feed/podcast/?terms=o-plano', 0),
(93, 'Mupoca', 2, 'https://www.spreaker.com/show/3511542/episodes/feed', 0),
(94, 'Every Little Thing', 1, 'https://feeds.megaphone.fm/elt-spot', 0),
(96, 'Motherhacker', 1, 'https://feeds.megaphone.fm/mh-spot', 0),
(97, 'Where Should We Begin?', 10, 'https://feeds.megaphone.fm/ep-wswb', 0),
(98, 'Revolushow', 5, 'https://anchor.fm/s/7dfb0f7c/podcast/rss', 0),
(99, 'O Código do Russo', 5, 'https://www.spreaker.com/show/5001237/episodes/feed', 0),
(100, 'Imagina Juntas', 5, 'https://www.spreaker.com/show/2929952/episodes/feed', 0),
(101, 'Motherchip', 5, 'https://www.omnycontent.com/d/playlist/42233656-1562-49af-98d5-acd100df7932/a3504d75-e95a-41c5-8dda-aced013a0cb9/343561ea-888c-4641-bd55-aced013a0cd5/podcast.rss', 0),
(102, 'Decrépitos', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMDAwOWIxNjctMGU4Mi00MTRlLTkxZWItYWFlODAxMWZjNjZkLzE4NWE4NDBjLTU3OGQtNGUxMS04OWQ1LWFjMGYwMGZmZmUzMi9mM2ZjZDIwZC1jNTlhLTRmOTMtYmFmNS1hYzBmMDBmZmZlNDAvcG9kY2FzdC5yc3M', 0),
(103, 'This American Life', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cudGhpc2FtZXJpY2FubGlmZS5vcmcvcG9kY2FzdC9yc3MueG1s', 0),
(104, 'Radio Ambulante', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMxNS9wb2RjYXN0LnhtbA', 0),
(105, 'Planet Money', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDI4OS9wb2RjYXN0LnhtbA', 0),
(106, 'Invisibilia', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMwNy9wb2RjYXN0LnhtbA', 0),
(107, 'Tiny Desk Concerts', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMwNi9wb2RjYXN0LnhtbA', 0),
(108, 'Podpah', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy81N2JkMzBkOC9wb2RjYXN0L3Jzcw', 0),
(109, 'Papricast', 7, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLmZlZWRidXJuZXIuY29tL1BhcHJpY2FzdA', 0),
(110, 'Serial', 8, 'https://feeds.simplecast.com/xl36XBC2', 0),
(111, 'S-Town', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DcHZucElhag', 0),
(112, 'Projeto Humanos', 5, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/220ec2a9-bb93-469e-aad7-acd8013110b7/11cd2462-4550-482d-88ea-acd8013110cf/podcast.rss', 0),
(113, 'Conversas Paralelas', 9, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4LzFhMWE1NDY2LTJiNGUtNDc0YS1hNzRkLWFkYTUwMGI5MzBkYS9lY2I1NTE1NS1iYmNmLTRmNmYtOTdlMy1hZGE1MDBiOTMxZTAvcG9kY2FzdC5yc3M', 0),
(114, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 0),
(165, 'A Mulher da Casa abandonada', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMmY2YTc5YWEtZDE4MS00OGE0LTkyZTAtYWM1ZDAwYzhlYjFkLzA0MWFiZmNlLWU1YTctNDljMy05NzAwLWFlYTYwMTUxYTA3Ni9hMGM3NWMzYy05Y2RmLTQ4ODUtODVkNy1hZWE2MDE1MzUyOTMvcG9kY2FzdC5yc3M', 0),
(167, 'Death Sex Money', 6, 'https://feeds.megaphone.fm/SLT2123367297', 0),
(169, 'We were three', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9HcjUxcjFvcQ', 0),
(172, 'The Coldest Case in Laraime', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS93SHFsczhkMQ', 0),
(174, 'O Atelie', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTc1NDAxMi9lcGlzb2Rlcy9mZWVk?hl=pt-br', 0),
(176, 'Ciencia Suja', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkLnBvZGJlYW4uY29tL2NpZW5jaWFzdWphL2ZlZWQueG1s?hl=pt-br', 0),
(178, 'Ologies', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5mZWVkYnVybmVyLmNvbS9PbG9naWVz?hl=pt-br', 0),
(182, 'Radio Novelo Apresenta', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTcwMzMzMS9lcGlzb2Rlcy9mZWVk', 0),
(183, 'Projeto Querino', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTc4MzMzOC9lcGlzb2Rlcy9mZWVk?hl=pt-br', 0),
(184, 'Search Engine', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy84YTA1ZTc0Yy9wb2RjYXN0L3Jzcw?hl=pt-br', 0),
(189, 'Freakonomics', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9ZOGxGYk9UNA?hl=pt-br', 0),
(191, 'Frontline Dispatch', 7, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLmZyb250bGluZS5vcmcvVGhlRnJvbnRsaW5lRGlzcGF0Y2g?hl=pt-br', 0),
(230, 'How is Work?', 10, 'https://feeds.megaphone.fm/ep-hw', 0),
(232, 'Serial', 11, 'https://feeds.simplecast.com/xl36XBC2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `title`) VALUES
(1, 'Gimlet'),
(2, 'B9'),
(3, 'Jovemnerd'),
(4, 'Central 3'),
(5, 'Half Deaf'),
(6, 'WNYC'),
(7, 'Various'),
(8, 'NPR'),
(9, 'Globoplay'),
(10, 'Esther Perel'),
(11, 'The New York times');

-- --------------------------------------------------------

--
-- Table structure for table `shout`
--

CREATE TABLE `shout` (
  `id` int(100) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shout`
--

INSERT INTO `shout` (`id`, `title`) VALUES
(1, 'Sarah Koenig'),
(2, 'Ivan Mizanzuk'),
(3, 'João Carvalho'),
(4, 'Filipe Figueiredo'),
(5, 'Leonardo Santos'),
(6, 'Marton Santos'),
(7, 'Elton Bandeira'),
(8, 'Marcos Beccari'),
(9, 'Ancara'),
(10, 'Zamiliano'),
(11, 'Tupá Guerra'),
(12, 'Alex Goldman'),
(13, 'Jonathan Goldstein'),
(14, 'Wendy Zukerman');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `keypass` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_iv` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_tag` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `title`, `password`, `keypass`, `key_iv`, `key_tag`, `created_at`, `active`) VALUES
(1, 'ectorrodrigues', 'UGdTUWU5bGpOa2ZaOTBYM0FPaFo5UT09', 'UGdTUWU5bGpOa2ZaOTBYM0FPaFo5UT09', '19e5519ff6aa50d3ab3a950263e41faa33ac465be22924076651fef57a24348e', '6260664703b29c88', '2022-03-27', 1),
(2, 'test', 'cm04cGgzNmF5SWJVa21sbnc1Q2FhUT09', 'cm04cGgzNmF5SWJVa21sbnc1Q2FhUT09', 'f3e0cf582b838629cc3fdc77e038aa488d5eecd1d45e137778efcf073675f30b', '032624e21ea98674', '2022-03-27', 1),
(3, 'test2', 'bDB1dFJmcENCRCtEZUJBUVZpWTZBUT09', 'bDB1dFJmcENCRCtEZUJBUVZpWTZBUT09', '1d9690e63688889c9a4ec77c0b9fcd58558f5ef07a69052bcaebfc004b097886', 'f7daed023efa84ef', '2022-03-27', 1),
(4, 'test5', 'enNSRGQzbEo3MFlDSkJCSi9zVDl6dz09', 'enNSRGQzbEo3MFlDSkJCSi9zVDl6dz09', '3221fe0ec3710c051ce1be0e13372b8b6d73bc06c9d3b7b1efbeb0cbe1f3fde0', '1f92ba8bc73486c3', '2022-03-27', 1),
(5, 'kemilly', 'RUcxRlVWaEk1cU5wTXIrMnZPc0hnQT09', 'RUcxRlVWaEk1cU5wTXIrMnZPc0hnQT09', '4870791426606515bcbc61e806acc3edf12af30aaff03a74ff9834a50d798649', '7236ef93ab2e3d93', '2022-03-31', 1),
(7, 'kemillymartin', 'em1Va0dPVW5EYWExaXZjMjJxUlRtdz09', 'em1Va0dPVW5EYWExaXZjMjJxUlRtdz09', 'a401d29519a12611bfc1e4d5a2d941d55afc0937a196a3c3e56524df94772a4f', 'e6d44d50a3bce0e3', '2022-04-04', 1),
(8, 'luao', 'UzZrbEN3SHNyRHNpeGUrVHIrQVVOUT09', 'UzZrbEN3SHNyRHNpeGUrVHIrQVVOUT09', '250da3697473182155d7883a9bb2c17a7cf68247cfd604f66c24cada6d704140', '04aad354107450f8', '2022-04-04', 1),
(9, 'VitorATbb', 'SHhJOERPdjBOZGlhSmE5Z2JDYjNLQT09', 'SHhJOERPdjBOZGlhSmE5Z2JDYjNLQT09', 'd84ff27ef0ec0ad1d5a50a10811bfd43970e6a0de03b7dd893b5054d1d6c1747', 'd1fc528105810892', '2022-04-04', 1),
(10, 'testupdate', 'ZllIbUFpYXNFcDVFTXNVcnUrUTFjUT09', 'ZllIbUFpYXNFcDVFTXNVcnUrUTFjUT09', 'b27b1d88672d7ba4d9813f5181bf873f97801a04123616a0dc1d7df4238d0c6a', '70f9cfbe5591f3ef', '2022-04-05', 1),
(11, 'testtime', 'OW9sWHlJSy8remJPcktUU2N5cVR6UT09', 'OW9sWHlJSy8remJPcktUU2N5cVR6UT09', 'abe10f8e5bf91f97f2c2066df4b53fc9d55702bcd6346213c2cc926ebb5cdc5b', '381b6d333acfcc55', '2022-04-06', 1),
(12, 'evila', 'SW01MkxERk8ySGFqc0FUZWh2anhwZz09', 'SW01MkxERk8ySGFqc0FUZWh2anhwZz09', '91a37e44283f85d479989e89bec1fa2f0086deb8ab05e6e6688ad88603effa46', '3edf514fc003b6d3', '2022-04-29', 1),
(13, 'donin', 'VTRVSGw1UFRpQmlnV1FOdU5YVTMyQT09', 'VTRVSGw1UFRpQmlnV1FOdU5YVTMyQT09', '5f7d21b24b51806f092fd57bbb5909171c30c976eb9a3eff412d1c89ba2444a3', '277f62bca4e69c7a', '2023-11-17', 1),
(14, 'nametest', 'Sjg3QnRZSnBtSGpaaTMvaUs4b3lhZz09', 'Sjg3QnRZSnBtSGpaaTMvaUs4b3lhZz09', 'da60c18791d4383b9346f19cc316fed463be4e8fc4900f9d834da11781b99446', '11b1ad3c14df018a', '2024-03-06', 1),
(15, 'alicewelter', 'K2xURXYrQUl6aFd0V0MyYzdiaHk5UT09', 'K2xURXYrQUl6aFd0V0MyYzdiaHk5UT09', '0782d279c72f0bae2942bbf82937a7b17c6a2d7d9e5b13f7a57929526eeedb10', '2c9ceb7aef6732df', '2024-03-12', 1),
(16, 'alicewelter', 'd1lSK21yQThxWndCYURWa09FYlZWQT09', 'd1lSK21yQThxWndCYURWa09FYlZWQT09', '10904d262880ebc1370260737dac798f43aae33934755e66ddac2a59051ace11', 'ab53b21b0bd92530', '2024-03-12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcast`
--
ALTER TABLE `podcast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shout`
--
ALTER TABLE `shout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6171;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podcast`
--
ALTER TABLE `podcast`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shout`
--
ALTER TABLE `shout`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
