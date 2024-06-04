-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/06/2024 às 08:37
-- Versão do servidor: 10.6.17-MariaDB-cll-lve
-- Versão do PHP: 8.1.16

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
  `id` int(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `date_publish` date NOT NULL,
  `date_added` date NOT NULL,
  `id_podcast` int(100) NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `currenttime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `feed`
--

CREATE TABLE `feed` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `title_episode` varchar(500) NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `podcast`
--

CREATE TABLE `podcast` (
  `id` int(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `id_publisher` int(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `podcast`
--

INSERT INTO `podcast` (`id`, `title`, `id_publisher`, `url`, `id_user`) VALUES
(1, 'Heavyweight', 1, 'https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker', 0),
(2, 'Reply All', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5tZWdhcGhvbmUuZm0vcmVwbHlhbGw?sa=X&ved=0CBoQ27cFahgKEwiokouOmeT4AhUAAAAAHQAAAAAQ6xI', 0),
(22, 'Science Vs', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5tZWdhcGhvbmUuZm0vc2NpZW5jZXZz', 0),
(35, 'Braincast', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M', 0),
(47, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 0),
(58, 'Anticast', 5, 'https://www.spreaker.com/show/3221921/episodes/feed', 0),
(61, 'Radiolab', 6, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLndueWMub3JnL3JhZGlvbGFi', 0),
(85, 'Xadrez Verbal', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNDcxMjIzNy9lcGlzb2Rlcy9mZWVk', 0),
(86, 'Medo e Delírio em Brasília', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL21lZG8tZS1kZWxpcmlvL2ZlZWQvcG9kY2FzdC8', 0),
(87, 'Fronteiras Invisíveis do Futebol', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL2Zyb250ZWlyYXMtaW52aXNpdmVpcy1kby1mdXRlYm9sL2ZlZWQv', 0),
(88, 'Naruhodo', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9od1FWbTVneQ', 0),
(89, 'Mamilos', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2M3ZDQwODM1LTI2ZDItNGNlNi1iYjU2LWFjZDQwMTUzMWI3OS8yOWQyOGRiZi05YTMzLTRkZDQtODJlMC1hY2Q0MDE1MzFiODcvcG9kY2FzdC5yc3M', 0),
(90, 'Cinemático', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNDIyMzM2NTYtMTU2Mi00OWFmLTk4ZDUtYWNkMTAwZGY3OTMyL2Q0NGIyMjU3LWY0NGYtNGQ5YS1hZmUyLWFjZDIwMTNmNDEzNi85Mzc4MGFmMC1hNmRiLTQwZjQtODJkOS1hY2QyMDEzZjQxNWIvcG9kY2FzdC5yc3M', 0),
(91, 'Código Aberto', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNDIyMzM2NTYtMTU2Mi00OWFmLTk4ZDUtYWNkMTAwZGY3OTMyLzI2NzNiOWZjLWY4MGMtNDhhNS04MjUyLWFjZDIwMTUwN2M5Yi9lNDBkYTJiNy1lYTNiLTQ1NTYtODJkNy1hY2QyMDE1MDdjY2EvcG9kY2FzdC5yc3M', 0),
(92, 'História Preta', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9RYWU1aHZaVw', 0),
(93, 'Mupoca', 2, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLnNvdW5kY2xvdWQuY29tL3VzZXJzL3NvdW5kY2xvdWQ6dXNlcnM6ODU0OTMxODEvc291bmRzLnJzcw', 0),
(94, 'Every Little Thing', 1, 'https://gimletmedia.com/shows/every-little-thing/episodes#show-tab-picker', 0),
(95, 'Homecoming', 1, 'https://gimletmedia.com/shows/homecoming/episodes#show-tab-picker', 0),
(96, 'Motherhacker', 1, 'https://gimletmedia.com/shows/motherhacker/episodes#show-tab-picker', 0),
(97, 'Where Should We Begin?', 7, 'https://podcasts.google.com/feed/aHR0cDovL2VzdGhlci5hdWRpYmxlLmxpYnN5bnByby5jb20vcnNz?sa=X&ved=0CCgQ27cFahgKEwiokouOmeT4AhUAAAAAHQAAAAAQ6xI', 0),
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
(110, 'Serial', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS94bDM2WEJDMg', 0),
(111, 'S-Town', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DcHZucElhag', 0),
(112, 'Projeto Humanos', 5, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/220ec2a9-bb93-469e-aad7-acd8013110b7/11cd2462-4550-482d-88ea-acd8013110cf/podcast.rss', 0),
(113, 'Conversas Paralelas', 9, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4LzFhMWE1NDY2LTJiNGUtNDc0YS1hNzRkLWFkYTUwMGI5MzBkYS9lY2I1NTE1NS1iYmNmLTRmNmYtOTdlMy1hZGE1MDBiOTMxZTAvcG9kY2FzdC5yc3M', 0),
(114, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 0),
(133, 'Revolushow', 5, 'https://anchor.fm/s/7dfb0f7c/podcast/rss', 7),
(139, 'Braincast', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M', 8),
(140, 'Naruhodo', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9od1FWbTVneQ', 8),
(141, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 9),
(142, 'Podpah', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy81N2JkMzBkOC9wb2RjYXN0L3Jzcw', 9),
(143, 'Decrépitos', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMDAwOWIxNjctMGU4Mi00MTRlLTkxZWItYWFlODAxMWZjNjZkLzE4NWE4NDBjLTU3OGQtNGUxMS04OWQ1LWFjMGYwMGZmZmUzMi9mM2ZjZDIwZC1jNTlhLTRmOTMtYmFmNS1hYzBmMDBmZmZlNDAvcG9kY2FzdC5yc3M', 8),
(144, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 8),
(145, 'Podpah', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy81N2JkMzBkOC9wb2RjYXN0L3Jzcw', 8),
(146, 'Imagina Juntas', 5, 'https://www.spreaker.com/show/2929952/episodes/feed', 8),
(147, 'Projeto Humanos', 5, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/220ec2a9-bb93-469e-aad7-acd8013110b7/11cd2462-4550-482d-88ea-acd8013110cf/podcast.rss', 8),
(148, 'Revolushow', 5, 'https://anchor.fm/s/7dfb0f7c/podcast/rss', 8),
(149, 'Medo e Delírio em Brasília', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL21lZG8tZS1kZWxpcmlvL2ZlZWQvcG9kY2FzdC8', 8),
(150, 'Tiny Desk Concerts', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMwNi9wb2RjYXN0LnhtbA', 8),
(151, 'Projeto Humanos', 5, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/220ec2a9-bb93-469e-aad7-acd8013110b7/11cd2462-4550-482d-88ea-acd8013110cf/podcast.rss', 7),
(152, 'Medo e Delírio em Brasília', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL21lZG8tZS1kZWxpcmlvL2ZlZWQvcG9kY2FzdC8', 7),
(153, 'Mamilos', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2M3ZDQwODM1LTI2ZDItNGNlNi1iYjU2LWFjZDQwMTUzMWI3OS8yOWQyOGRiZi05YTMzLTRkZDQtODJlMC1hY2Q0MDE1MzFiODcvcG9kY2FzdC5yc3M', 8),
(154, 'Código Aberto', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNDIyMzM2NTYtMTU2Mi00OWFmLTk4ZDUtYWNkMTAwZGY3OTMyLzI2NzNiOWZjLWY4MGMtNDhhNS04MjUyLWFjZDIwMTUwN2M5Yi9lNDBkYTJiNy1lYTNiLTQ1NTYtODJkNy1hY2QyMDE1MDdjY2EvcG9kY2FzdC5yc3M', 10),
(155, 'Decrépitos', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMDAwOWIxNjctMGU4Mi00MTRlLTkxZWItYWFlODAxMWZjNjZkLzE4NWE4NDBjLTU3OGQtNGUxMS04OWQ1LWFjMGYwMGZmZmUzMi9mM2ZjZDIwZC1jNTlhLTRmOTMtYmFmNS1hYzBmMDBmZmZlNDAvcG9kY2FzdC5yc3M', 10),
(156, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 11),
(157, 'Serial', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS94bDM2WEJDMg', 7),
(159, 'Código Aberto', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNDIyMzM2NTYtMTU2Mi00OWFmLTk4ZDUtYWNkMTAwZGY3OTMyLzI2NzNiOWZjLWY4MGMtNDhhNS04MjUyLWFjZDIwMTUwN2M5Yi9lNDBkYTJiNy1lYTNiLTQ1NTYtODJkNy1hY2QyMDE1MDdjY2EvcG9kY2FzdC5yc3M', 12),
(160, 'Naruhodo', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9od1FWbTVneQ', 12),
(161, 'Medo e Delírio em Brasília', 4, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuY2VudHJhbDMuY29tLmJyL2NhdGVnb3J5L3BvZGNhc3RzL21lZG8tZS1kZWxpcmlvL2ZlZWQvcG9kY2FzdC8', 12),
(162, 'Braincast', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M', 12),
(163, 'Decrépitos', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMDAwOWIxNjctMGU4Mi00MTRlLTkxZWItYWFlODAxMWZjNjZkLzE4NWE4NDBjLTU3OGQtNGUxMS04OWQ1LWFjMGYwMGZmZmUzMi9mM2ZjZDIwZC1jNTlhLTRmOTMtYmFmNS1hYzBmMDBmZmZlNDAvcG9kY2FzdC5yc3M', 12),
(165, 'A Mulher da Casa abandonada', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMmY2YTc5YWEtZDE4MS00OGE0LTkyZTAtYWM1ZDAwYzhlYjFkLzA0MWFiZmNlLWU1YTctNDljMy05NzAwLWFlYTYwMTUxYTA3Ni9hMGM3NWMzYy05Y2RmLTQ4ODUtODVkNy1hZWE2MDE1MzUyOTMvcG9kY2FzdC5yc3M', 0),
(167, 'Death Sex Money', 7, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLndueWMub3JnL2RlYXRoc2V4bW9uZXk', 0),
(169, 'We were three', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9HcjUxcjFvcQ', 0),
(172, 'The Coldest Case in Laraime', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS93SHFsczhkMQ', 0),
(174, 'O Atelie', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTc1NDAxMi9lcGlzb2Rlcy9mZWVk?hl=pt-br', 0),
(176, 'Ciencia Suja', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkLnBvZGJlYW4uY29tL2NpZW5jaWFzdWphL2ZlZWQueG1s?hl=pt-br', 0),
(178, 'Ologies', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5mZWVkYnVybmVyLmNvbS9PbG9naWVz?hl=pt-br', 0),
(182, 'Radio Novelo Apresenta', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTcwMzMzMS9lcGlzb2Rlcy9mZWVk', 0),
(183, 'Projeto Querino', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cuc3ByZWFrZXIuY29tL3Nob3cvNTc4MzMzOC9lcGlzb2Rlcy9mZWVk?hl=pt-br', 0),
(184, 'Search Engine', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy84YTA1ZTc0Yy9wb2RjYXN0L3Jzcw?hl=pt-br', 0),
(186, 'Radiolab', 6, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLndueWMub3JnL3JhZGlvbGFi', 13),
(187, 'Serial', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS94bDM2WEJDMg', 13),
(188, 'S-Town', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DcHZucElhag', 13),
(189, 'Freakonomics', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9ZOGxGYk9UNA?hl=pt-br', 0),
(191, 'Frontline Dispatch', 7, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLmZyb250bGluZS5vcmcvVGhlRnJvbnRsaW5lRGlzcGF0Y2g?hl=pt-br', 0),
(195, 'Heavyweight', 1, 'https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker', 14),
(196, 'Science Vs', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5tZWdhcGhvbmUuZm0vc2NpZW5jZXZz', 14),
(198, 'This American Life', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cudGhpc2FtZXJpY2FubGlmZS5vcmcvcG9kY2FzdC9yc3MueG1s', 14),
(199, 'Where Should We Begin?', 7, 'https://podcasts.google.com/feed/aHR0cDovL2VzdGhlci5hdWRpYmxlLmxpYnN5bnByby5jb20vcnNz?sa=X&ved=0CCgQ27cFahgKEwiokouOmeT4AhUAAAAAHQAAAAAQ6xI', 16),
(200, 'Where Should We Begin?', 7, 'https://podcasts.google.com/feed/aHR0cDovL2VzdGhlci5hdWRpYmxlLmxpYnN5bnByby5jb20vcnNz?sa=X&ved=0CCgQ27cFahgKEwiokouOmeT4AhUAAAAAHQAAAAAQ6xI', 16),
(201, 'Where Should We Begin?', 7, 'https://podcasts.google.com/feed/aHR0cDovL2VzdGhlci5hdWRpYmxlLmxpYnN5bnByby5jb20vcnNz?sa=X&ved=0CCgQ27cFahgKEwiokouOmeT4AhUAAAAAHQAAAAAQ6xI', 16);

-- --------------------------------------------------------

--
-- Estrutura para tabela `publisher`
--

CREATE TABLE `publisher` (
  `id` int(255) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `publisher`
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
(9, 'Globoplay');

-- --------------------------------------------------------

--
-- Estrutura para tabela `shout`
--

CREATE TABLE `shout` (
  `id` int(100) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `shout`
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
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `keypass` varchar(500) NOT NULL,
  `key_iv` varchar(500) NOT NULL,
  `key_tag` varchar(500) NOT NULL,
  `created_at` date DEFAULT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `user`
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
-- Índices de tabela `shout`
--
ALTER TABLE `shout`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de tabela `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `podcast`
--
ALTER TABLE `podcast`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `shout`
--
ALTER TABLE `shout`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
