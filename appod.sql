-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 28, 2022 at 03:38 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

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
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`id`, `title`, `url`, `date_publish`, `date_added`, `id_podcast`, `id_publisher`, `id_user`, `status`) VALUES
(165, 'Quem lê livros é mais inteligente?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b4412556-6594-4333-b2fd-ae620165a327/audio.mp3?utm_source=Podcast&amp', '2022-03-25', '2022-03-28', 46, 2, 1, 0),
(166, 'O fenômeno Casimiro', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/6833e4f4-aa92-4627-8f31-ae5b015ee2d3/audio.mp3?utm_source=Podcast&amp', '2022-03-17', '2022-03-28', 46, 2, 1, 0),
(167, 'Guia de Sobrevivência do Freela em Tempos de Crise', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/0b38f726-bc2a-4c24-b868-ae54018b36fc/audio.mp3?utm_source=Podcast&amp', '2022-03-10', '2022-03-28', 46, 2, 1, 0),
(168, 'A Ética da Imprensa em Tempos de Guerra', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/6661c338-ce2c-4d8e-89c6-ae4d0152d5c7/audio.mp3?utm_source=Podcast&amp', '2022-03-03', '2022-03-28', 46, 2, 1, 0),
(169, 'React de Tendências: o que vai acontecer (ou não) em 2022', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/70138c0d-74b7-43f2-b58c-ae470011a0e6/audio.mp3?utm_source=Podcast&amp', '2022-02-24', '2022-03-28', 46, 2, 1, 0),
(170, 'Joe Rogan, Monark e a encruzilhada do mercado de podcasts', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/837d7fce-4963-4dc4-8f74-ae40000491ad/audio.mp3?utm_source=Podcast&amp', '2022-02-17', '2022-03-28', 46, 2, 1, 0),
(171, 'Wordle, Termo.ooo, Letreco e a febre dos joguinhos de palavras', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/4b545946-a207-4ba3-bf10-ae3801676ddf/audio.mp3?utm_source=Podcast&amp', '2022-02-10', '2022-03-28', 46, 2, 1, 0),
(172, 'Tem Que Acabar [Edição 2022]', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/84d9d56d-9594-4caf-8b5f-ae3101794290/audio.mp3?utm_source=Podcast&amp', '2022-02-03', '2022-03-28', 46, 2, 1, 0),
(173, '2002, o ano que nunca acabou', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/2e03a58f-07a2-435d-ad73-ae2b0003cc34/audio.mp3?utm_source=Podcast&amp', '2022-01-27', '2022-03-28', 46, 2, 1, 0),
(174, 'Topzera 2021', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/2fbd76e8-7429-4723-a7c2-ae06016ba580/audio.mp3?utm_source=Podcast&amp', '2021-12-22', '2022-03-28', 46, 2, 1, 0),
(175, 'Festa da Firma: presente ou maldição?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/7224d109-aad7-4212-8913-ae000004d5d2/audio.mp3?utm_source=Podcast&amp', '2021-12-15', '2022-03-28', 46, 2, 1, 0),
(176, 'Verdades e mitos do carro elétrico', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/94710c51-3cd7-4e6f-8fda-adf8016d522e/audio.mp3?utm_source=Podcast&amp', '2021-12-08', '2022-03-28', 46, 2, 1, 0),
(177, 'Como o Pinterest cria tendências e influencia os negócios?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/019e15ff-4b3c-4aba-a238-adf6014a8575/audio.mp3?utm_source=Podcast&amp', '2021-12-06', '2022-03-28', 46, 2, 1, 0),
(178, 'Guia Sleeping Giants de Ativismo Digital', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/8231ed5b-d64e-40eb-b832-adf10185709b/audio.mp3?utm_source=Podcast&amp', '2021-12-01', '2022-03-28', 46, 2, 1, 0),
(179, 'Detox GAFA: é possível bloquear Google, Amazon, Facebook e Apple?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/7040b468-7145-4cbe-a8ac-adea0152470e/audio.mp3?utm_source=Podcast&amp', '2021-11-24', '2022-03-28', 46, 2, 1, 0),
(180, 'Ancestralidade: transformando o presente, inspirando o futuro', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/e1d2a05a-f5e1-4f3f-959c-ade600a506b9/audio.mp3?utm_source=Podcast&amp', '2021-11-20', '2022-03-28', 46, 2, 1, 0),
(181, 'Vida pós-pandemia: voltar é tão fácil como imaginamos?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/d47d5e78-d2c7-4641-936f-ade400000b97/audio.mp3?utm_source=Podcast&amp', '2021-11-17', '2022-03-28', 46, 2, 1, 0),
(182, 'Metaverso: futuro da internet ou delírio digital?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b44ce597-6524-45fb-88de-addc01832dd6/audio.mp3?utm_source=Podcast&amp', '2021-11-10', '2022-03-28', 46, 2, 1, 0),
(183, 'Telegram e Eleições: o inimigo agora é outro?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b412862d-ed10-4c1a-bfff-add501785696/audio.mp3?utm_source=Podcast&amp', '2021-11-03', '2022-03-28', 46, 2, 1, 0),
(184, 'Expedições Brasileiras — Ep. 4: O que une você, os pássaros na janela e a ciência brasileira?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/ade2de82-f13c-4217-9615-add001661992/audio.mp3?utm_source=Podcast&amp', '2021-10-29', '2022-03-28', 46, 2, 1, 0),
(185, 'Sound Branding: criando identidades através do som', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/bd710ef9-a175-48fb-b834-adce018a7ab2/audio.mp3?utm_source=Podcast&amp', '2021-10-27', '2022-03-28', 46, 2, 1, 0),
(186, 'Expedições Brasileiras — Ep. 3: As descobertas dos cientistas brasileiros na Antártica', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/82af0ab6-0eba-4b33-b02d-adca000494ee/audio.mp3?utm_source=Podcast&amp', '2021-10-22', '2022-03-28', 46, 2, 1, 0),
(187, 'Dinâmicas de Grupo, elas estão sendo justas com a gente?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/e0b19850-bf87-41ca-8c50-adc701716b77/audio.mp3?utm_source=Podcast&amp', '2021-10-20', '2022-03-28', 46, 2, 1, 0),
(188, 'Expedições Brasileiras — Ep. 2: Do sertão nordestino ao espaço sideral', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/dbf70558-0e7b-403f-91f0-adc20174eb0a/audio.mp3?utm_source=Podcast&amp', '2021-10-15', '2022-03-28', 46, 2, 1, 0),
(189, 'Bagunça vs. Organização: o que sua mesa de trabalho diz sobre você?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/a659be26-d9a2-4d2f-8968-adc0016a9f7b/audio.mp3?utm_source=Podcast&amp', '2021-10-13', '2022-03-28', 46, 2, 1, 0),
(190, 'Expedições Brasileiras — Ep. 1: O que tem no fundo do mar brasileiro', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/fde436f1-f010-4394-a2b8-adbb01413a30/audio.mp3?utm_source=Podcast&amp', '2021-10-08', '2022-03-28', 46, 2, 1, 0),
(191, 'O futuro do cinema pós-pandemia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/4cbf0412-f191-4596-ab55-adb9017ff9bd/audio.mp3?utm_source=Podcast&amp', '2021-10-06', '2022-03-28', 46, 2, 1, 0),
(192, '500 da Rolling Stone: o que mudou na música desde o início do século', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c9f1d3e9-35ee-489f-b227-adb2015d89b9/audio.mp3?utm_source=Podcast&amp', '2021-09-29', '2022-03-28', 46, 2, 1, 0),
(193, 'Golpe do PIX e outras fraudes digitais', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/1bdee795-d6d4-46a0-bdd9-adab0179b399/audio.mp3?utm_source=Podcast&amp', '2021-09-22', '2022-03-28', 46, 2, 1, 0),
(194, 'Positividade tóxica e o direito à reclamação', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/d3bad1af-9d63-4043-9835-ada40188b923/audio.mp3?utm_source=Podcast&amp', '2021-09-15', '2022-03-28', 46, 2, 1, 0),
(195, 'Programação é a nova alfabetização?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/0d680a45-da2c-4373-bed8-ad9d017c58c0/audio.mp3?utm_source=Podcast&amp', '2021-09-08', '2022-03-28', 46, 2, 1, 0),
(196, 'Como realmente organizar (e fazer) suas tarefas', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/81eddeb3-e4a5-41a7-896e-ad9601868063/audio.mp3?utm_source=Podcast&amp', '2021-09-01', '2022-03-28', 46, 2, 1, 0),
(197, 'Como os assistentes de voz entraram na nossa casa', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/cead928b-689e-4966-9ac4-ad8f016550ad/audio.mp3?utm_source=Podcast&amp', '2021-08-25', '2022-03-28', 46, 2, 1, 0),
(198, 'O negócio da maconha', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b3a6bd3b-9b3a-476e-96ee-ad8801725d4c/audio.mp3?utm_source=Podcast&amp', '2021-08-18', '2022-03-28', 46, 2, 1, 0),
(199, 'Viagens pós-pandemia: hora de levantar voo?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b199fecc-77f5-4e79-a6c1-ad81015e6155/audio.mp3?utm_source=Podcast&amp', '2021-08-11', '2022-03-28', 46, 2, 1, 0),
(200, 'Quinquilharias &amp; Bugigangas: o melhor das compras online', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/aaa18bf3-9b5e-44e8-bd9e-ad7c0013c05b/audio.mp3?utm_source=Podcast&amp', '2021-08-05', '2022-03-28', 46, 2, 1, 0),
(201, 'ESG: futuro dos negócios ou buzzword?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/705411f1-09ac-409e-bcca-ad7400f7c538/audio.mp3?utm_source=Podcast&amp', '2021-07-29', '2022-03-28', 46, 2, 1, 0),
(202, 'Braincast apresenta: Primeiro Contato - 1. Computadores Brasileiros', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/2b0e7788-eedd-4d83-a1e3-ad6e01240863/audio.mp3?utm_source=Podcast&amp', '2021-07-23', '2022-03-28', 46, 2, 1, 0),
(203, 'Primeiro Contato: como o computador pessoal entrou em nossas vidas', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/e79d8e4c-13c8-4d10-910e-ad6d0176fcfb/audio.mp3?utm_source=Podcast&amp', '2021-07-22', '2022-03-28', 46, 2, 1, 0),
(204, 'A nova onda do Instagram', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/4f569cba-30d9-447f-9d54-ad660176274e/audio.mp3?utm_source=Podcast&amp', '2021-07-15', '2022-03-28', 46, 2, 1, 0),
(205, 'Rinha de Gerações', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/0edc1267-6586-45fe-9998-ad5f0134f780/audio.mp3?utm_source=Podcast&amp', '2021-07-08', '2022-03-28', 46, 2, 1, 0),
(206, 'Do real ao digital: a evolução dos meios de pagamento', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/79433b1a-61af-4e81-b5c5-ad5900d28f75/audio.mp3?utm_source=Podcast&amp', '2021-07-02', '2022-03-28', 46, 2, 1, 0),
(207, 'A ilusão de furar a bolha', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/a4be6c6e-14a2-4bd3-8a30-ad51014622e3/audio.mp3?utm_source=Podcast&amp', '2021-06-24', '2022-03-28', 46, 2, 1, 0),
(208, 'CPI da COVID: como as redes sociais influenciam a investigação [Parte 2]', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/de39a37b-916a-4b58-b4cf-ad4a01649999/audio.mp3?utm_source=Podcast&amp', '2021-06-17', '2022-03-28', 46, 2, 1, 0),
(209, 'CPI da COVID: como as redes sociais influenciam a investigação [Parte 1]', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c0d6c1a5-d298-4c47-8ff8-ad440020af6b/audio.mp3?utm_source=Podcast&amp', '2021-06-10', '2022-03-28', 46, 2, 1, 0),
(210, 'O futuro do carro', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/6dcec73b-432b-4be0-b599-ad3c016f0e1e/audio.mp3?utm_source=Podcast&amp', '2021-06-03', '2022-03-28', 46, 2, 1, 0),
(211, 'Fuga da cidade grande: coragem ou bobagem?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/7e1e2696-6728-47c1-89ac-ad35015df4a7/audio.mp3?utm_source=Podcast&amp', '2021-05-27', '2022-03-28', 46, 2, 1, 0),
(212, 'Como as videochamadas sugam a nossa energia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/756e2468-df7f-48dd-961d-ad2e014c6732/audio.mp3?utm_source=Podcast&amp', '2021-05-20', '2022-03-28', 46, 2, 1, 0),
(213, 'O Paradoxo da Escolha na era do conteúdo infinito', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/9041d602-6274-4d77-ad9d-ad270170c0c7/audio.mp3?utm_source=Podcast&amp', '2021-05-13', '2022-03-28', 46, 2, 1, 0),
(214, 'Newsletters: uma velha mídia para um novo jornalismo', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/eb764df5-13f5-44c4-8510-ad200172ebf4/audio.mp3?utm_source=Podcast&amp', '2021-05-06', '2022-03-28', 46, 2, 1, 0),
(215, 'A mercantilização da empatia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/00bf59e3-966b-478e-83d0-ad190163be94/audio.mp3?utm_source=Podcast&amp', '2021-04-29', '2022-03-28', 46, 2, 1, 0),
(216, 'Yahoo! Respostas: é cedo pra dizer adeus?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/72e869d3-96bc-4b09-abbb-ad120171f06f/audio.mp3?utm_source=Podcast&amp', '2021-04-22', '2022-03-28', 46, 2, 1, 0),
(217, 'A Lacuna: como se permitir ser ruim naquilo que queremos fazer bem?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/21f63142-0bb0-4d79-98a8-ad0b014e4994/audio.mp3?utm_source=Podcast&amp', '2021-04-15', '2022-03-28', 46, 2, 1, 0),
(218, 'Como o streaming transformou a indústria da música', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/727655bb-2f6b-436c-829c-ad0401479587/audio.mp3?utm_source=Podcast&amp', '2021-04-08', '2022-03-28', 46, 2, 1, 0),
(219, 'Braincastão do Faustão', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/a29d08f6-0e8e-4077-91f3-acfd014e4fad/audio.mp3?utm_source=Podcast&amp', '2021-04-01', '2022-03-28', 46, 2, 1, 0),
(220, 'NFTs: como o blockchain colocou os memes à venda', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/1d63552e-7647-4ff3-a918-acf60155825d/audio.mp3?utm_source=Podcast&amp', '2021-03-25', '2022-03-28', 46, 2, 1, 0),
(221, 'Covid: por que é tão difícil comunicar o óbvio?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/9ea46e89-114b-4a59-a186-acef013c5bff/audio.mp3?utm_source=Podcast&amp', '2021-03-18', '2022-03-28', 46, 2, 1, 0),
(222, 'Os 25 anos de Pokémon', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/120f30ae-2d76-400d-ac64-ace8012ef317/audio.mp3?utm_source=Podcast&amp', '2021-03-11', '2022-03-28', 46, 2, 1, 0),
(223, 'A Ciência da Atenção', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/6ea582ee-8e9c-4c4c-98c3-ace1012cf3fc/audio.mp3?utm_source=Podcast&amp', '2021-03-04', '2022-03-28', 46, 2, 1, 0),
(224, 'Logos mais simples, marcas mais complexas', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c5a4a832-bd46-4ada-81d0-acdb0004f255/audio.mp3?utm_source=Podcast&amp', '2021-02-25', '2022-03-28', 46, 2, 1, 0),
(225, 'Roupinha de joguinho: o bilionário mercado de skins e itens cosméticos nos games', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/747a17bc-56bc-4e3b-9a0a-acd400edd4e0/audio.mp3?utm_source=Podcast&amp', '2021-02-18', '2022-03-28', 46, 2, 1, 0),
(226, 'BBB está sendo justo com a gente?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/35ad5942-177f-4c3b-b2c5-acd400eddec5/audio.mp3?utm_source=Podcast&amp', '2021-02-11', '2022-03-28', 46, 2, 1, 0),
(227, 'Tem que acabar [Edição 2021]', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/7e5cf812-aa5f-4315-a32a-acd400ede968/audio.mp3?utm_source=Podcast&amp', '2021-02-04', '2022-03-28', 46, 2, 1, 0),
(228, 'O Futuro da Energia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/fd714ea2-052d-472f-9f7f-acd400edfc4c/audio.mp3?utm_source=Podcast&amp', '2021-01-28', '2022-03-28', 46, 2, 1, 0),
(229, '2001, o ano que nunca acabou', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b91afe2a-18d2-4e7a-985d-acd400ee0517/audio.mp3?utm_source=Podcast&amp', '2021-01-21', '2022-03-28', 46, 2, 1, 0),
(230, 'Topzera 2020', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/30bceba5-aa4c-45e2-be39-acd400ee1804/audio.mp3?utm_source=Podcast&amp', '2020-12-24', '2022-03-28', 46, 2, 1, 0),
(231, 'A magia do Natal em tempos de pandemia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/9d623c0e-4307-47bd-a4c8-acd400ee2167/audio.mp3?utm_source=Podcast&amp', '2020-12-17', '2022-03-28', 46, 2, 1, 0),
(232, 'Craques do protesto: quando esporte e política jogam juntos', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/f33abe7a-cb29-4989-87e0-acd400ee2eee/audio.mp3?utm_source=Podcast&amp', '2020-12-10', '2022-03-28', 46, 2, 1, 0),
(233, 'Como vender produtos de beleza', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/ec30fed7-68da-44a8-84f3-acd400ee3c23/audio.mp3?utm_source=Podcast&amp', '2020-12-03', '2022-03-28', 46, 2, 1, 0),
(234, 'O futuro da política: como candidatos conquistam os nativos digitais', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/2ab1265e-c46b-4755-bea1-acd400ee4781/audio.mp3?utm_source=Podcast&amp', '2020-11-26', '2022-03-28', 46, 2, 1, 0),
(235, 'Rinha de Streamings', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/ed12ba98-2492-4f38-bcb1-acd400ee53f4/audio.mp3?utm_source=Podcast&amp', '2020-11-19', '2022-03-28', 46, 2, 1, 0),
(236, 'Uma escolha muito difícil: como o jornalismo deve atuar diante do autoritarismo?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/cffc01f3-edaf-4b82-8e1f-acd400ee6671/audio.mp3?utm_source=Podcast&amp', '2020-11-12', '2022-03-28', 46, 2, 1, 0),
(237, '“Agora colocam política em tudo!”', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/3d5907eb-1973-4760-b7c3-acd400ee7a68/audio.mp3?utm_source=Podcast&amp', '2020-11-05', '2022-03-28', 46, 2, 1, 0),
(238, 'Por que estamos obcecados por super-heróis?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/5512cb34-26e2-4dd9-bc8d-acd400ee8395/audio.mp3?utm_source=Podcast&amp', '2020-10-29', '2022-03-28', 46, 2, 1, 0),
(239, 'O vício em indignação', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/cbf30157-dac3-4fd3-bbd7-acd400ee9523/audio.mp3?utm_source=Podcast&amp', '2020-10-22', '2022-03-28', 46, 2, 1, 0),
(240, 'Como funciona o licenciamento', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/f63b02b5-0080-4d1e-9adb-acd400eea740/audio.mp3?utm_source=Podcast&amp', '2020-10-15', '2022-03-28', 46, 2, 1, 0),
(241, 'Quem Lacra, Lucra: o impacto da diversidade na inovação e lucratividade', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/06ffd201-5da7-41e2-a8eb-acd400eeae7d/audio.mp3?utm_source=Podcast&amp', '2020-10-08', '2022-03-28', 46, 2, 1, 0),
(242, 'Os programas de TV que formaram nosso caráter', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/b3970cdb-8c87-4eca-9c81-acd400eeb5f9/audio.mp3?utm_source=Podcast&amp', '2020-10-01', '2022-03-28', 46, 2, 1, 0),
(243, 'Jornalismo Pinga-Sangue: causa e efeito dos programas policialescos na TV', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/e7e84ffb-7f17-4d4a-87d7-acd400eec5ff/audio.mp3?utm_source=Podcast&amp', '2020-09-24', '2022-03-28', 46, 2, 1, 0),
(244, 'Homem de verdade: as novas masculinidades na mídia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/917cfac5-9780-4233-9571-acd400eed32b/audio.mp3?utm_source=Podcast&amp', '2020-09-17', '2022-03-28', 46, 2, 1, 0),
(245, 'Esportes na pandemia: gol de placa ou bola fora?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/3392f36a-d0c0-4a03-8744-acd400eee042/audio.mp3?utm_source=Podcast&amp', '2020-09-10', '2022-03-28', 46, 2, 1, 0),
(246, 'O dilema do paywall: quando a verdade é paga e a mentira é grátis', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/45579ad6-0072-422c-9a5b-acd400eeeb44/audio.mp3?utm_source=Podcast&amp', '2020-09-03', '2022-03-28', 46, 2, 1, 0),
(247, 'Os segredos do media training', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/eca6cab9-8ce7-4b3d-9ca5-acd400eef744/audio.mp3?utm_source=Podcast&amp', '2020-08-27', '2022-03-28', 46, 2, 1, 0),
(248, 'A GAFA está sendo justa com a China?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/0a3786d2-e5e8-4551-8481-acd400ef0ab9/audio.mp3?utm_source=Podcast&amp', '2020-08-20', '2022-03-28', 46, 2, 1, 0),
(249, 'O mercado da fofoca', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/8e26a476-3e49-48c5-9b88-acd400ef1a70/audio.mp3?utm_source=Podcast&amp', '2020-08-13', '2022-03-28', 46, 2, 1, 0),
(250, 'A arte de dizer não', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c9fe0a4a-67dd-4454-a60b-acd400ef32df/audio.mp3?utm_source=Podcast&amp', '2020-08-06', '2022-03-28', 46, 2, 1, 0),
(251, '5G: o que tenho a ver?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c45ec944-bfe2-4394-a7b5-acd400ef3a92/audio.mp3?utm_source=Podcast&amp', '2020-07-30', '2022-03-28', 46, 2, 1, 0),
(252, 'Por que a cultura pop é obcecada pela batalha do bem vs. mal?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/6a51aa92-3dc7-43e8-9ab3-acd400ef4799/audio.mp3?utm_source=Podcast&amp', '2020-07-23', '2022-03-28', 46, 2, 1, 0),
(253, 'Quando a arte envelhece mal: apagar, explicar ou alterar?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/bfcd8a1d-303f-45b4-b797-acd400ef5930/audio.mp3?utm_source=Podcast&amp', '2020-07-16', '2022-03-28', 46, 2, 1, 0),
(254, 'Braincast Apresenta: Lado Negro da Força', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/42da3ce7-7340-4c52-8109-acd400ef615c/audio.mp3?utm_source=Podcast&amp', '2020-07-15', '2022-03-28', 46, 2, 1, 0),
(255, 'Braincast Apresenta: AfroPausa', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/016c0802-826a-4ddf-8362-acd400ef6e2c/audio.mp3?utm_source=Podcast&amp', '2020-07-14', '2022-03-28', 46, 2, 1, 0),
(256, 'Copa de Buzzwords: Edição Quarentena', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/986aef5c-36f6-45ed-b59d-acd400ef780c/audio.mp3?utm_source=Podcast&amp', '2020-07-09', '2022-03-28', 46, 2, 1, 0),
(257, 'Volta ao trabalho pós-pandemia: como e quando', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/ddfb503a-097a-4337-9085-acd400ef8760/audio.mp3?utm_source=Podcast&amp', '2020-07-02', '2022-03-28', 46, 2, 1, 0),
(258, 'Xbox Series X, PlayStation 5 e a nova geração dos games', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/8773bc02-b8da-4d2b-8b91-acd400ef9064/audio.mp3?utm_source=Podcast&amp', '2020-06-25', '2022-03-28', 46, 2, 1, 0),
(259, 'TikTok: 15 segundos de fama', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/f906d8e6-d911-4d74-b6ee-acd400ef9db6/audio.mp3?utm_source=Podcast&amp', '2020-06-18', '2022-03-28', 46, 2, 1, 0),
(260, 'Cozinha na Quarentena', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/107733ea-2f38-4d89-97ee-acd400efa614/audio.mp3?utm_source=Podcast&amp', '2020-06-11', '2022-03-28', 46, 2, 1, 0),
(261, 'Criminalizar fake news: solução ou ameaça?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/0a420b9d-b916-4832-b643-acd400efb274/audio.mp3?utm_source=Podcast&amp', '2020-06-05', '2022-03-28', 46, 2, 1, 0),
(262, 'Privacidade vs. Pandemia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/58da0700-872f-4da3-aceb-acd400efc6fb/audio.mp3?utm_source=Podcast&amp', '2020-05-28', '2022-03-28', 46, 2, 1, 0),
(263, 'Felipe Neto, estamos sendo justos com ele?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/f31074e3-63d4-4e4a-a95d-acd400efd166/audio.mp3?utm_source=Podcast&amp', '2020-05-21', '2022-03-28', 46, 2, 1, 0),
(264, 'Faxina boa na quarentena', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/3df6cb7e-516d-416e-9b80-acd400efdf0b/audio.mp3?utm_source=Podcast&amp', '2020-05-14', '2022-03-28', 46, 2, 1, 0),
(265, 'Os 15 anos de “The Office”', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/c1845e2f-a052-427e-8765-acd400efeb56/audio.mp3?utm_source=Podcast&amp', '2020-05-07', '2022-03-28', 46, 2, 1, 0),
(266, 'Influenzers: o papel das celebridades em tempos de pandemia', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/031bdd05-56af-4d21-8d7a-acd400effa24/audio.mp3?utm_source=Podcast&amp', '2020-04-30', '2022-03-28', 46, 2, 1, 0),
(267, 'Por que voltamos a nos importar com o BBB?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/38855ae3-dff6-41a3-8422-acd400f01875/audio.mp3?utm_source=Podcast&amp', '2020-04-23', '2022-03-28', 46, 2, 1, 0),
(268, 'Comunicação Muito Violenta na Quarentena', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/85076c2c-6382-43db-9aa0-acd400f02431/audio.mp3?utm_source=Podcast&amp', '2020-04-16', '2022-03-28', 46, 2, 1, 0),
(269, 'O papel das marcas na crise da Covid-19', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/a6e33922-9f6e-48b1-a6e9-acd400f02fff/audio.mp3?utm_source=Podcast&amp', '2020-04-09', '2022-03-28', 46, 2, 1, 0),
(270, 'Coronavida: como manter o equilíbrio mental na quarentena', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/ca6bb520-6ac0-42be-b0a9-acd400f038d5/audio.mp3?utm_source=Podcast&amp', '2020-04-02', '2022-03-28', 46, 2, 1, 0),
(271, 'A inteligência artificial pode salvar a humanidade?', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/664af7e5-8899-45b5-8f2d-acd400f041a4/audio.mp3?utm_source=Podcast&amp', '2020-03-26', '2022-03-28', 46, 2, 1, 0),
(272, 'Coronavírus: como sobreviver ao home office sem pirar', 'https://chtbl.com/track/BC6GF7//pdst.fm/e/traffic.omny.fm/d/clips/651a251e-06e1-47e0-9336-ac5a00f41628/fc243b66-f34c-4656-9042-acd400edcca5/71a1a5d5-1c9b-413f-9797-acd400f04991/audio.mp3?utm_source=Podcast&amp', '2020-03-20', '2022-03-28', 46, 2, 1, 0),
(534, 'Caneca de Mamicas 47 - BBB do Mau', 'https://nerdcast.jovemnerd.com.br/mamicas_47.mp3', '2022-03-27', '2022-03-28', 55, 3, 1, 0),
(535, 'NerdCast 822 - Qual é a pauta? Stand Up, Frio e Ovo de Chapéu', 'https://nerdcast.jovemnerd.com.br/nerdcast_822_sempauta.mp3', '2022-03-26', '2022-03-28', 55, 3, 1, 0),
(536, 'Empreendedor 86 - Shop B: dos games ao conhecimento', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_86.mp3', '2022-03-26', '2022-03-28', 55, 3, 1, 0),
(537, 'Lá do Bunker 35 - Tenho rinite, não quero chorar', 'https://nerdcast.jovemnerd.com.br/ladobunker_35.mp3', '2022-03-22', '2022-03-28', 55, 3, 1, 0),
(538, 'Caneca de Mamicas 46 - Viajar pra se libertar', 'https://nerdcast.jovemnerd.com.br/mamicas_46.mp3', '2022-03-19', '2022-03-28', 55, 3, 1, 0),
(539, 'NerdCast 821 - A História da Ucrânia', 'https://nerdcast.jovemnerd.com.br/nerdcast_821_ucrania.mp3', '2022-03-18', '2022-03-28', 55, 3, 1, 0),
(540, 'Speak English 49 - Frases marcantes do cinema 2', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_49.mp3', '2022-03-18', '2022-03-28', 55, 3, 1, 0),
(541, 'Papo de Parceiro 08 - Moda do comércio aos pés', 'https://nerdcast.jovemnerd.com.br/marketplace_8.mp3', '2022-03-15', '2022-03-28', 55, 3, 1, 0),
(542, 'Lá do Bunker 34 - Muita coisa ao mesmo tempo', 'https://nerdcast.jovemnerd.com.br/ladobunker_34.mp3', '2022-03-14', '2022-03-28', 55, 3, 1, 0),
(543, 'Caneca de Mamicas 45 - Vamos nos permitir!', 'https://nerdcast.jovemnerd.com.br/mamicas_45.mp3', '2022-03-12', '2022-03-28', 55, 3, 1, 0),
(544, 'NerdCast 820 - The Batman: A vingança nunca é plena, mata a alma e a envenena', 'https://nerdcast.jovemnerd.com.br/nerdcast_820_the_batman.mp3', '2022-03-11', '2022-03-28', 55, 3, 1, 0),
(545, 'NerdCash 45 - Guerra Econômica', 'https://nerdcast.jovemnerd.com.br/nerdcash_45.mp3', '2022-03-11', '2022-03-28', 55, 3, 1, 0),
(546, 'Lá do Bunker 33 - É proibido, mas se quiser pode', 'https://nerdcast.jovemnerd.com.br/ladobunker_33.mp3', '2022-03-07', '2022-03-28', 55, 3, 1, 0),
(547, 'Caneca de Mamicas 44 - Fazer o bem sem ver a quem', 'https://nerdcast.jovemnerd.com.br/mamicas_44.mp3', '2022-03-05', '2022-03-28', 55, 3, 1, 0),
(548, 'NerdCast 819 - Larica Total: 10 anos da cozinha de guerrilha', 'https://nerdcast.jovemnerd.com.br/nerdcast_819_larica_total.mp3', '2022-03-04', '2022-03-28', 55, 3, 1, 0),
(549, 'NerdTech 73 - A estranha chegada dos vídeo games ao Brasil', 'https://nerdcast.jovemnerd.com.br/nerdtech_73.mp3', '2022-03-04', '2022-03-28', 55, 3, 1, 0),
(550, 'Lá do Bunker 32 - Ryu, futuro ex-BBB?', 'https://nerdcast.jovemnerd.com.br/ladobunker_32.mp3', '2022-02-28', '2022-03-28', 55, 3, 1, 0),
(551, 'Caneca de Mamicas 43 - Tá na hora de lembrar', 'https://nerdcast.jovemnerd.com.br/mamicas_43.mp3', '2022-02-26', '2022-03-28', 55, 3, 1, 0),
(552, 'NerdCast 818 - Star Trek – Audaciosamente indo aonde ninguém jamais esteve', 'https://nerdcast.jovemnerd.com.br/nerdcast_818_startrek.mp3', '2022-02-25', '2022-03-28', 55, 3, 1, 0),
(553, 'Empreendedor 85 - Vender, vender, vender!', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_85.mp3', '2022-02-25', '2022-03-28', 55, 3, 1, 0),
(554, 'Generacast 08 - Não é dieta, é genética', 'https://nerdcast.jovemnerd.com.br/nerdcast_genera_08.mp3', '2022-02-22', '2022-03-28', 55, 3, 1, 0),
(555, 'Lá do Bunker 31 - Só quem viveu sabe', 'https://nerdcast.jovemnerd.com.br/ladobunker_31.mp3', '2022-02-21', '2022-03-28', 55, 3, 1, 0),
(556, 'Caneca de Mamicas 42 - Um sono possível', 'https://nerdcast.jovemnerd.com.br/mamicas_42.mp3', '2022-02-19', '2022-03-28', 55, 3, 1, 0),
(557, 'NerdCast 817 - O Desnecessário Livro de Boba Fett', 'https://nerdcast.jovemnerd.com.br/nerdcast_817_boba_fett.mp3', '2022-02-18', '2022-03-28', 55, 3, 1, 0),
(558, 'Speak English 48 - Inglês no dia-a-dia', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_48.mp3', '2022-02-18', '2022-03-28', 55, 3, 1, 0),
(559, 'Papo de Parceiro 07 - A importância da presença nas redes sociais', 'https://nerdcast.jovemnerd.com.br/marketplace_7.mp3', '2022-02-15', '2022-03-28', 55, 3, 1, 0),
(560, 'Lá do Bunker 30 - Tudo o que vai, volta', 'https://nerdcast.jovemnerd.com.br/ladobunker_30.mp3', '2022-02-14', '2022-03-28', 55, 3, 1, 0),
(561, 'Caneca de Mamicas 41 - Vai catar coquinho!!!', 'https://nerdcast.jovemnerd.com.br/mamicas_41.mp3', '2022-02-12', '2022-03-28', 55, 3, 1, 0),
(562, 'NerdCast 816 - A batalha dos Crossovers 10', 'https://nerdcast.jovemnerd.com.br/nerdcast_816_batalha_xovers.mp3', '2022-02-11', '2022-03-28', 55, 3, 1, 0),
(563, 'NerdCash 44 - De volta para o mercado do futuro', 'https://nerdcast.jovemnerd.com.br/nerdcash_44.mp3', '2022-02-11', '2022-03-28', 55, 3, 1, 0),
(564, 'Lá do Bunker 29 - Não era sorvete, era feijão', 'https://nerdcast.jovemnerd.com.br/ladobunker_29.mp3', '2022-02-07', '2022-03-28', 55, 3, 1, 0),
(565, 'Caneca de Mamicas 40 - Em terra de cafézes quem tem jacu é rei', 'https://nerdcast.jovemnerd.com.br/mamicas_40.mp3', '2022-02-05', '2022-03-28', 55, 3, 1, 0),
(566, 'NerdCast 815 - He-man e os Mestres do Universo ainda têm a força?', 'https://nerdcast.jovemnerd.com.br/nerdcast_815_motu.mp3', '2022-02-04', '2022-03-28', 55, 3, 1, 0),
(567, 'NerdTech 72 - Os caminhos da carreira de um developer', 'https://nerdcast.jovemnerd.com.br/nerdtech_72.mp3', '2022-02-04', '2022-03-28', 55, 3, 1, 0),
(568, 'Extra Oferecido por Empréstimo SIM - De picote em picote se chega ao Japão', 'https://nerdcast.jovemnerd.com.br/mamicas_extra_sim.mp3', '2022-01-31', '2022-03-28', 55, 3, 1, 0),
(569, 'Lá do Bunker 28 - Acho que com certeza', 'https://nerdcast.jovemnerd.com.br/ladobunker_28.mp3', '2022-01-31', '2022-03-28', 55, 3, 1, 0),
(570, 'Caneca de Mamicas 39 - Eles estão descontrolados!', 'https://nerdcast.jovemnerd.com.br/mamicas_39.mp3', '2022-01-29', '2022-03-28', 55, 3, 1, 0),
(571, 'NerdCast 814 - Qual é a pauta? Quadrinhos, BBB22 e o refém do #sextou', 'https://nerdcast.jovemnerd.com.br/nerdcast_814_pautaless.mp3', '2022-01-28', '2022-03-28', 55, 3, 1, 0),
(572, 'Empreendedor 84 - Da biologia ao M&amp;A', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_84.mp3', '2022-01-28', '2022-03-28', 55, 3, 1, 0),
(573, 'Extra Oferecido por Empréstimo SIM - Reforma, fio terra e a maldita goteira', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_reformas.mp3', '2022-01-25', '2022-03-28', 55, 3, 1, 0),
(574, 'Lá do Bunker 27 - Com carinho ou com dinheiro', 'https://nerdcast.jovemnerd.com.br/ladobunker_27.mp3', '2022-01-24', '2022-03-28', 55, 3, 1, 0),
(575, 'Caneca de Mamicas 38 - Lua de mel ou divórcio?', 'https://nerdcast.jovemnerd.com.br/mamicas_38.mp3', '2022-01-22', '2022-03-28', 55, 3, 1, 0),
(576, 'NerdCast 813 - Trilhas sonoras de uma orquestra de um homem só', 'https://nerdcast.jovemnerd.com.br/nerdcast_813_trilha_sonora.mp3', '2022-01-21', '2022-03-28', 55, 3, 1, 0),
(577, 'Speak English 47 - Pronuncia que eu te escuto 2', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_47.mp3', '2022-01-21', '2022-03-28', 55, 3, 1, 0),
(578, 'Papo de Parceiro 06 - Expondo o seu produto digitalmente', 'https://nerdcast.jovemnerd.com.br/marketplace_6.mp3', '2022-01-18', '2022-03-28', 55, 3, 1, 0),
(579, 'Lá do Bunker 26 - Sem tempo pra sutileza', 'https://nerdcast.jovemnerd.com.br/ladobunker_26.mp3', '2022-01-17', '2022-03-28', 55, 3, 1, 0),
(580, 'Caneca de Mamicas 37 - Fica, doação e lixo', 'https://nerdcast.jovemnerd.com.br/mamicas_37.mp3', '2022-01-15', '2022-03-28', 55, 3, 1, 0),
(581, 'NerdCast 812 - Política Internacional 2021', 'https://nerdcast.jovemnerd.com.br/nerdcast_812_politica_internacional.mp3', '2022-01-14', '2022-03-28', 55, 3, 1, 0),
(582, 'NerdCash 43 - Economia em ano de eleição', 'https://nerdcast.jovemnerd.com.br/nerdcash_43.mp3', '2022-01-14', '2022-03-28', 55, 3, 1, 0),
(583, 'Lá do Bunker 25 - Vem aí o metaverso', 'https://nerdcast.jovemnerd.com.br/ladobunker_25.mp3', '2022-01-10', '2022-03-28', 55, 3, 1, 0),
(584, 'Caneca de Mamicas 36 - A mente consumista é oficina do entulho', 'https://nerdcast.jovemnerd.com.br/mamicas_36.mp3', '2022-01-08', '2022-03-28', 55, 3, 1, 0),
(585, 'NerdCast 811 - Matrix 4: Ressuscitou ou morreu de vez?', 'https://nerdcast.jovemnerd.com.br/nerdcast_811_matrix.mp3', '2022-01-07', '2022-03-28', 55, 3, 1, 0),
(586, 'NerdTech 71 - Tendências Tecnológicas em 2022', 'https://nerdcast.jovemnerd.com.br/nerdtech_71.mp3', '2022-01-07', '2022-03-28', 55, 3, 1, 0),
(587, 'Lá do Bunker 24 - O início de um sonho', 'https://nerdcast.jovemnerd.com.br/ladobunker_24.mp3', '2022-01-03', '2022-03-28', 55, 3, 1, 0),
(588, 'Caneca de Mamicas 35 - Oh Meu Deux, que delícia de Jefferson Schroeder', 'https://nerdcast.jovemnerd.com.br/mamicas_35.mp3', '2022-01-01', '2022-03-28', 55, 3, 1, 0),
(589, 'NerdCast 810 - Gavião Arqueiro: Natal fora do ninho', 'https://nerdcast.jovemnerd.com.br/nerdcast_810_hawkeye.mp3', '2021-12-31', '2022-03-28', 55, 3, 1, 0),
(590, 'Empreendedor 83 - Por que empresas compram outras?', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_83.mp3', '2021-12-31', '2022-03-28', 55, 3, 1, 0),
(591, 'Lá do Bunker 23 - É pro meu TCC', 'https://nerdcast.jovemnerd.com.br/ladobunker_23.mp3', '2021-12-27', '2022-03-28', 55, 3, 1, 0),
(592, 'Caneca de Mamicas 34 - Então é Nataaal…', 'https://nerdcast.jovemnerd.com.br/mamicas_34.mp3', '2021-12-25', '2022-03-28', 55, 3, 1, 0),
(593, 'NerdCast 809 - Homem-Aranha: Me leva pra casa!', 'https://nerdcast.jovemnerd.com.br/nerdcast_809_miranha.mp3', '2021-12-24', '2022-03-28', 55, 3, 1, 0),
(594, 'Papo de Parceiro 05 - Liquidação Fantástica: A tradição que vende muito', 'https://nerdcast.jovemnerd.com.br/marketplace_5.mp3', '2021-12-21', '2022-03-28', 55, 3, 1, 0),
(595, 'Lá do Bunker 22 - Esse aqui é sem spoiler', 'https://nerdcast.jovemnerd.com.br/ladobunker_22.mp3', '2021-12-20', '2022-03-28', 55, 3, 1, 0),
(596, 'Caneca de Mamicas 33 - Meu trabalho, minha vida', 'https://nerdcast.jovemnerd.com.br/mamicas_33.mp3', '2021-12-18', '2022-03-28', 55, 3, 1, 0),
(597, 'NerdCast 808 - Profissão: Indie Game Dev', 'https://nerdcast.jovemnerd.com.br/nerdcast_808_indie_game_dev.mp3', '2021-12-17', '2022-03-28', 55, 3, 1, 0),
(598, 'Speak English 46 - Inglês traduzido ao pé da letra', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_46.mp3', '2021-12-17', '2022-03-28', 55, 3, 1, 0),
(599, 'Lá do Bunker 21 - Muito bom, nota zero', 'https://nerdcast.jovemnerd.com.br/ladobunker_21.mp3', '2021-12-13', '2022-03-28', 55, 3, 1, 0),
(600, 'Caneca de Mamicas 32 - O melhor padrão é ser feliz', 'https://nerdcast.jovemnerd.com.br/mamicas_32.mp3', '2021-12-11', '2022-03-28', 55, 3, 1, 0),
(601, 'NerdCast 807 - David Bowie: As múltiplas faces de um artista único', 'https://nerdcast.jovemnerd.com.br/nerdcast_807_bowie.mp3', '2021-12-10', '2022-03-28', 55, 3, 1, 0),
(602, 'NerdCash 42 - A economia em 2021', 'https://nerdcast.jovemnerd.com.br/nerdcash_42.mp3', '2021-12-10', '2022-03-28', 55, 3, 1, 0),
(603, 'Lá do Bunker Oferecido por Fanta - Extra: CCXP Worlds 2021', 'https://nerdcast.jovemnerd.com.br/ladobunker_extra_ccxp21.mp3', '2021-12-09', '2022-03-28', 55, 3, 1, 0),
(604, 'Extra Oferecido por Fanta - CCXP: Bastidores, Perrengues e o Penetra', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_ccxp.mp3', '2021-12-07', '2022-03-28', 55, 3, 1, 0),
(605, 'Lá do Bunker 20 - Câmera lenta é amor', 'https://nerdcast.jovemnerd.com.br/ladobunker_20.mp3', '2021-12-06', '2022-03-28', 55, 3, 1, 0),
(606, 'Caneca de Mamicas 31 - Botox Party', 'https://nerdcast.jovemnerd.com.br/mamicas_31.mp3', '2021-12-04', '2022-03-28', 55, 3, 1, 0),
(607, 'NerdCast 806 - Fundação: Bom dia, boa tarde e boa noite', 'https://nerdcast.jovemnerd.com.br/nerdcast_806_fundacao.mp3', '2021-12-03', '2022-03-28', 55, 3, 1, 0),
(608, 'NerdTech 70 - Desdobrando o Metaverso', 'https://nerdcast.jovemnerd.com.br/nerdtech_70.mp3', '2021-12-03', '2022-03-28', 55, 3, 1, 0),
(609, 'Papo de Parceiro 04 - A logística e a correria da Black Friday', 'https://nerdcast.jovemnerd.com.br/marketplace_4.mp3', '2021-11-30', '2022-03-28', 55, 3, 1, 0),
(610, 'Lá do Bunker 19 - Necessário, cirúrgico, preciso', 'https://nerdcast.jovemnerd.com.br/ladobunker_19.mp3', '2021-11-29', '2022-03-28', 55, 3, 1, 0),
(611, 'Caneca de Mamicas 30 - Credo de novela que limite delícia', 'https://nerdcast.jovemnerd.com.br/mamicas_30.mp3', '2021-11-27', '2022-03-28', 55, 3, 1, 0),
(612, 'NerdCast 805 - Magias do RPG: Da bola de fogo à aposentadoria', 'https://nerdcast.jovemnerd.com.br/nerdcast_805_magias_rpg.mp3', '2021-11-26', '2022-03-28', 55, 3, 1, 0),
(613, 'Empreendedor 82 - A história da Alura', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_82.mp3', '2021-11-26', '2022-03-28', 55, 3, 1, 0),
(614, 'Lá do Bunker 18 - Discorde aí de longe', 'https://nerdcast.jovemnerd.com.br/ladobunker_18.mp3', '2021-11-25', '2022-03-28', 55, 3, 1, 0),
(615, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato III: Por que lutamos', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_3.mp3', '2021-11-23', '2022-03-28', 55, 3, 1, 0),
(616, 'Lá do Bunker 17 - Não é defeito, é efeito', 'https://nerdcast.jovemnerd.com.br/ladobunker_17.mp3', '2021-11-22', '2022-03-28', 55, 3, 1, 0),
(617, 'Caneca de Mamicas 29 - Vale a pena cantar de novo', 'https://nerdcast.jovemnerd.com.br/mamicas_29.mp3', '2021-11-20', '2022-03-28', 55, 3, 1, 0),
(618, 'NerdCast 804 - Eternos e Shang-Chi: Imortais são babacas!', 'https://nerdcast.jovemnerd.com.br/nerdcast_804_eternos_shang_chi.mp3', '2021-11-19', '2022-03-28', 55, 3, 1, 0),
(619, 'Speak English 45 - Frases Marcantes de Filmes e Séries em 2021', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_45.mp3', '2021-11-19', '2022-03-28', 55, 3, 1, 0),
(620, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato II: Largados e Shippados', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_2.mp3', '2021-11-16', '2022-03-28', 55, 3, 1, 0),
(621, 'Lá do Bunker 16 - Homem-Aranha: emo ou gótico suave?', 'https://nerdcast.jovemnerd.com.br/ladobunker_16.mp3', '2021-11-15', '2022-03-28', 55, 3, 1, 0),
(622, 'Caneca de Mamicas 28 - Use a lupa e encontre o limite', 'https://nerdcast.jovemnerd.com.br/mamicas_28.mp3', '2021-11-13', '2022-03-28', 55, 3, 1, 0),
(623, 'NerdCast 803 - Em Duna o choro não é livre', 'https://nerdcast.jovemnerd.com.br/nerdcast_803_duna.mp3', '2021-11-12', '2022-03-28', 55, 3, 1, 0),
(624, 'NerdCash 41 - Câmbio Bipolar', 'https://nerdcast.jovemnerd.com.br/nerdcash_41.mp3', '2021-11-12', '2022-03-28', 55, 3, 1, 0),
(625, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato I: Ciência e Magia', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_1.mp3', '2021-11-09', '2022-03-28', 55, 3, 1, 0),
(626, 'Lá do Bunker 15 - Questionando a vida real', 'https://nerdcast.jovemnerd.com.br/ladobunker_15.mp3', '2021-11-08', '2022-03-28', 55, 3, 1, 0),
(627, 'Caneca de Mamicas 27 - Mais vale um padre no porão do que dois capirotos voando', 'https://nerdcast.jovemnerd.com.br/mamicas_27.mp3', '2021-11-06', '2022-03-28', 55, 3, 1, 0),
(628, 'NerdCast 802 - Round 6: Não sabe brincar vai morrer no play', 'https://nerdcast.jovemnerd.com.br/nerdcast_802_round_6.mp3', '2021-11-05', '2022-03-28', 55, 3, 1, 0),
(629, 'NerdTech 69 - O tropeço na tomada das redes sociais', 'https://nerdcast.jovemnerd.com.br/nerdtech_69.mp3', '2021-11-05', '2022-03-28', 55, 3, 1, 0),
(630, 'Lá do Bunker 14 - Paladino estonteante e sensual', 'https://nerdcast.jovemnerd.com.br/ladobunker_14.mp3', '2021-11-01', '2022-03-28', 55, 3, 1, 0),
(631, 'Caneca de Mamicas 26 - Antes só do que mal assombrado', 'https://nerdcast.jovemnerd.com.br/mamicas_26.mp3', '2021-10-30', '2022-03-28', 55, 3, 1, 0),
(632, 'NerdCast 801 - Pelados e apavorados', 'https://nerdcast.jovemnerd.com.br/nerdcast_801_pelados_e_apavorados.mp3', '2021-10-29', '2022-03-28', 55, 3, 1, 0),
(633, 'Empreendedor 81 - Plataformas digitais e na vida real', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_81.mp3', '2021-10-29', '2022-03-28', 55, 3, 1, 0),
(634, 'Extra Oferecido por Avanade - O consultor, o chupa-cabra e o fantasma do Hi-Tech', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_avanade.mp3', '2021-10-26', '2022-03-28', 55, 3, 1, 0),
(635, 'Lá do Bunker 13 - O trem do hype', 'https://nerdcast.jovemnerd.com.br/ladobunker_13.mp3', '2021-10-25', '2022-03-28', 55, 3, 1, 0),
(636, 'Caneca de Mamicas 25 - Cacete de trampo', 'https://nerdcast.jovemnerd.com.br/mamicas_25.mp3', '2021-10-23', '2022-03-28', 55, 3, 1, 0),
(637, 'NerdCast 800 - O Melhor de 800 Nerdcasts!', 'https://nerdcast.jovemnerd.com.br/nerdcast_800_melhores800.mp3', '2021-10-22', '2022-03-28', 55, 3, 1, 0),
(638, 'Papo de Parceiro 03 - Usando “soft skills” na arte das vendas', 'https://nerdcast.jovemnerd.com.br/marketplace_03.mp3', '2021-10-19', '2022-03-28', 55, 3, 1, 0);
INSERT INTO `episode` (`id`, `title`, `url`, `date_publish`, `date_added`, `id_podcast`, `id_publisher`, `id_user`, `status`) VALUES
(639, 'Lá do Bunker 12 - Cenas dos próximos capítulos', 'https://nerdcast.jovemnerd.com.br/ladobunker_12.mp3', '2021-10-18', '2022-03-28', 55, 3, 1, 0),
(640, 'Caneca de Mamicas 24 - Você trampa como eu trampo?', 'https://nerdcast.jovemnerd.com.br/mamicas_24.mp3', '2021-10-16', '2022-03-28', 55, 3, 1, 0),
(641, 'NerdCast 799 - What If…? E se a Marvel fosse ousada?', 'https://nerdcast.jovemnerd.com.br/nerdcast_799_what_if_e_se_a_marvel_fosse_ousada.mp3', '2021-10-15', '2022-03-28', 55, 3, 1, 0),
(642, 'Speak English 44 - O Halloween da vida real', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_44.mp3', '2021-10-15', '2022-03-28', 55, 3, 1, 0),
(643, 'Lá do Bunker 11 - Saudade da minha ex', 'https://nerdcast.jovemnerd.com.br/ladobunker_11.mp3', '2021-10-11', '2022-03-28', 55, 3, 1, 0),
(644, 'Caneca de Mamicas 23 - O Super Favorito', 'https://nerdcast.jovemnerd.com.br/mamicas_23.mp3', '2021-10-09', '2022-03-28', 55, 3, 1, 0),
(645, 'NerdCast 798 - Perrengues da hora do almoço', 'https://nerdcast.jovemnerd.com.br/nerdcast_798_perrengues_da_hora_do_almoco.mp3', '2021-10-08', '2022-03-28', 55, 3, 1, 0),
(646, 'NerdCash 40 - Evergrande: Minha casa, minha crise', 'https://nerdcast.jovemnerd.com.br/nerdcash_40.mp3', '2021-10-08', '2022-03-28', 55, 3, 1, 0),
(647, 'Lá do Bunker 10 - Olimpíadas do Faustão Mortais', 'https://nerdcast.jovemnerd.com.br/ladobunker_10.mp3', '2021-10-04', '2022-03-28', 55, 3, 1, 0),
(648, 'Caneca de Mamicas 22 - A Favorita', 'https://nerdcast.jovemnerd.com.br/mamicas_22.mp3', '2021-10-02', '2022-03-28', 55, 3, 1, 0),
(649, 'NerdCast 797 - Nós vemos a realidade como ela realmente é?', 'https://nerdcast.jovemnerd.com.br/nerdcast_797_percepcao_da_realidade.mp3', '2021-10-01', '2022-03-28', 55, 3, 1, 0),
(650, 'NerdTech 68 - O browser comeu o meu sistema operacional?', 'https://nerdcast.jovemnerd.com.br/nerdtech_68.mp3', '2021-10-01', '2022-03-28', 55, 3, 1, 0),
(651, 'Lá do Bunker 09 - O amor sufoca', 'https://nerdcast.jovemnerd.com.br/ladobunker_09.mp3', '2021-09-27', '2022-03-28', 55, 3, 1, 0),
(652, 'Caneca de Mamicas 21 - TRANS-borde gentileza', 'https://nerdcast.jovemnerd.com.br/mamicas_21.mp3', '2021-09-25', '2022-03-28', 55, 3, 1, 0),
(653, 'NerdCast 796 - A internet que amamos odiar', 'https://nerdcast.jovemnerd.com.br/nerdcast_796_a_internet_que_amamos_odiar.mp3', '2021-09-24', '2022-03-28', 55, 3, 1, 0),
(654, 'Empreendedor 80 - E-Sports como negócio', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_80.mp3', '2021-09-24', '2022-03-28', 55, 3, 1, 0),
(655, 'Papo de Parceiro 02 - Amour pelo o que faz só ajuda a vender mais', 'https://nerdcast.jovemnerd.com.br/marketplace_02.mp3', '2021-09-21', '2022-03-28', 55, 3, 1, 0),
(656, 'Lá do Bunker 08 - Fofoca: gostoso demais', 'https://nerdcast.jovemnerd.com.br/ladobunker_08.mp3', '2021-09-20', '2022-03-28', 55, 3, 1, 0),
(657, 'Caneca de Mamicas 20 - O Amor TRANS-forma', 'https://nerdcast.jovemnerd.com.br/mamicas_20.mp3', '2021-09-18', '2022-03-28', 55, 3, 1, 0),
(658, 'NerdCast 795 - O The Esquadrão Suicida: Pimenta no Starro dos outros é nam nam', 'https://nerdcast.jovemnerd.com.br/nerdcast_795_esquadrao_suicida_2.mp3', '2021-09-17', '2022-03-28', 55, 3, 1, 0),
(659, 'Speak English 43 - Estados Unidos: estereótipos VS vida real', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_43.mp3', '2021-09-17', '2022-03-28', 55, 3, 1, 0),
(660, 'NerdCast Oferecido por BIS XTRA - Adestrando cachorro-quente com Tik-Tik para alienígenas: Nerdcast Descontrolado e sem pauta', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_qual_e_a_pauta_4.mp3', '2021-09-14', '2022-03-28', 55, 3, 1, 0),
(661, 'Lá do Bunker 07 - Depende, vamos ver', 'https://nerdcast.jovemnerd.com.br/ladobunker_07.mp3', '2021-09-13', '2022-03-28', 55, 3, 1, 0),
(662, 'Caneca de Mamicas 19 - A pressa é inimiga do parto ideal', 'https://nerdcast.jovemnerd.com.br/mamicas_19.mp3', '2021-09-11', '2022-03-28', 55, 3, 1, 0),
(663, 'NerdCast 794 - Oh Canada! A vida lá no norte da América', '', '1970-01-01', '2022-03-28', 55, 3, 1, 0),
(664, ' #43 Maura           ', 'https://open.spotify.com/embed/episode/0M6rYBfxT793Jz7XV466eE', '2021-12-16', '2022-03-28', 56, 1, 1, 0),
(665, ' #42 Mark           ', 'https://open.spotify.com/embed/episode/4stY381hQErlrE6fpYhOdE', '2021-12-09', '2022-03-28', 56, 1, 1, 0),
(666, ' #41 Barbara Wilson           ', 'https://open.spotify.com/embed/episode/3w8ixRAVatVyzg63Nf8NLr', '2021-11-18', '2022-03-28', 56, 1, 1, 0),
(667, ' #40 Barbara Shutt           ', 'https://open.spotify.com/embed/episode/2BZrL9n11cbetRKfpSuAC9', '2021-11-18', '2022-03-28', 56, 1, 1, 0),
(668, ' #39 Stephen           ', 'https://open.spotify.com/embed/episode/03Nep7Pgs1hTrDwcqy7dht', '2021-10-28', '2022-03-28', 56, 1, 1, 0),
(669, ' #38 Justine           ', 'https://open.spotify.com/embed/episode/16yGTBn9IXaHkR9G9m9q0I', '2021-10-21', '2022-03-28', 56, 1, 1, 0),
(670, ' #37 John           ', 'https://open.spotify.com/embed/episode/6QYP10F2Hwevc7XLdKGqT2', '2021-10-07', '2022-03-28', 56, 1, 1, 0),
(671, ' #36 Brandon           ', 'https://open.spotify.com/embed/episode/0RtYPfbxDH8RXv0jAMRxw4', '2021-09-30', '2022-03-28', 56, 1, 1, 0),
(672, ' Heavyweight Short: Hallie           ', 'https://open.spotify.com/embed/episode/7nH4q5cQ8pAVDefoNd1XK5', '2021-06-17', '2022-03-28', 56, 1, 1, 0),
(673, ' #35 Rachel and Jon           ', 'https://open.spotify.com/embed/episode/6jiqezUBhbDOfbCuFJK2TP', '2020-11-12', '2022-03-28', 56, 1, 1, 0),
(674, ' #34 Annie           ', 'https://open.spotify.com/embed/episode/6in5V1yLC4AdjRTpBx0BeC', '2020-11-05', '2022-03-28', 56, 1, 1, 0),
(675, ' #33 Bobby           ', 'https://open.spotify.com/embed/episode/2YjgiZpS7tioIlL4y8QAA8', '2020-10-22', '2022-03-28', 56, 1, 1, 0),
(676, ' #32 Vivian           ', 'https://open.spotify.com/embed/episode/0h4nFE0qhocuMcfEXym259', '2020-10-15', '2022-03-28', 56, 1, 1, 0),
(677, ' Why Is Mason Reese Crying?           ', 'https://open.spotify.com/embed/episode/4AOPapQxrrmXzQuGo747hq', '2020-10-08', '2022-03-28', 56, 1, 1, 0),
(678, ' Heavyweight Check In 8           ', 'https://open.spotify.com/embed/episode/7HWu5SMBwAxSLGA80oUT1O', '2020-06-18', '2022-03-28', 56, 1, 1, 0),
(679, ' Heavyweight Check In 7           ', 'https://open.spotify.com/embed/episode/45INHfAbW5f7yG3sxpsBWt', '2020-06-04', '2022-03-28', 56, 1, 1, 0),
(680, ' Heavyweight Check In 6           ', 'https://open.spotify.com/embed/episode/0GyBE3B9EhN1gsUGCO5soX', '2020-05-21', '2022-03-28', 56, 1, 1, 0),
(681, ' Heavyweight Check In 5           ', 'https://open.spotify.com/embed/episode/6oUMel4VioFGVywUCkkI4u', '2020-05-07', '2022-03-28', 56, 1, 1, 0),
(682, ' Heavyweight Check In 4           ', 'https://open.spotify.com/embed/episode/4Ys8D9H7CWGpBMqCSz2SJm', '2020-04-27', '2022-03-28', 56, 1, 1, 0),
(683, ' Heavyweight Check In 3           ', 'https://open.spotify.com/embed/episode/0WUtx6YZN4iO2kHb7iAHi4', '2020-04-14', '2022-03-28', 56, 1, 1, 0),
(684, ' Heavyweight Check In 2           ', 'https://open.spotify.com/embed/episode/64IJbqhggYHlDnh5TlHtFt', '2020-03-27', '2022-03-28', 56, 1, 1, 0),
(685, ' Heavyweight Checks In           ', 'https://open.spotify.com/embed/episode/3wyuC1zt8iSmVzRuPGE4Hr', '2020-03-18', '2022-03-28', 56, 1, 1, 0),
(686, ' #31 Marie-Claude           ', 'https://open.spotify.com/embed/episode/0dkA49NR29JIsywbUeWSub', '2019-12-19', '2022-03-28', 56, 1, 1, 0),
(687, ' #30 The Marshes           ', 'https://open.spotify.com/embed/episode/0IEbDo5NWHqHtkA8BEijl4', '2019-12-12', '2022-03-28', 56, 1, 1, 0),
(688, ' #29 Elyse           ', 'https://open.spotify.com/embed/episode/4cravvuXyaeZxbP0I7yXMR', '2019-11-21', '2022-03-28', 56, 1, 1, 0),
(689, ' #28 Dr. Muller           ', 'https://open.spotify.com/embed/episode/2lV7SJiUiCtBAGBY91KMaF', '2019-11-07', '2022-03-28', 56, 1, 1, 0),
(690, ' #27 Scott           ', 'https://open.spotify.com/embed/episode/3ZBwxPjR3OxCThz3PEkVyI', '2019-10-24', '2022-03-28', 56, 1, 1, 0),
(691, ' #26 Beverley and Van           ', 'https://open.spotify.com/embed/episode/1i0lq4KRorbmqZY2Xeo2Q0', '2019-10-10', '2022-03-28', 56, 1, 1, 0),
(692, ' #25 Becky and Jo           ', 'https://open.spotify.com/embed/episode/3xTzU8lcNdFVoaK4fwCgj2', '2019-10-03', '2022-03-28', 56, 1, 1, 0),
(693, ' #24 Jimmy and Mark           ', 'https://open.spotify.com/embed/episode/6szrriPwbHodLLv9bUcJPP', '2019-09-26', '2022-03-28', 56, 1, 1, 0),
(694, ' #23 Alex           ', 'https://open.spotify.com/embed/episode/342vSTJhgIVas4ve1nUyCH', '2018-12-13', '2022-03-28', 56, 1, 1, 0),
(695, ' #22 Marchel           ', 'https://open.spotify.com/embed/episode/6aBJTNyRSAw2a2s98GLatw', '2018-12-06', '2022-03-28', 56, 1, 1, 0),
(696, ' #21 Rachael           ', 'https://open.spotify.com/embed/episode/4MY69fA8LBsodltQwR5CqW', '2018-11-15', '2022-03-28', 56, 1, 1, 0),
(697, ' #20 Soraya           ', 'https://open.spotify.com/embed/episode/0GEVgoNZVFn8U0ApdXC0NX', '2018-11-08', '2022-03-28', 56, 1, 1, 0),
(698, ' #19 Joey           ', 'https://open.spotify.com/embed/episode/4WPRFrthdKNX410a5Z2JMZ', '2018-11-01', '2022-03-28', 56, 1, 1, 0),
(699, ' Zoe, PJ, and Chanel           ', 'https://open.spotify.com/embed/episode/5XiPCULqejDwzTNoVFH3t7', '2018-10-25', '2022-03-28', 56, 1, 1, 0),
(700, ' #18 Sven           ', 'https://open.spotify.com/embed/episode/31KTj6QvGuM5g7VoEkP9Ax', '2018-10-18', '2022-03-28', 56, 1, 1, 0),
(701, ' #17 Skye           ', 'https://open.spotify.com/embed/episode/5xvawJYLebA5zipoDnwhju', '2018-10-11', '2022-03-28', 56, 1, 1, 0),
(702, ' #16 Rob           ', 'https://open.spotify.com/embed/episode/3ujjIbe8EuyUHENrHjdgRj', '2018-10-04', '2022-03-28', 56, 1, 1, 0),
(703, ' #15 Dina           ', 'https://open.spotify.com/embed/episode/1oIjRKM1wT2xVVUJTYdePn', '2017-12-07', '2022-03-28', 56, 1, 1, 0),
(704, ' #14 Isabel           ', 'https://open.spotify.com/embed/episode/7IQcwYFKk3i9MvWQR1wNkW', '2017-11-30', '2022-03-28', 56, 1, 1, 0),
(705, ' #13 Kenny           ', 'https://open.spotify.com/embed/episode/6bqp6Ep6LDB2kWHF9aNxzO', '2017-11-16', '2022-03-28', 56, 1, 1, 0),
(706, ' #12 Jesse           ', 'https://open.spotify.com/embed/episode/2h7zw4DA0zBVm2qD4Tu7xz', '2017-11-09', '2022-03-28', 56, 1, 1, 0),
(707, ' #11 Christina           ', 'https://open.spotify.com/embed/episode/4X7IyUWzLzIx9im5BapC27', '2017-11-02', '2022-03-28', 56, 1, 1, 0),
(708, ' #10 Rose           ', 'https://open.spotify.com/embed/episode/6LCxtHAKFz353gOIiCqSy1', '2017-10-26', '2022-03-28', 56, 1, 1, 0),
(709, ' #9 Milt           ', 'https://open.spotify.com/embed/episode/0yrrNYCLE3zU23X1HhQmRo', '2017-09-28', '2022-03-28', 56, 1, 1, 0),
(710, ' #8 Jeremy           ', 'https://open.spotify.com/embed/episode/0FKSFGbWwmsCSLF0Nux23i', '2016-11-15', '2022-03-28', 56, 1, 1, 0),
(711, ' #7 Julia           ', 'https://open.spotify.com/embed/episode/6gyp1ojVkEPGAthe0Io1TT', '2016-11-08', '2022-03-28', 56, 1, 1, 0),
(712, ' #6 James           ', 'https://open.spotify.com/embed/episode/5PHM3WlpceQnpVNhBKsWyK', '2016-11-01', '2022-03-28', 56, 1, 1, 0),
(713, ' #5 Galit           ', 'https://open.spotify.com/embed/episode/171C8grV9yyXvTfeZP8KDg', '2016-10-25', '2022-03-28', 56, 1, 1, 0),
(714, ' #4 Tony           ', 'https://open.spotify.com/embed/episode/3bOBw2rcYr1zcazpuRNOC2', '2016-10-11', '2022-03-28', 56, 1, 1, 0),
(715, ' #3 Tara           ', 'https://open.spotify.com/embed/episode/7LMLJrRwxlM0SjXQMZKm02', '2016-10-04', '2022-03-28', 56, 1, 1, 0),
(716, ' #2 Gregor           ', 'https://open.spotify.com/embed/episode/6LKrLVEAY3tsqHPURec6ke', '2016-09-24', '2022-03-28', 56, 1, 1, 0),
(717, ' #1 Buzz           ', 'https://open.spotify.com/embed/episode/68kq3bNz6hEuq8NtdfwERG', '2016-09-23', '2022-03-28', 56, 1, 1, 0),
(718, ' Trailer           ', 'https://open.spotify.com/embed/episode/3OcMTqDu5RyFqzUn4zo5Ww', '2016-09-03', '2022-03-28', 56, 1, 1, 0),
(719, ' Ancient Aliens: Who Really Built the Pyramids?           ', 'https://open.spotify.com/embed/episode/1fA7YzfQuxHgfIpg9EG4kd', '2022-03-24', '2022-03-28', 57, 1, 1, 0),
(720, ' Trans Kids: The Misinformation Battle           ', 'https://open.spotify.com/embed/episode/39ihgJ7vFNiWPdhVOTVwve', '2022-03-17', '2022-03-28', 57, 1, 1, 0),
(721, ' Here’s What’s Coming Up!           ', 'https://open.spotify.com/embed/episode/0nP2SlufZITXavd66GPY2P', '2022-03-11', '2022-03-28', 57, 1, 1, 0),
(722, ' Misinformation: What Should Our Tech Overlords Do?           ', 'https://open.spotify.com/embed/episode/3xVkwVybXm2MwbsO923oUd', '2022-02-24', '2022-03-28', 57, 1, 1, 0),
(723, ' Joe Rogan: The Malone Interview           ', 'https://open.spotify.com/embed/episode/6U44O0GjgcYNanIMtkO63s', '2022-02-04', '2022-03-28', 57, 1, 1, 0),
(724, ' The Moon: Why Are We Really Going Back?           ', 'https://open.spotify.com/embed/episode/28IoEbDjiNIqYxH07d47z6', '2021-12-09', '2022-03-28', 57, 1, 1, 0),
(725, ' Fauci on How This Ends           ', 'https://open.spotify.com/embed/episode/0WVrNX8fI8ARD5mUgQXfgF', '2021-12-03', '2022-03-28', 57, 1, 1, 0),
(726, ' Omicron: Do You Need to Freak Out?           ', 'https://open.spotify.com/embed/episode/7CgPsnN9rP0OgP9h003sbB', '2021-12-02', '2022-03-28', 57, 1, 1, 0),
(727, ' Presenting Gastropod: How Chilis Conquered the World           ', 'https://open.spotify.com/embed/episode/59TaUaf5wtv2ulps7xRMge', '2021-11-25', '2022-03-28', 57, 1, 1, 0),
(728, ' Jurassic Park: Hold On to Your Butts           ', 'https://open.spotify.com/embed/episode/3loEVamJf3DybIMKMpsCJ0', '2021-11-18', '2022-03-28', 57, 1, 1, 0),
(729, ' Killer Asteroids: NASA Strikes Back           ', 'https://open.spotify.com/embed/episode/5SjC5KNZyEURUTrxvOx7RZ', '2021-11-11', '2022-03-28', 57, 1, 1, 0),
(730, ' Monkey Say What? LEOPARD!!           ', 'https://open.spotify.com/embed/episode/5ChnUOus6HUdiv0s5n3pAV', '2021-11-04', '2022-03-28', 57, 1, 1, 0),
(731, ' Chronic Pain: Can Our Brains Fix It?           ', 'https://open.spotify.com/embed/episode/1egw1snBfkeACYwOFsEjeN', '2021-10-28', '2022-03-28', 57, 1, 1, 0),
(732, ' The Legendary Condom Queen           ', 'https://open.spotify.com/embed/episode/4Ih8Gvj7K4L3PS1RL4sf9Y', '2021-10-21', '2022-03-28', 57, 1, 1, 0),
(733, ' Burnout: Can We Fix Work?           ', 'https://open.spotify.com/embed/episode/4REnE7JSIVAOF4xeg3EClX', '2021-10-14', '2022-03-28', 57, 1, 1, 0),
(734, ' Blue Balls: You&#39;re Wrong About Them           ', 'https://open.spotify.com/embed/episode/3xZymMW7C2nKs6rvhxlPXt', '2021-10-07', '2022-03-28', 57, 1, 1, 0),
(735, ' True Love: Is Monogamy Unnatural?           ', 'https://open.spotify.com/embed/episode/1gm9BvCWsHhXN2erbvNXiv', '2021-09-30', '2022-03-28', 57, 1, 1, 0),
(736, ' The Secret World of Plants           ', 'https://open.spotify.com/embed/episode/3S3YjKBZl9vrxMbrbcQKlK', '2021-09-28', '2022-03-28', 57, 1, 1, 0),
(737, ' Childbirth: Are Doctors Messing It Up?           ', 'https://open.spotify.com/embed/episode/6r79SufNYtupBQtz8GEk9Q', '2021-09-23', '2022-03-28', 57, 1, 1, 0),
(738, ' Weight: Is Fat Unhealthy?           ', 'https://open.spotify.com/embed/episode/771Gz9oycoeqSYtOVopRqp', '2021-09-16', '2022-03-28', 57, 1, 1, 0),
(739, ' Therapy: Does It Work?           ', 'https://open.spotify.com/embed/episode/3TWNjy89c166IHaUlrjrEa', '2021-09-09', '2022-03-28', 57, 1, 1, 0),
(740, ' Let’s Do Science Again!!           ', 'https://open.spotify.com/embed/episode/02V6MStz3ik04JHeDsj0CY', '2021-09-02', '2022-03-28', 57, 1, 1, 0),
(741, ' Presenting Not Past It: The Vax That Got Axed           ', 'https://open.spotify.com/embed/episode/47SxevKtkviJMqLtNzb1od', '2021-08-19', '2022-03-28', 57, 1, 1, 0),
(742, ' The Delta Variant: How Bad Is It?           ', 'https://open.spotify.com/embed/episode/25K1YVbuFdf4JuZh2396yW', '2021-08-10', '2022-03-28', 57, 1, 1, 0),
(743, ' Pet Food: How Fancy Should They Feast?           ', 'https://open.spotify.com/embed/episode/4USKQd8v1jDaP0viwW3CS9', '2021-05-27', '2022-03-28', 57, 1, 1, 0),
(744, ' The G Spot: Come Again?           ', 'https://open.spotify.com/embed/episode/0oMBOjHnimQEDPKnwglQjy', '2021-05-20', '2022-03-28', 57, 1, 1, 0),
(745, ' Back From the Dead           ', 'https://open.spotify.com/embed/episode/6qH81KOnq22ifB4zzcCkO3', '2021-05-13', '2022-03-28', 57, 1, 1, 0),
(746, ' A Seedy, Late-Night Adventure           ', 'https://open.spotify.com/embed/episode/7kSyx6saamNRONP1d3EJLZ', '2021-05-06', '2022-03-28', 57, 1, 1, 0),
(747, ' Screens: Are They Ruining Our Brains and Mental Health and Eyes and           ', 'https://open.spotify.com/embed/episode/1z5qLMOMTDvdDEICAVAaTS', '2021-04-29', '2022-03-28', 57, 1, 1, 0),
(748, ' Havana Syndrome: Did a Secret Weapon Fry Diplomats&#39; Brains?           ', 'https://open.spotify.com/embed/episode/1fWVwFPU3cUka8lfaSKU2V', '2021-04-22', '2022-03-28', 57, 1, 1, 0),
(749, ' How Science Created Morons           ', 'https://open.spotify.com/embed/episode/6NIbsn2SW2qNFAgXnbP0Jm', '2021-04-08', '2022-03-28', 57, 1, 1, 0),
(750, ' Coronavirus: How Scary Are the Variants?           ', 'https://open.spotify.com/embed/episode/1g3FloLMSxIgFtsLKSTqVZ', '2021-04-01', '2022-03-28', 57, 1, 1, 0),
(751, ' Snake Bite Cures: Weasels, Pigeons, Pee           ', 'https://open.spotify.com/embed/episode/4qZxBv5WF90maNQsMbeNg5', '2021-03-30', '2022-03-28', 57, 1, 1, 0),
(752, ' SNAKES!!!           ', 'https://open.spotify.com/embed/episode/6RjWdXmb2891AgByx7YDbt', '2021-03-25', '2022-03-28', 57, 1, 1, 0),
(753, ' UFOs: Through the Wormhole Again           ', 'https://open.spotify.com/embed/episode/60oChXf4TK7dN4NZslVUpx', '2021-03-18', '2022-03-28', 57, 1, 1, 0),
(754, ' Brood X: A Drug-fueled Cicada Orgy           ', 'https://open.spotify.com/embed/episode/4bH8se9ar9Fytb2e3EhvjC', '2021-03-11', '2022-03-28', 57, 1, 1, 0),
(755, ' Immune Boosting: Is It a Bust?           ', 'https://open.spotify.com/embed/episode/1UhKdqAcdqxKT20141HmTy', '2021-03-04', '2022-03-28', 57, 1, 1, 0),
(756, ' Bringing the Science Back, Baby!           ', 'https://open.spotify.com/embed/episode/35kKzGEetkjhZypQAWNi6M', '2021-02-25', '2022-03-28', 57, 1, 1, 0),
(757, ' Butterflies Are Secret Monsters           ', 'https://open.spotify.com/embed/episode/1We7ArfCMOxdZYPO2vMATw', '2021-01-28', '2022-03-28', 57, 1, 1, 0),
(758, ' Presenting Coronavirus: Fact Vs. Fiction           ', 'https://open.spotify.com/embed/episode/7y1VJXt8ZQf6zCp6BMHFZ4', '2021-01-21', '2022-03-28', 57, 1, 1, 0),
(759, ' Magic Mushrooms: Trip Through the Science           ', 'https://open.spotify.com/embed/episode/7lGQvffIR7yrrfT8mU1J3a', '2020-12-10', '2022-03-28', 57, 1, 1, 0),
(760, ' Coronavirus: More Scared or Less Scared?           ', 'https://open.spotify.com/embed/episode/3CRgQkAfUDcuiWoMN5LoZV', '2020-12-07', '2022-03-28', 57, 1, 1, 0),
(761, ' Coronavirus: Shots! Shots! Shots!           ', 'https://open.spotify.com/embed/episode/5cO2zn48DjhR25dKASkxGp', '2020-12-03', '2022-03-28', 57, 1, 1, 0),
(762, ' Did the CIA do it? Part II           ', 'https://open.spotify.com/embed/episode/3V1WtCmgO7GTzefxOVs8iq', '2020-11-19', '2022-03-28', 57, 1, 1, 0),
(763, ' Did the CIA Plant a Virus in Cuba?           ', 'https://open.spotify.com/embed/episode/3intCxZQkrDI1hur9yvAag', '2020-11-12', '2022-03-28', 57, 1, 1, 0),
(764, ' Platypuses Get a Glow Up           ', 'https://open.spotify.com/embed/episode/6llmiTXprUUKHgCl05V972', '2020-11-05', '2022-03-28', 57, 1, 1, 0),
(765, ' Reparations: How Could It Work?           ', 'https://open.spotify.com/embed/episode/1g76zRDULFImEcekyiAtNX', '2020-10-30', '2022-03-28', 57, 1, 1, 0),
(766, ' Supervolcanoes: Is Yellowstone Gonna Blow?           ', 'https://open.spotify.com/embed/episode/5PM3MgA6OLE7Bc7bapSOvG', '2020-10-22', '2022-03-28', 57, 1, 1, 0),
(767, ' Science Vs Presents: How to Save a Planet           ', 'https://open.spotify.com/embed/episode/2QrcHVooGpOYeXgEwegebr', '2020-10-15', '2022-03-28', 57, 1, 1, 0),
(768, ' Lab-Grown Meat: We Grill It           ', 'https://open.spotify.com/embed/episode/2l2L7L9zgP9fEEc5NqWkKy', '2020-10-08', '2022-03-28', 57, 1, 1, 0),
(769, ' Hunting an Invisible Killer           ', 'https://open.spotify.com/embed/episode/1hBU6fFhfJBuv9OP9rfTFY', '2020-10-01', '2022-03-28', 57, 1, 1, 0),
(770, ' Orgasms: Come for the Science           ', 'https://open.spotify.com/embed/episode/4flH2xKicjz4i0d3inSV7h', '2020-09-24', '2022-03-28', 57, 1, 1, 0),
(771, ' SHARKS!!! Sink Your Teeth in Again           ', 'https://open.spotify.com/embed/episode/0stWXLWXNHU6kRxdeH5uKX', '2020-09-10', '2022-03-28', 57, 1, 1, 0),
(772, ' Astrology: Are Geminis the Worst?           ', 'https://open.spotify.com/embed/episode/4L35pil7kqqvZeOOeFRRPR', '2020-09-03', '2022-03-28', 57, 1, 1, 0),
(773, ' Mini Mask Update           ', 'https://open.spotify.com/embed/episode/73A4XaiM8rxvyI3r8eSz8y', '2020-09-01', '2022-03-28', 57, 1, 1, 0),
(774, ' Probiotics: Scam or Superfood?           ', 'https://open.spotify.com/embed/episode/2I5C0yaOXZJlR1XTn9m5HL', '2020-08-27', '2022-03-28', 57, 1, 1, 0),
(775, ' New Season! Time for Non-Coronavirus Content           ', 'https://open.spotify.com/embed/episode/4fgWrF1cGJni7sed89zjNB', '2020-08-20', '2022-03-28', 57, 1, 1, 0),
(776, ' Coronavirus: Are We Back Where We Started?           ', 'https://open.spotify.com/embed/episode/0vvmw1YiAC8ZjtBr2BPLqj', '2020-07-02', '2022-03-28', 57, 1, 1, 0),
(777, ' Fauci! He’s Back!           ', 'https://open.spotify.com/embed/episode/5B8Y7JZXv73733whWfdKoE', '2020-06-23', '2022-03-28', 57, 1, 1, 0),
(778, ' Coronavirus: Dude, Where&#39;s My Vaccine?           ', 'https://open.spotify.com/embed/episode/4FIgeuRNvpHP8Sa1wUdsOd', '2020-06-19', '2022-03-28', 57, 1, 1, 0),
(779, ' Coronavirus: Weirdest Virus Ever?           ', 'https://open.spotify.com/embed/episode/3m9TclOFz8FCSvLNgv0RLA', '2020-06-11', '2022-03-28', 57, 1, 1, 0),
(780, ' Coronavirus: Protesting in a Pandemic           ', 'https://open.spotify.com/embed/episode/7ruB5Xxy3oxi1t3mhncqoe', '2020-06-09', '2022-03-28', 57, 1, 1, 0),
(781, ' Coronavirus: Labs Go Dark           ', 'https://open.spotify.com/embed/episode/4zZKTgodGHDkzAGfLCjyzr', '2020-05-29', '2022-03-28', 57, 1, 1, 0),
(782, ' Coronavirus: Sweden Goes Rogue           ', 'https://open.spotify.com/embed/episode/24MBZY1DpPy7xWOKYaRgkL', '2020-05-22', '2022-03-28', 57, 1, 1, 0),
(783, ' Coronavirus: The Mask Wars           ', 'https://open.spotify.com/embed/episode/4bBPTcsGkuLCGlDHtA5moE', '2020-05-14', '2022-03-28', 57, 1, 1, 0),
(784, ' Coronavirus: Pregnant in a Pandemic           ', 'https://open.spotify.com/embed/episode/5ubIiOVeUKN5jTNIlymX3x', '2020-05-08', '2022-03-28', 57, 1, 1, 0),
(785, ' Coronavirus: How Many Silent Spreaders Are There?           ', 'https://open.spotify.com/embed/episode/43F6zu5wpEys4ek9I7rexU', '2020-05-01', '2022-03-28', 57, 1, 1, 0),
(786, ' Coronavirus: Was It Made In a Lab?           ', 'https://open.spotify.com/embed/episode/2l2tEwGYRiWEbrpLoJ7FbH', '2020-04-24', '2022-03-28', 57, 1, 1, 0),
(787, ' Working Out From Home — in 7 Minutes? [Rebroadcast]           ', 'https://open.spotify.com/embed/episode/0RCHzwS8zzBkc57C9RzmqG', '2020-04-20', '2022-03-28', 57, 1, 1, 0),
(788, ' Coronavirus: Can You Get It Twice?           ', 'https://open.spotify.com/embed/episode/0bBKqIsHxryJPwWjDF0xZk', '2020-04-17', '2022-03-28', 57, 1, 1, 0),
(789, ' Coronavirus: When Will It End?           ', 'https://open.spotify.com/embed/episode/6GwDiX8Ao9aKlCLv8Mo89a', '2020-04-09', '2022-03-28', 57, 1, 1, 0),
(790, ' Coronavirus: Should I Disinfect EVERYTHING?           ', 'https://open.spotify.com/embed/episode/3wZXPC2c2e9I4RUj0Heuhb', '2020-04-07', '2022-03-28', 57, 1, 1, 0),
(791, ' Coronavirus: Is It Airborne?           ', 'https://open.spotify.com/embed/episode/0PlDQdDF8D4OzaTnLYkzZG', '2020-04-03', '2022-03-28', 57, 1, 1, 0),
(792, ' Coronavirus: Are Young People Safe?           ', 'https://open.spotify.com/embed/episode/2l0q7ixoShfQeJaEqMFpal', '2020-03-31', '2022-03-28', 57, 1, 1, 0),
(793, ' Coronavirus: Will Chloroquine Save Us?           ', 'https://open.spotify.com/embed/episode/0lrTXewgtGwFre6QYYzMWO', '2020-03-26', '2022-03-28', 57, 1, 1, 0),
(794, ' Coronavirus: Unmasking the Facts and Ibuprofen Scares           ', 'https://open.spotify.com/embed/episode/7CaP0IEFNTXnoBWBdH5xe4', '2020-03-23', '2022-03-28', 57, 1, 1, 0),
(795, ' Coronavirus: A Story From the Front Lines           ', 'https://open.spotify.com/embed/episode/4CPqOfw6J0VSB7fRlH3HBt', '2020-03-19', '2022-03-28', 57, 1, 1, 0),
(796, ' Coronavirus: What Should You Do Now?           ', 'https://open.spotify.com/embed/episode/3wcTeLau8znjrjeWmksJjV', '2020-03-16', '2022-03-28', 57, 1, 1, 0),
(797, ' More Science Vs Coming Right Up           ', 'https://open.spotify.com/embed/episode/1oOmPmtzHT72PwGmQql1ef', '2020-03-12', '2022-03-28', 57, 1, 1, 0),
(798, ' Coronavirus: Fears and Facts           ', 'https://open.spotify.com/embed/episode/7w98tfnOOcXOFtU5It9Mfz', '2020-03-04', '2022-03-28', 57, 1, 1, 0),
(799, ' Coronavirus Outbreak: How Scared Should You Be?           ', 'https://open.spotify.com/embed/episode/5bX9huvT9mVpYpQWuzjR8f', '2020-01-30', '2022-03-28', 57, 1, 1, 0),
(800, ' How to Stop A Killer Asteroid           ', 'https://open.spotify.com/embed/episode/4IIposSiseR71dPDPvJ74K', '2019-12-19', '2022-03-28', 57, 1, 1, 0),
(801, ' Healthcare: How Do We Fix It?           ', 'https://open.spotify.com/embed/episode/5djlCyK7F3JKJsjzwhnlfU', '2019-12-12', '2022-03-28', 57, 1, 1, 0),
(802, ' Ants: Tales from the Underground           ', 'https://open.spotify.com/embed/episode/5Lw96WvRwdyFrCH3f3WntJ', '2019-12-05', '2022-03-28', 57, 1, 1, 0),
(803, ' Police Shootings: The Data and the Damage Done           ', 'https://open.spotify.com/embed/episode/1S3S2p7lrHjtANzRJSvFHe', '2019-11-21', '2022-03-28', 57, 1, 1, 0),
(804, ' When a Hospital becomes The Butcher Shop           ', 'https://open.spotify.com/embed/episode/3mTk1lZ9x41lqpy0NviaGe', '2019-11-14', '2022-03-28', 57, 1, 1, 0),
(805, ' Sleep: All Aboard the Snooze Cruise!           ', 'https://open.spotify.com/embed/episode/5Py5B8yyEQrMFbuMomA9uK', '2019-11-07', '2022-03-28', 57, 1, 1, 0),
(806, ' 5G: Welcome to the Revolution?           ', 'https://open.spotify.com/embed/episode/7oJytSsawVtqQzGniEajf3', '2019-10-31', '2022-03-28', 57, 1, 1, 0),
(807, ' Vaping: What the Hell is Going On?!           ', 'https://open.spotify.com/embed/episode/1D78VfU9fRsEDKX8JtJIem', '2019-10-24', '2022-03-28', 57, 1, 1, 0),
(808, ' PANDEMIC!!!           ', 'https://open.spotify.com/embed/episode/1pUZDEEfvrOonvNhSy5mf0', '2019-10-11', '2022-03-28', 57, 1, 1, 0),
(809, ' Heartbreak: Why does it hurt so bad?           ', 'https://open.spotify.com/embed/episode/6aNjaMp3OlMVU7YhiS6yiJ', '2019-10-03', '2022-03-28', 57, 1, 1, 0),
(810, ' Football: Should We Cancel It?           ', 'https://open.spotify.com/embed/episode/3iMLOaNVAy0s6RsdecUySj', '2019-09-26', '2022-03-28', 57, 1, 1, 0),
(811, ' Exercise: Fat Buster or Belly Flop?           ', 'https://open.spotify.com/embed/episode/0cB6mp9Uj8GzJ0pONV9OdU', '2019-09-19', '2022-03-28', 57, 1, 1, 0),
(812, ' Let&#39;s...science...AGAIN!           ', 'https://open.spotify.com/embed/episode/76gJEWheoh7blMjnCUFweI', '2019-09-12', '2022-03-28', 57, 1, 1, 0),
(813, ' The Dinosaur Explosion           ', 'https://open.spotify.com/embed/episode/2aDjG1b30sqkh4bZNcUGyU', '2019-08-08', '2022-03-28', 57, 1, 1, 0),
(814, ' SHARKS!!!           ', 'https://open.spotify.com/embed/episode/63dTAAieJ4LFIPj1XJUp7l', '2019-06-13', '2022-03-28', 57, 1, 1, 0),
(815, ' How Bad Science Killed A President           ', 'https://open.spotify.com/embed/episode/0LrNjDM18KESHLMwofbflD', '2019-06-06', '2022-03-28', 57, 1, 1, 0),
(816, ' Peanuts: Public Enemy No. 1?           ', 'https://open.spotify.com/embed/episode/3tReIj2u5HlICQze1IUGV9', '2019-05-30', '2022-03-28', 57, 1, 1, 0),
(817, ' The Abortion Underground           ', 'https://open.spotify.com/embed/episode/7cdR9LwUsLsj2PWf7lJEw5', '2019-05-23', '2022-03-28', 57, 1, 1, 0),
(818, ' Placebo: Can the Mind Cure You?           ', 'https://open.spotify.com/embed/episode/0USQ5MBdsL9vLRrX0DD8mG', '2019-05-09', '2022-03-28', 57, 1, 1, 0),
(819, ' Fertility Cliff: Is It Real?           ', 'https://open.spotify.com/embed/episode/6ZdswhANCgfLFIVeuPrv1S', '2019-04-25', '2022-03-28', 57, 1, 1, 0),
(820, ' Race: Can We See It In Our DNA?           ', 'https://open.spotify.com/embed/episode/4pqwn2m8Ke54N1RtIJf1jB', '2019-04-19', '2022-03-28', 57, 1, 1, 0),
(821, ' DNA Kits: Can You Trust Them?           ', 'https://open.spotify.com/embed/episode/6DY1xm1fJde58k72C75SY1', '2019-04-11', '2022-03-28', 57, 1, 1, 0),
(822, ' Pets on Planes: Are Emotional Support Animals Legit?           ', 'https://open.spotify.com/embed/episode/0y6QSAzkzAmw3AnoT6ygZt', '2019-04-04', '2022-03-28', 57, 1, 1, 0),
(823, ' Fasting Diets: What&#39;s the Skinny?           ', 'https://open.spotify.com/embed/episode/0M2j1YyIxhtEMZ8hYTU3h0', '2019-03-28', '2022-03-28', 57, 1, 1, 0),
(824, ' Human Lab Rats: Science&#39;s Rotten Underbelly           ', 'https://open.spotify.com/embed/episode/3Pj0wVcYQEIX8HtSvr8quP', '2019-03-21', '2022-03-28', 57, 1, 1, 0),
(825, ' Alcohol: A Pour Decision?           ', 'https://open.spotify.com/embed/episode/3igDOGG23FtqSM1F6VlhCk', '2019-03-14', '2022-03-28', 57, 1, 1, 0),
(826, ' We&#39;re back next week!           ', 'https://open.spotify.com/embed/episode/6AcJLdgVdgV6ZRs3eTjlua', '2019-03-07', '2022-03-28', 57, 1, 1, 0),
(827, ' The Mystery of the Man Who Died Twice           ', 'https://open.spotify.com/embed/episode/6CjQ8MDmDGTgLCLmdcuYnO', '2018-12-20', '2022-03-28', 57, 1, 1, 0),
(828, ' The Science Of Being Transgender           ', 'https://open.spotify.com/embed/episode/6Ft9HunKBhXgRdLkdO4QLq', '2018-12-13', '2022-03-28', 57, 1, 1, 0),
(829, ' The Wank Worm: How NASA Got Hacked           ', 'https://open.spotify.com/embed/episode/1ybnp6DnPaLMmlF6lbVUuV', '2018-12-06', '2022-03-28', 57, 1, 1, 0),
(830, ' Ancient Aliens: Who Really Built the Pyramids?           ', 'https://open.spotify.com/embed/episode/0M2BGsneuubYxpMqI1zrKg', '2018-11-29', '2022-03-28', 57, 1, 1, 0),
(831, ' 7 Minute Workout: Fit or Fad?           ', 'https://open.spotify.com/embed/episode/7L1AsGdNdeHixfEBfZF2Ym', '2018-11-21', '2022-03-28', 57, 1, 1, 0),
(832, ' CBD: Weed Wonder Drug?           ', 'https://open.spotify.com/embed/episode/1t9xpsHGHfGxuRFso39Wc8', '2018-11-15', '2022-03-28', 57, 1, 1, 0),
(833, ' Election Special: Immigration           ', 'https://open.spotify.com/embed/episode/0GwBbYxCb3Lyeu6630d0C7', '2018-11-02', '2022-03-28', 57, 1, 1, 0),
(834, ' Election Special: Climate Change           ', 'https://open.spotify.com/embed/episode/42t9q2oy52sZg5f7tyndVM', '2018-11-01', '2022-03-28', 57, 1, 1, 0),
(835, ' Election Special: Abortion           ', 'https://open.spotify.com/embed/episode/2ycQbLsazRf7X2AeZrUHy6', '2018-10-31', '2022-03-28', 57, 1, 1, 0),
(836, ' Election Special: Gun Violence           ', 'https://open.spotify.com/embed/episode/0GIo3ifU1sI5QcWwxqD90w', '2018-10-30', '2022-03-28', 57, 1, 1, 0),
(837, ' Meet Chompers: A Kids Toothbrushing Show           ', 'https://open.spotify.com/embed/episode/1hG7GTcYm2bRHNQSAzHBl8', '2018-10-27', '2022-03-28', 57, 1, 1, 0),
(838, ' Online Dating: Can Science Find You Love?           ', 'https://open.spotify.com/embed/episode/6TkPAlz8jTGuzb1GXBOHHK', '2018-10-26', '2022-03-28', 57, 1, 1, 0),
(839, ' Murder Mystery: An 1850s Whodunnit           ', 'https://open.spotify.com/embed/episode/6GvKCeMiJIYi7OS1pYFKiJ', '2018-10-18', '2022-03-28', 57, 1, 1, 0),
(840, ' Gentrification: What&#39;s Really Happening?           ', 'https://open.spotify.com/embed/episode/1VNnDSoftcBVa72mWs5uuX', '2018-10-11', '2022-03-28', 57, 1, 1, 0),
(841, ' Soy, Almond, Oat Milks: Are They Udder Bull?           ', 'https://open.spotify.com/embed/episode/215FYVlX9nh3L2VMfZ5GYs', '2018-10-04', '2022-03-28', 57, 1, 1, 0),
(842, ' Vegans: Are They Right?           ', 'https://open.spotify.com/embed/episode/4eALtqRLIIqOABN9DTW5bX', '2018-09-27', '2022-03-28', 57, 1, 1, 0),
(843, ' Essential Oils: Science or Snake Oil?           ', 'https://open.spotify.com/embed/episode/7vYjYu6nuuvTzJka1swRy4', '2018-09-20', '2022-03-28', 57, 1, 1, 0),
(844, ' Plastics: The Final Straw?           ', 'https://open.spotify.com/embed/episode/3XozBNEv7alzWopDYObrxq', '2018-09-13', '2022-03-28', 57, 1, 1, 0),
(845, ' We Return... With A Twist.           ', 'https://open.spotify.com/embed/episode/5kHBARkZZe9mKvbXlRnQ8T', '2018-09-06', '2022-03-28', 57, 1, 1, 0),
(846, ' Welcome, New Listeners!           ', 'https://open.spotify.com/embed/episode/1eIGT91HEXmaMLbAkke3f4', '2018-07-17', '2022-03-28', 57, 1, 1, 0),
(847, ' Serial Killers: Science of the Lambs           ', 'https://open.spotify.com/embed/episode/4CyjtpZzhyBLBwVrnPLvxr', '2018-06-28', '2022-03-28', 57, 1, 1, 0),
(848, ' UFOs: What the Government Covered Up           ', 'https://open.spotify.com/embed/episode/3EaeEgjl5QuAujGS0S2Gtw', '2018-06-21', '2022-03-28', 57, 1, 1, 0),
(849, ' Lyme Disease: How Scary Is It?           ', 'https://open.spotify.com/embed/episode/2Mb67OumbO9r0AVYyKQeQ1', '2018-06-14', '2022-03-28', 57, 1, 1, 0),
(850, ' Circumcision: Why Are We Doing This?           ', 'https://open.spotify.com/embed/episode/1wMso1MxQQtavQzLrUJQqU', '2018-05-31', '2022-03-28', 57, 1, 1, 0),
(851, ' How Science Created Morons           ', 'https://open.spotify.com/embed/episode/2KTzRKjGsUcoibEOZYoabY', '2018-05-25', '2022-03-28', 57, 1, 1, 0),
(852, ' Polar Bears: A Surprising Tail           ', 'https://open.spotify.com/embed/episode/1VIx0bVphvFbrOn7bnEZZf', '2018-05-17', '2022-03-28', 57, 1, 1, 0),
(853, ' Scott Kelly: How A Year in Space Changes You           ', 'https://open.spotify.com/embed/episode/0ZolA8TZOLZwqF8DwzsX2y', '2018-05-03', '2022-03-28', 57, 1, 1, 0),
(854, ' Ketogenic Diet... Is Fat Good For You?           ', 'https://open.spotify.com/embed/episode/6WwYKdCMlLp0JrBvrw6cwz', '2018-04-26', '2022-03-28', 57, 1, 1, 0),
(855, ' Nuclear War... Total Annihilation?           ', 'https://open.spotify.com/embed/episode/1AzTkYWfeKugv8sd9JTG8z', '2018-04-19', '2022-03-28', 57, 1, 1, 0),
(856, ' Sex Addiction: Are They Faking It?           ', 'https://open.spotify.com/embed/episode/0H9vHAnUceHohNYtiVPv5c', '2018-04-05', '2022-03-28', 57, 1, 1, 0),
(857, ' Opioids: Kicking America&#39;s Addiction           ', 'https://open.spotify.com/embed/episode/6OUy4AVx2OqmiuBvj1B1UZ', '2018-03-29', '2022-03-28', 57, 1, 1, 0),
(858, ' Opioids: How America Got Hooked           ', 'https://open.spotify.com/embed/episode/4KhVSxUoPVCrU3G4CvYP6Y', '2018-03-22', '2022-03-28', 57, 1, 1, 0),
(859, ' Brand New Science Vs!           ', 'https://open.spotify.com/embed/episode/1Cu6MeI897rRLyRhkxTnqi', '2018-03-16', '2022-03-28', 57, 1, 1, 0),
(860, ' Obesity - Is It Your Fault?           ', 'https://open.spotify.com/embed/episode/5CKWtFX7F5Or0tIe4Y93WJ', '2017-12-14', '2022-03-28', 57, 1, 1, 0),
(861, ' Chiropractors           ', 'https://open.spotify.com/embed/episode/3E1EpfIPJXyt2B0aguvQrN', '2017-12-07', '2022-03-28', 57, 1, 1, 0),
(862, ' Birth Control - The Biggest Myths           ', 'https://open.spotify.com/embed/episode/6L4HXVxO3GGxxtYlUgS4zb', '2017-11-30', '2022-03-28', 57, 1, 1, 0),
(863, ' Molly - Scary Drug or Promising Therapy?           ', 'https://open.spotify.com/embed/episode/3iQe6yE15QRkhVsJ7KeiRP', '2017-11-16', '2022-03-28', 57, 1, 1, 0),
(864, ' Balding - What Actually Works?           ', 'https://open.spotify.com/embed/episode/6o8iHym7rXfY3XvAoCUF2L', '2017-11-09', '2022-03-28', 57, 1, 1, 0),
(865, ' The Bee-pocalypse           ', 'https://open.spotify.com/embed/episode/0RkZO33HeNvzM9MIJprqtU', '2017-11-02', '2022-03-28', 57, 1, 1, 0),
(866, ' Vitamins &amp; Supplements - Are They Worth It?           ', 'https://open.spotify.com/embed/episode/2JRcf99AkL57VyDlLAmDYd', '2017-10-19', '2022-03-28', 57, 1, 1, 0),
(867, ' Bigfoot           ', 'https://open.spotify.com/embed/episode/3a2biAVZTnHVM4ZGJ7e6LA', '2017-10-12', '2022-03-28', 57, 1, 1, 0),
(868, ' 100% Renewable Energy - Can We Do It?           ', 'https://open.spotify.com/embed/episode/3touboUOGIdNulgq3c9Xw0', '2017-10-05', '2022-03-28', 57, 1, 1, 0),
(869, ' Science Vs Presents: I Want That Purple Stuff           ', 'https://open.spotify.com/embed/episode/54sRdruzOA5DofiOAGYCpd', '2017-09-28', '2022-03-28', 57, 1, 1, 0),
(870, ' The Rise of Anti-Vaxxers           ', 'https://open.spotify.com/embed/episode/0yYnDHT3gVrsPI3ps02Nmp', '2017-09-21', '2022-03-28', 57, 1, 1, 0),
(871, ' Vaccines - Are They Safe?           ', 'https://open.spotify.com/embed/episode/0LMp1ma3J03Vw7KL5ZONls', '2017-09-14', '2022-03-28', 57, 1, 1, 0),
(872, ' Detoxing &amp; Cleanses - Do They Work?           ', 'https://open.spotify.com/embed/episode/3OwyJPTapd5UTjZU0lJAwi', '2017-09-07', '2022-03-28', 57, 1, 1, 0),
(873, ' New Season... Coming Soon!           ', 'https://open.spotify.com/embed/episode/3bKnA4xcA1oQ62EyNGqfeI', '2017-08-31', '2022-03-28', 57, 1, 1, 0),
(874, ' Artificial Sweeteners - not so sweet?           ', 'https://open.spotify.com/embed/episode/5PneRrLvVO886BDCgy3j4A', '2017-06-08', '2022-03-28', 57, 1, 1, 0),
(875, ' Nuclear Power - what are the Risks?           ', 'https://open.spotify.com/embed/episode/1Pjl9mzSWG3VIvqIiT8jqO', '2017-06-01', '2022-03-28', 57, 1, 1, 0),
(876, ' Meditation           ', 'https://open.spotify.com/embed/episode/1OBOW4TO1UvSCE9mbkSlMr', '2017-05-25', '2022-03-28', 57, 1, 1, 0),
(877, ' True Love           ', 'https://open.spotify.com/embed/episode/7MkefuRmXo4utFPCRpVaus', '2017-05-11', '2022-03-28', 57, 1, 1, 0),
(878, ' Antioxidants           ', 'https://open.spotify.com/embed/episode/0nsYhJSseHQjm5ikn5KYQR', '2017-05-04', '2022-03-28', 57, 1, 1, 0),
(879, ' Abortion: What You Need To Know           ', 'https://open.spotify.com/embed/episode/1IvD5Jz56DiRe7DvSXmIH1', '2017-04-27', '2022-03-28', 57, 1, 1, 0),
(880, ' GMO... OMG?           ', 'https://open.spotify.com/embed/episode/3MMD5hXz2pkoT9AwHToxUP', '2017-04-17', '2022-03-28', 57, 1, 1, 0),
(881, ' Lemmings           ', 'https://open.spotify.com/embed/episode/7lngcBcYzBreyex0Z0m4C0', '2017-04-06', '2022-03-28', 57, 1, 1, 0),
(882, ' Ghosts           ', 'https://open.spotify.com/embed/episode/4NY7wJRPVdWnJzhlFmIPTJ', '2017-03-30', '2022-03-28', 57, 1, 1, 0),
(883, ' Climate Change... the Apocalypse?           ', 'https://open.spotify.com/embed/episode/68BMrqxthXNWIxsr8ZXimh', '2017-03-16', '2022-03-28', 57, 1, 1, 0),
(884, ' Acne           ', 'https://open.spotify.com/embed/episode/7LD7tUjZAjV32gfbquzYYl', '2017-03-09', '2022-03-28', 57, 1, 1, 0),
(885, ' Immigration           ', 'https://open.spotify.com/embed/episode/1xknah0bAcLoYMO50NO8DR', '2017-03-09', '2022-03-28', 57, 1, 1, 0),
(886, ' Antidepressants           ', 'https://open.spotify.com/embed/episode/5Zqxuhiumf6fysfqSwx8w6', '2016-10-28', '2022-03-28', 57, 1, 1, 0),
(887, ' DNA and the Smell of Death           ', 'https://open.spotify.com/embed/episode/4VsPOeeV4mr0JJGZnh26ft', '2016-10-20', '2022-03-28', 57, 1, 1, 0),
(888, ' Forensic Science           ', 'https://open.spotify.com/embed/episode/6rxKaP85aZ9iO7rztd189W', '2016-10-07', '2022-03-28', 57, 1, 1, 0),
(889, ' Zika           ', 'https://open.spotify.com/embed/episode/4ESEpwQQDe5fNot3EENDdW', '2016-09-30', '2022-03-28', 57, 1, 1, 0),
(890, ' Hypnosis           ', 'https://open.spotify.com/embed/episode/75FxADLe3Co6PiQdyrAlz0', '2016-09-22', '2022-03-28', 57, 1, 1, 0),
(891, ' The G-spot           ', 'https://open.spotify.com/embed/episode/3NCf6DAWtiWOShQr6MNqNY', '2016-09-01', '2022-03-28', 57, 1, 1, 0),
(892, ' Organic Food           ', 'https://open.spotify.com/embed/episode/1kDrqSeMT1TpkmPBuo1b0w', '2016-08-25', '2022-03-28', 57, 1, 1, 0),
(893, ' Gun Control (Pt 2)           ', 'https://open.spotify.com/embed/episode/4fOv3XCKoWE900YnFwSbp6', '2016-08-11', '2022-03-28', 57, 1, 1, 0),
(894, ' Guns           ', 'https://open.spotify.com/embed/episode/3A2CqSh4SpSZWtuyKqIGIf', '2016-08-04', '2022-03-28', 57, 1, 1, 0),
(895, ' Attachment Parenting           ', 'https://open.spotify.com/embed/episode/779tegJ0OWEgwLhOVtde1R', '2016-07-27', '2022-03-28', 57, 1, 1, 0),
(896, ' Fracking           ', 'https://open.spotify.com/embed/episode/42JVEA4IqCD3paypAkkUvX', '2016-07-27', '2022-03-28', 57, 1, 1, 0),
(897, ' Sneak Peek           ', 'https://open.spotify.com/embed/episode/0UhyN2quS8KlxwB3xJYdAH', '2016-06-28', '2022-03-28', 57, 1, 1, 0);

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
(1, 'Heavyweight', 1, 'https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker', 0),
(2, 'Reply All', 1, 'https://gimletmedia.com/shows/reply-all/episodes#show-tab-picker', 0),
(22, 'Science Vs', 1, 'https://gimletmedia.com/shows/science-vs/episodes#show-tab-picker', 0),
(35, 'Braincast', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M', 0),
(46, 'Braincast', 2, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M', 1),
(47, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 0),
(55, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 1),
(56, 'Heavyweight', 1, 'https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker', 1),
(57, 'Science Vs', 1, 'https://gimletmedia.com/shows/science-vs/episodes#show-tab-picker', 1);

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
(1, 'gimlet'),
(2, 'b9'),
(3, 'jovemnerd');

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
(4, 'test5', 'enNSRGQzbEo3MFlDSkJCSi9zVDl6dz09', 'enNSRGQzbEo3MFlDSkJCSi9zVDl6dz09', '3221fe0ec3710c051ce1be0e13372b8b6d73bc06c9d3b7b1efbeb0cbe1f3fde0', '1f92ba8bc73486c3', '2022-03-27', 1);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podcast`
--
ALTER TABLE `podcast`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
