-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 03, 2022 at 04:47 PM
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
(2394, ' #42 Mark           ', 'https://open.spotify.com/embed/episode/4stY381hQErlrE6fpYhOdE', '2021-12-09', '2022-04-02', 75, 1, 1, 0),
(2395, ' #41 Barbara Wilson           ', 'https://open.spotify.com/embed/episode/3w8ixRAVatVyzg63Nf8NLr', '2021-11-18', '2022-04-02', 75, 1, 1, 0),
(2396, ' #40 Barbara Shutt           ', 'https://open.spotify.com/embed/episode/2BZrL9n11cbetRKfpSuAC9', '2021-11-18', '2022-04-02', 75, 1, 1, 0),
(2397, ' #39 Stephen           ', 'https://open.spotify.com/embed/episode/03Nep7Pgs1hTrDwcqy7dht', '2021-10-28', '2022-04-02', 75, 1, 1, 0),
(2398, ' #38 Justine           ', 'https://open.spotify.com/embed/episode/16yGTBn9IXaHkR9G9m9q0I', '2021-10-21', '2022-04-02', 75, 1, 1, 0),
(2399, ' #37 John           ', 'https://open.spotify.com/embed/episode/6QYP10F2Hwevc7XLdKGqT2', '2021-10-07', '2022-04-02', 75, 1, 1, 0),
(2400, ' #36 Brandon           ', 'https://open.spotify.com/embed/episode/0RtYPfbxDH8RXv0jAMRxw4', '2021-09-30', '2022-04-02', 75, 1, 1, 0),
(2401, ' Heavyweight Short: Hallie           ', 'https://open.spotify.com/embed/episode/7nH4q5cQ8pAVDefoNd1XK5', '2021-06-17', '2022-04-02', 75, 1, 1, 0),
(2402, ' #35 Rachel and Jon           ', 'https://open.spotify.com/embed/episode/6jiqezUBhbDOfbCuFJK2TP', '2020-11-12', '2022-04-02', 75, 1, 1, 0),
(2403, ' #34 Annie           ', 'https://open.spotify.com/embed/episode/6in5V1yLC4AdjRTpBx0BeC', '2020-11-05', '2022-04-02', 75, 1, 1, 0),
(2404, ' #33 Bobby           ', 'https://open.spotify.com/embed/episode/2YjgiZpS7tioIlL4y8QAA8', '2020-10-22', '2022-04-02', 75, 1, 1, 0),
(2405, ' #32 Vivian           ', 'https://open.spotify.com/embed/episode/0h4nFE0qhocuMcfEXym259', '2020-10-15', '2022-04-02', 75, 1, 1, 0),
(2406, ' Why Is Mason Reese Crying?           ', 'https://open.spotify.com/embed/episode/4AOPapQxrrmXzQuGo747hq', '2020-10-08', '2022-04-02', 75, 1, 1, 0),
(2407, ' Heavyweight Check In 8           ', 'https://open.spotify.com/embed/episode/7HWu5SMBwAxSLGA80oUT1O', '2020-06-18', '2022-04-02', 75, 1, 1, 0),
(2408, ' Heavyweight Check In 7           ', 'https://open.spotify.com/embed/episode/45INHfAbW5f7yG3sxpsBWt', '2020-06-04', '2022-04-02', 75, 1, 1, 0),
(2409, ' Heavyweight Check In 6           ', 'https://open.spotify.com/embed/episode/0GyBE3B9EhN1gsUGCO5soX', '2020-05-21', '2022-04-02', 75, 1, 1, 0),
(2410, ' Heavyweight Check In 5           ', 'https://open.spotify.com/embed/episode/6oUMel4VioFGVywUCkkI4u', '2020-05-07', '2022-04-02', 75, 1, 1, 0),
(2411, ' Heavyweight Check In 4           ', 'https://open.spotify.com/embed/episode/4Ys8D9H7CWGpBMqCSz2SJm', '2020-04-27', '2022-04-02', 75, 1, 1, 0),
(2412, ' Heavyweight Check In 3           ', 'https://open.spotify.com/embed/episode/0WUtx6YZN4iO2kHb7iAHi4', '2020-04-14', '2022-04-02', 75, 1, 1, 0),
(2413, ' Heavyweight Check In 2           ', 'https://open.spotify.com/embed/episode/64IJbqhggYHlDnh5TlHtFt', '2020-03-27', '2022-04-02', 75, 1, 1, 0),
(2414, ' Heavyweight Checks In           ', 'https://open.spotify.com/embed/episode/3wyuC1zt8iSmVzRuPGE4Hr', '2020-03-18', '2022-04-02', 75, 1, 1, 0),
(2415, ' #31 Marie-Claude           ', 'https://open.spotify.com/embed/episode/0dkA49NR29JIsywbUeWSub', '2019-12-19', '2022-04-02', 75, 1, 1, 0),
(2416, ' #30 The Marshes           ', 'https://open.spotify.com/embed/episode/0IEbDo5NWHqHtkA8BEijl4', '2019-12-12', '2022-04-02', 75, 1, 1, 0),
(2417, ' #29 Elyse           ', 'https://open.spotify.com/embed/episode/4cravvuXyaeZxbP0I7yXMR', '2019-11-21', '2022-04-02', 75, 1, 1, 0),
(2418, ' #28 Dr. Muller           ', 'https://open.spotify.com/embed/episode/2lV7SJiUiCtBAGBY91KMaF', '2019-11-07', '2022-04-02', 75, 1, 1, 0),
(2419, ' #27 Scott           ', 'https://open.spotify.com/embed/episode/3ZBwxPjR3OxCThz3PEkVyI', '2019-10-24', '2022-04-02', 75, 1, 1, 0),
(2420, ' #26 Beverley and Van           ', 'https://open.spotify.com/embed/episode/1i0lq4KRorbmqZY2Xeo2Q0', '2019-10-10', '2022-04-02', 75, 1, 1, 0),
(2421, ' #25 Becky and Jo           ', 'https://open.spotify.com/embed/episode/3xTzU8lcNdFVoaK4fwCgj2', '2019-10-03', '2022-04-02', 75, 1, 1, 0),
(2422, ' #24 Jimmy and Mark           ', 'https://open.spotify.com/embed/episode/6szrriPwbHodLLv9bUcJPP', '2019-09-26', '2022-04-02', 75, 1, 1, 0),
(2423, ' #23 Alex           ', 'https://open.spotify.com/embed/episode/342vSTJhgIVas4ve1nUyCH', '2018-12-13', '2022-04-02', 75, 1, 1, 0),
(2424, ' #22 Marchel           ', 'https://open.spotify.com/embed/episode/6aBJTNyRSAw2a2s98GLatw', '2018-12-06', '2022-04-02', 75, 1, 1, 0),
(2425, ' #21 Rachael           ', 'https://open.spotify.com/embed/episode/4MY69fA8LBsodltQwR5CqW', '2018-11-15', '2022-04-02', 75, 1, 1, 0),
(2426, ' #20 Soraya           ', 'https://open.spotify.com/embed/episode/0GEVgoNZVFn8U0ApdXC0NX', '2018-11-08', '2022-04-02', 75, 1, 1, 0),
(2427, ' #19 Joey           ', 'https://open.spotify.com/embed/episode/4WPRFrthdKNX410a5Z2JMZ', '2018-11-01', '2022-04-02', 75, 1, 1, 0),
(2428, ' Zoe, PJ, and Chanel           ', 'https://open.spotify.com/embed/episode/5XiPCULqejDwzTNoVFH3t7', '2018-10-25', '2022-04-02', 75, 1, 1, 0),
(2429, ' #18 Sven           ', 'https://open.spotify.com/embed/episode/31KTj6QvGuM5g7VoEkP9Ax', '2018-10-18', '2022-04-02', 75, 1, 1, 0),
(2430, ' #17 Skye           ', 'https://open.spotify.com/embed/episode/5xvawJYLebA5zipoDnwhju', '2018-10-11', '2022-04-02', 75, 1, 1, 0),
(2431, ' #16 Rob           ', 'https://open.spotify.com/embed/episode/3ujjIbe8EuyUHENrHjdgRj', '2018-10-04', '2022-04-02', 75, 1, 1, 0),
(2432, ' #15 Dina           ', 'https://open.spotify.com/embed/episode/1oIjRKM1wT2xVVUJTYdePn', '2017-12-07', '2022-04-02', 75, 1, 1, 0),
(2433, ' #14 Isabel           ', 'https://open.spotify.com/embed/episode/7IQcwYFKk3i9MvWQR1wNkW', '2017-11-30', '2022-04-02', 75, 1, 1, 0),
(2434, ' #13 Kenny           ', 'https://open.spotify.com/embed/episode/6bqp6Ep6LDB2kWHF9aNxzO', '2017-11-16', '2022-04-02', 75, 1, 1, 0),
(2435, ' #12 Jesse           ', 'https://open.spotify.com/embed/episode/2h7zw4DA0zBVm2qD4Tu7xz', '2017-11-09', '2022-04-02', 75, 1, 1, 0),
(2436, ' #11 Christina           ', 'https://open.spotify.com/embed/episode/4X7IyUWzLzIx9im5BapC27', '2017-11-02', '2022-04-02', 75, 1, 1, 0),
(2437, ' #10 Rose           ', 'https://open.spotify.com/embed/episode/6LCxtHAKFz353gOIiCqSy1', '2017-10-26', '2022-04-02', 75, 1, 1, 0),
(2438, ' #9 Milt           ', 'https://open.spotify.com/embed/episode/0yrrNYCLE3zU23X1HhQmRo', '2017-09-28', '2022-04-02', 75, 1, 1, 0),
(2439, ' #8 Jeremy           ', 'https://open.spotify.com/embed/episode/0FKSFGbWwmsCSLF0Nux23i', '2016-11-15', '2022-04-02', 75, 1, 1, 0),
(2440, ' #7 Julia           ', 'https://open.spotify.com/embed/episode/6gyp1ojVkEPGAthe0Io1TT', '2016-11-08', '2022-04-02', 75, 1, 1, 0),
(2441, ' #6 James           ', 'https://open.spotify.com/embed/episode/5PHM3WlpceQnpVNhBKsWyK', '2016-11-01', '2022-04-02', 75, 1, 1, 0),
(2442, ' #5 Galit           ', 'https://open.spotify.com/embed/episode/171C8grV9yyXvTfeZP8KDg', '2016-10-25', '2022-04-02', 75, 1, 1, 0),
(2443, ' #4 Tony           ', 'https://open.spotify.com/embed/episode/3bOBw2rcYr1zcazpuRNOC2', '2016-10-11', '2022-04-02', 75, 1, 1, 0),
(2444, ' #3 Tara           ', 'https://open.spotify.com/embed/episode/7LMLJrRwxlM0SjXQMZKm02', '2016-10-04', '2022-04-02', 75, 1, 1, 0),
(2445, ' #2 Gregor           ', 'https://open.spotify.com/embed/episode/6LKrLVEAY3tsqHPURec6ke', '2016-09-24', '2022-04-02', 75, 1, 1, 0),
(2446, ' #1 Buzz           ', 'https://open.spotify.com/embed/episode/68kq3bNz6hEuq8NtdfwERG', '2016-09-23', '2022-04-02', 75, 1, 1, 0),
(2447, ' Trailer           ', 'https://open.spotify.com/embed/episode/3OcMTqDu5RyFqzUn4zo5Ww', '2016-09-03', '2022-04-02', 75, 1, 1, 0),
(2449, ' #167 America&#39;s Hottest Talkline           ', 'https://open.spotify.com/embed/episode/2DBstW0LumPSF5SyO5ofRe', '2022-03-24', '2022-04-03', 78, 1, 1, 0),
(2450, ' #184 Alex Goldman, Demon Hunter           ', 'https://open.spotify.com/embed/episode/5jSmV0MrIaAiKW2QtjHAPC', '2022-03-17', '2022-04-03', 78, 1, 1, 0),
(2451, ' #183 The Venova King           ', 'https://open.spotify.com/embed/episode/13RJNp2j2TcU6Vrbuu3e3Y', '2022-03-10', '2022-04-03', 78, 1, 1, 0),
(2452, ' Presenting: Science Vs. Joe Rogan: The Malone Interview           ', 'https://open.spotify.com/embed/episode/1LO0BPbhUbVqk3Go2yNU5m', '2022-02-11', '2022-04-03', 78, 1, 1, 0),
(2453, ' Programming Note           ', 'https://open.spotify.com/embed/episode/1yVsqMqF8qMc3EeFsEdPsI', '2022-01-20', '2022-04-03', 78, 1, 1, 0),
(2454, ' Featuring: Heavyweight           ', 'https://open.spotify.com/embed/episode/7qw0fXQa3PbIPmaVOzbkIR', '2021-12-23', '2022-04-03', 78, 1, 1, 0),
(2455, ' #182 State of Panic           ', 'https://open.spotify.com/embed/episode/4rneawiBhkjYG4CxvrW8oB', '2021-12-16', '2022-04-03', 78, 1, 1, 0),
(2456, ' Introducing: Crime Show           ', 'https://open.spotify.com/embed/episode/4RAEJmtvz9NOTR93xrlJcF', '2021-11-18', '2022-04-03', 78, 1, 1, 0),
(2457, ' #181 Absolutely Devious Lick           ', 'https://open.spotify.com/embed/episode/2Uax4wM5zIhM1ae9NUISkR', '2021-10-28', '2022-04-03', 78, 1, 1, 0),
(2458, ' #180 Who&#39;s Going?           ', 'https://open.spotify.com/embed/episode/3FcU0xSJuHa8wyqpyDw4XR', '2021-10-14', '2022-04-03', 78, 1, 1, 0),
(2459, ' Introducing: 544 Days           ', 'https://open.spotify.com/embed/episode/50LmrtzYko1DNFRH0UPpqm', '2021-09-30', '2022-04-03', 78, 1, 1, 0),
(2460, ' #179 Pandemic Be Damned           ', 'https://open.spotify.com/embed/episode/729ehHMo4iWdkOzRr9HfW5', '2021-09-16', '2022-04-03', 78, 1, 1, 0),
(2461, ' #178 I Am Not a Bot           ', 'https://open.spotify.com/embed/episode/4nPHIeMTlcGiqUDUKrynPl', '2021-09-02', '2022-04-03', 78, 1, 1, 0),
(2462, ' Introducing: Not Past It           ', 'https://open.spotify.com/embed/episode/1JaW3WB5BYZDKr9oo6rXm2', '2021-08-19', '2022-04-03', 78, 1, 1, 0),
(2463, ' #177 Gleeks and Gurgles           ', 'https://open.spotify.com/embed/episode/0MTLiSGiPy5wjpCAKUq6ov', '2021-07-22', '2022-04-03', 78, 1, 1, 0),
(2464, ' #176 Twicarus           ', 'https://open.spotify.com/embed/episode/7qLcjsx13HFeqqL8SEQv8d', '2021-07-08', '2022-04-03', 78, 1, 1, 0),
(2465, ' #175 This Website Will Self Destruct           ', 'https://open.spotify.com/embed/episode/6diuzeMCagVbMaVOF7WDEM', '2021-06-24', '2022-04-03', 78, 1, 1, 0),
(2466, ' #174 Search Party           ', 'https://open.spotify.com/embed/episode/4JJ8gID7OPfGFobB0rxEn6', '2021-06-10', '2022-04-03', 78, 1, 1, 0),
(2467, ' The Test Kitchen Revisited           ', 'https://open.spotify.com/embed/episode/0xV5BruL6KEgEhE7tiF2LP', '2021-04-29', '2022-04-03', 78, 1, 1, 0),
(2468, ' A Message from the Staff of Reply All           ', 'https://open.spotify.com/embed/episode/39flTNrjFvi6jMJ0CN8ypY', '2021-02-25', '2022-04-03', 78, 1, 1, 0),
(2469, ' #173 The Test Kitchen, Chapter 2           ', 'https://open.spotify.com/embed/episode/0CGd5Gq60pbHgGPmteiTxh', '2021-02-12', '2022-04-03', 78, 1, 1, 0),
(2470, ' #172 The Test Kitchen, Chapter 1           ', 'https://open.spotify.com/embed/episode/6xleEgZXLj1DklEnb1rI2A', '2021-02-04', '2022-04-03', 78, 1, 1, 0),
(2471, ' #171 Account Suspended           ', 'https://open.spotify.com/embed/episode/3y0ZZQM0WS2GGG74y4X4uD', '2021-01-14', '2022-04-03', 78, 1, 1, 0),
(2472, ' #170 A Song of Impotent Rage           ', 'https://open.spotify.com/embed/episode/2paKu32ckyyY8r2OYLaN0n', '2020-12-17', '2022-04-03', 78, 1, 1, 0),
(2473, ' #86 Man of the People           ', 'https://open.spotify.com/embed/episode/4IRgq6iVECI2EA0s4TXPTs', '2020-12-03', '2022-04-03', 78, 1, 1, 0),
(2474, ' #169 The Confetti Cannon           ', 'https://open.spotify.com/embed/episode/2lT1uqyKqcFGFZrtQMTpzh', '2020-11-12', '2022-04-03', 78, 1, 1, 0),
(2475, ' We&#39;re Taking Your Calls Today           ', 'https://open.spotify.com/embed/episode/1VZYwDmOCq2PjxUZUxFsUm', '2020-11-06', '2022-04-03', 78, 1, 1, 0),
(2476, ' #168 Happiness Calculator vs. Alex Goldman           ', 'https://open.spotify.com/embed/episode/2AwPOVANlKj2GbmKRcBKYF', '2020-10-29', '2022-04-03', 78, 1, 1, 0),
(2477, ' Introducing: Resistance           ', 'https://open.spotify.com/embed/episode/04EGxRvGkcB3xLj4VXpFCd', '2020-10-22', '2022-04-03', 78, 1, 1, 0),
(2478, ' #167 America&#39;s Hottest Talkline           ', 'https://open.spotify.com/embed/episode/3o8Dr9SrHJo8VaZ3xdS0tZ', '2020-10-01', '2022-04-03', 78, 1, 1, 0),
(2479, ' #166 Country of Liars           ', 'https://open.spotify.com/embed/episode/237nn7xpF2cDb7vHfMQHhg', '2020-09-18', '2022-04-03', 78, 1, 1, 0),
(2480, ' #115 The Bitcoin Hunter           ', 'https://open.spotify.com/embed/episode/2hxxHPvholqCBKjKO3fqwf', '2020-09-03', '2022-04-03', 78, 1, 1, 0),
(2481, ' #51 Perfect Crime           ', 'https://open.spotify.com/embed/episode/2A4D4R44PVX1UwO3ILKbMx', '2020-08-27', '2022-04-03', 78, 1, 1, 0),
(2482, ' #132 Negative Mount Pleasant           ', 'https://open.spotify.com/embed/episode/6KWYAeTfPhn37Dr0uSFNBt', '2020-08-20', '2022-04-03', 78, 1, 1, 0),
(2483, ' #53 In The Desert           ', 'https://open.spotify.com/embed/episode/6ccVBAGIUB55MDgVGC6DJp', '2020-08-13', '2022-04-03', 78, 1, 1, 0),
(2484, ' #165 The Mold and The Beautiful           ', 'https://open.spotify.com/embed/episode/6q26gtEJjQf3BMTFGV7AkI', '2020-07-30', '2022-04-03', 78, 1, 1, 0),
(2485, ' #164 Long Distance: The Real Alex Martin           ', 'https://open.spotify.com/embed/episode/6Hr2rbMHUhgPj7vqfdtQBx', '2020-07-16', '2022-04-03', 78, 1, 1, 0),
(2486, ' #163 Candidate One           ', 'https://open.spotify.com/embed/episode/7lOf0U9flNhePYnl5VLA6y', '2020-07-02', '2022-04-03', 78, 1, 1, 0),
(2487, ' #162 The Least You Could Do           ', 'https://open.spotify.com/embed/episode/5xMkLOXu5OZyEJF74hZ0gY', '2020-06-18', '2022-04-03', 78, 1, 1, 0),
(2488, ' Programming Note           ', 'https://open.spotify.com/embed/episode/6smtkpzTjEKCburb4rrWSW', '2020-06-04', '2022-04-03', 78, 1, 1, 0),
(2489, ' #161 Brian vs. Brian           ', 'https://open.spotify.com/embed/episode/7fACAszNJ0tfinlOGsGyQn', '2020-05-14', '2022-04-03', 78, 1, 1, 0),
(2490, ' The Scaredy Cats Horror Show           ', 'https://open.spotify.com/embed/episode/6skdGS119oKQF7fTMxrgrg', '2020-04-30', '2022-04-03', 78, 1, 1, 0),
(2491, ' #59 Good Job, Alex           ', 'https://open.spotify.com/embed/episode/5ykjcKKDYoyuKtgFx8ULE3', '2020-04-09', '2022-04-03', 78, 1, 1, 0),
(2492, ' #160 The Attic and Closet Show 2           ', 'https://open.spotify.com/embed/episode/2gPjn93amTakprjGG28zRH', '2020-03-30', '2022-04-03', 78, 1, 1, 0),
(2493, ' #159 The Attic and Closet Show           ', 'https://open.spotify.com/embed/episode/38Ttns9ZwXxh4UgwIviCDh', '2020-03-20', '2022-04-03', 78, 1, 1, 0),
(2494, ' Announcement! We’re taking calls and broadcasting live this week           ', 'https://open.spotify.com/embed/episode/1Y2dInfYG3sDKDOOrnIe7R', '2020-03-17', '2022-04-03', 78, 1, 1, 0),
(2495, ' #158 The Case of the Missing Hit           ', 'https://open.spotify.com/embed/episode/0CaOGo6xSN51B2aLAQa1kU', '2020-03-05', '2022-04-03', 78, 1, 1, 0),
(2496, ' #157 Pierre Delecto and the Spooky Adventure           ', 'https://open.spotify.com/embed/episode/5KchhGgHbTZwQmPux1uRmZ', '2020-02-20', '2022-04-03', 78, 1, 1, 0),
(2497, ' #156 The Cure for Everything           ', 'https://open.spotify.com/embed/episode/6iJHmGMJ0HfY8LrzdFnpmS', '2020-01-30', '2022-04-03', 78, 1, 1, 0),
(2498, ' #155 Friendship Village           ', 'https://open.spotify.com/embed/episode/7k50xV1wuo0ouJqsqJ28Sb', '2020-01-16', '2022-04-03', 78, 1, 1, 0),
(2499, ' #154 The Real Enemy, Part 3           ', 'https://open.spotify.com/embed/episode/5lc3LFtvT62UxYyhAQ4Nmy', '2019-12-12', '2022-04-03', 78, 1, 1, 0),
(2500, ' #153 The Real Enemy, Part 2           ', 'https://open.spotify.com/embed/episode/5uXvOE4g05NvGzFiQICSpd', '2019-12-12', '2022-04-03', 78, 1, 1, 0),
(2501, ' #152 The Real Enemy, Part 1           ', 'https://open.spotify.com/embed/episode/5085DNJXu4f0e8M9dOhy6v', '2019-12-12', '2022-04-03', 78, 1, 1, 0),
(2502, ' #151 Thank You for Noticing           ', 'https://open.spotify.com/embed/episode/5lXTYlpy92GO12UsaC0VY1', '2019-11-14', '2022-04-03', 78, 1, 1, 0),
(2503, ' #150 The Reply All Halloween Scream-A-Thon           ', 'https://open.spotify.com/embed/episode/177y7bLW0TKNuBsHvkzKiw', '2019-11-01', '2022-04-03', 78, 1, 1, 0),
(2504, ' #149 30-50 Feral Hogs           ', 'https://open.spotify.com/embed/episode/5xtoE83acTkHa2IqKpiROM', '2019-10-10', '2022-04-03', 78, 1, 1, 0),
(2505, ' #148 Bedbugs and Aliens           ', 'https://open.spotify.com/embed/episode/0GgDfAAnpOMjKjWdBziCGf', '2019-09-26', '2022-04-03', 78, 1, 1, 0),
(2506, ' #147 The Woman in the Air Conditioner           ', 'https://open.spotify.com/embed/episode/6Ka9wVaxghYlR1ZFu3p1dh', '2019-09-12', '2022-04-03', 78, 1, 1, 0),
(2507, ' #130 The Snapchat Thief           ', 'https://open.spotify.com/embed/episode/3B3s1Hf3tzTdlLaDRDywsL', '2019-08-29', '2022-04-03', 78, 1, 1, 0),
(2508, ' #96 The Secret Life of Alex Goldman           ', 'https://open.spotify.com/embed/episode/5eJPzdD8uU8yPpBHqQjPYS', '2019-08-22', '2022-04-03', 78, 1, 1, 0),
(2509, ' #127 The Crime Machine, Part I           ', 'https://open.spotify.com/embed/episode/6uagdYENZ1HjiaeX7gbqIN', '2019-08-15', '2022-04-03', 78, 1, 1, 0),
(2510, ' #128 The Crime Machine, Part II           ', 'https://open.spotify.com/embed/episode/4ULMa8oh9nJWSv4PM9gPNh', '2019-08-15', '2022-04-03', 78, 1, 1, 0),
(2511, ' #120 INVCEL           ', 'https://open.spotify.com/embed/episode/4tefTrEPMhxt2LH9drHDQW', '2019-08-08', '2022-04-03', 78, 1, 1, 0),
(2512, ' #146 Summer Hotline           ', 'https://open.spotify.com/embed/episode/3jgJFd0opiCJLOqj32lc30', '2019-07-25', '2022-04-03', 78, 1, 1, 0),
(2513, ' #145 Louder           ', 'https://open.spotify.com/embed/episode/3eveHcmbFXRXrnqyRBrDUA', '2019-07-11', '2022-04-03', 78, 1, 1, 0),
(2514, ' #144 Dark Pattern           ', 'https://open.spotify.com/embed/episode/2ATUlZsZ7vRX8xiCVWhnLr', '2019-06-27', '2022-04-03', 78, 1, 1, 0),
(2515, ' #143 Permanent Record           ', 'https://open.spotify.com/embed/episode/0eWJleTlWawIpQ16TZdMig', '2019-06-13', '2022-04-03', 78, 1, 1, 0),
(2516, ' #142 We Didn&#39;t Start The Fire           ', 'https://open.spotify.com/embed/episode/4nCTurmMa5hiOLZhQfI32K', '2019-05-23', '2022-04-03', 78, 1, 1, 0),
(2517, ' #41 What It Looks Like           ', 'https://open.spotify.com/embed/episode/1lOS31LxjEpUqzK4mCPlZt', '2019-05-09', '2022-04-03', 78, 1, 1, 0),
(2518, ' #141 Adam Pisces and the $2 Coke           ', 'https://open.spotify.com/embed/episode/2U6uO1NqcilZEKm6tGhSyN', '2019-04-25', '2022-04-03', 78, 1, 1, 0),
(2519, ' #140 The Roman Mars Mazda Virus           ', 'https://open.spotify.com/embed/episode/5X3PF75Kz712JaK2liiZlW', '2019-04-11', '2022-04-03', 78, 1, 1, 0),
(2520, ' #139 The Reply All Hotline           ', 'https://open.spotify.com/embed/episode/533KgWHWxMBEcBX4NnSuSl', '2019-03-28', '2022-04-03', 78, 1, 1, 0),
(2521, ' #138 The Great Momo Panic           ', 'https://open.spotify.com/embed/episode/7fb0J4oexZ9JGqoIYvkk2R', '2019-03-14', '2022-04-03', 78, 1, 1, 0),
(2522, ' #137 Fool&#39;s Trade           ', 'https://open.spotify.com/embed/episode/2b9k8JOf9boMRrjND3Kb67', '2019-02-28', '2022-04-03', 78, 1, 1, 0),
(2523, ' #136 The Founder           ', 'https://open.spotify.com/embed/episode/7HIzeo9YztT9dkVzIzA5sF', '2019-02-14', '2022-04-03', 78, 1, 1, 0),
(2524, ' #135 Robocall: Bang Bang           ', 'https://open.spotify.com/embed/episode/0sy7lhjxHFglUedDBsWmB7', '2019-01-31', '2022-04-03', 78, 1, 1, 0),
(2525, ' #134 The Year of the Wallop           ', 'https://open.spotify.com/embed/episode/1v3MXoaJy5xNjf10SVpzZl', '2019-01-17', '2022-04-03', 78, 1, 1, 0),
(2526, ' #133 Reply All&#39;s 2018 Year End Extravaganza           ', 'https://open.spotify.com/embed/episode/7qPeNdwJ8JiAFQC65Ik7MW', '2018-12-20', '2022-04-03', 78, 1, 1, 0),
(2527, ' #132 Negative Mount Pleasant           ', 'https://open.spotify.com/embed/episode/14W526vD5eP8mLdFluLFPE', '2018-12-06', '2022-04-03', 78, 1, 1, 0),
(2528, ' #131 Surefire Investigations           ', 'https://open.spotify.com/embed/episode/10wEkPk4WBsWJVQOoANrB2', '2018-11-15', '2022-04-03', 78, 1, 1, 0),
(2529, ' #130 The Snapchat Thief           ', 'https://open.spotify.com/embed/episode/1oE4laROa7cS6YnRFXYraZ', '2018-11-08', '2022-04-03', 78, 1, 1, 0),
(2530, ' #129 Autumn           ', 'https://open.spotify.com/embed/episode/3cN4oN3NRCk1PB9DJn7gUz', '2018-10-25', '2022-04-03', 78, 1, 1, 0),
(2531, ' #128 The Crime Machine, Part II           ', 'https://open.spotify.com/embed/episode/02uhOqpfshGwQZVpYrQFJi', '2018-10-12', '2022-04-03', 78, 1, 1, 0),
(2532, ' #127 The Crime Machine, Part I           ', 'https://open.spotify.com/embed/episode/7vPVmqFCFxBZJpStDAHl2n', '2018-10-12', '2022-04-03', 78, 1, 1, 0),
(2533, ' #126 Alex Jones Dramageddon           ', 'https://open.spotify.com/embed/episode/1TFh5xLgsSHQ4CUgoxS1n6', '2018-09-13', '2022-04-03', 78, 1, 1, 0),
(2534, ' #125 All My Pets           ', 'https://open.spotify.com/embed/episode/2YyMfVAV4lj8XYg9PtDuqq', '2018-07-26', '2022-04-03', 78, 1, 1, 0),
(2535, ' #124 The Magic Store           ', 'https://open.spotify.com/embed/episode/5ul7Pl1J4QEYd5RpAJN3xn', '2018-07-12', '2022-04-03', 78, 1, 1, 0),
(2536, ' #123 An Ad for the Worst Day of Your Life           ', 'https://open.spotify.com/embed/episode/7ch1adO6jPBZxnDa97H6Ic', '2018-06-21', '2022-04-03', 78, 1, 1, 0),
(2537, ' #122 The QAnon Code ⚡️⚡️           ', 'https://open.spotify.com/embed/episode/0v6j9XwqRuCWZln4qKsgVM', '2018-06-07', '2022-04-03', 78, 1, 1, 0),
(2538, ' #121 Pain Funnel           ', 'https://open.spotify.com/embed/episode/0ggGRxxyDLIA6qifd15JHF', '2018-05-17', '2022-04-03', 78, 1, 1, 0),
(2539, ' #120 INVCEL           ', 'https://open.spotify.com/embed/episode/6uUvil2myRFiIS4eHcl6P8', '2018-05-10', '2022-04-03', 78, 1, 1, 0),
(2540, ' #119 No More Safe Harbor           ', 'https://open.spotify.com/embed/episode/3QkfTQiJlElneVsj9k7TN2', '2018-04-20', '2022-04-03', 78, 1, 1, 0),
(2541, ' #118 A Pirate In Search of a Judge           ', 'https://open.spotify.com/embed/episode/2JecTfgk0BCsMHzuXDfIHQ', '2018-03-15', '2022-04-03', 78, 1, 1, 0),
(2542, ' #117 The World&#39;s Most Expensive Free Watch           ', 'https://open.spotify.com/embed/episode/7kYHMYvfd6NTNxgcyVk808', '2018-03-01', '2022-04-03', 78, 1, 1, 0),
(2543, ' #116 Trust the Process           ', 'https://open.spotify.com/embed/episode/0NGOihC8u0GBuxdV3fEBLb', '2018-02-15', '2022-04-03', 78, 1, 1, 0),
(2544, ' #115 The Bitcoin Hunter           ', 'https://open.spotify.com/embed/episode/6KpdRYyMSoqYda3DgqGEdg', '2018-01-25', '2022-04-03', 78, 1, 1, 0),
(2545, ' #114 Apocalypse Soon           ', 'https://open.spotify.com/embed/episode/60qzvxAWOCcUrW64Qx47nj', '2018-01-18', '2022-04-03', 78, 1, 1, 0),
(2546, ' #113 Reply All&#39;s Year End Extravaganza           ', 'https://open.spotify.com/embed/episode/7oOfjO7jiyKphOo5NJqOG1', '2017-12-21', '2022-04-03', 78, 1, 1, 0),
(2547, ' #112 The Prophet           ', 'https://open.spotify.com/embed/episode/3r6gz9KWPt1L1bsAIlJyQC', '2017-12-15', '2022-04-03', 78, 1, 1, 0),
(2548, ' #111 Return of the Russian Passenger           ', 'https://open.spotify.com/embed/episode/4uFUcd3gGChsaCWmVFvPJf', '2017-12-07', '2022-04-03', 78, 1, 1, 0),
(2549, ' #110 The Antifa Supersoldier Spectacular           ', 'https://open.spotify.com/embed/episode/04X0zDui5mxl13Lk9aALeZ', '2017-11-16', '2022-04-03', 78, 1, 1, 0),
(2550, ' #109 Is Facebook Spying on You?           ', 'https://open.spotify.com/embed/episode/4vYOibPeC270jJlnRoAVO6', '2017-11-02', '2022-04-03', 78, 1, 1, 0),
(2551, ' #108 The Skip Tracer, Part II           ', 'https://open.spotify.com/embed/episode/3iughrsWibIXNF1paKujUd', '2017-10-19', '2022-04-03', 78, 1, 1, 0),
(2552, ' #107 The Skip Tracer, Part I           ', 'https://open.spotify.com/embed/episode/1X7ez5rv84jfY4M70JSHqB', '2017-10-19', '2022-04-03', 78, 1, 1, 0),
(2553, ' #106 Is That You, KD?           ', 'https://open.spotify.com/embed/episode/7aj6D1gjvC25iLNqi50u5L', '2017-09-28', '2022-04-03', 78, 1, 1, 0),
(2554, ' #105 At World&#39;s End           ', 'https://open.spotify.com/embed/episode/5ymEGfj6fIr85Dp6SE1Qbi', '2017-09-21', '2022-04-03', 78, 1, 1, 0),
(2555, ' #104 The Case of the Phantom Caller           ', 'https://open.spotify.com/embed/episode/12K7myrJzgp7KOxePKzIFu', '2017-09-07', '2022-04-03', 78, 1, 1, 0),
(2556, ' #103 Long Distance, Part II           ', 'https://open.spotify.com/embed/episode/1rNleAZiyT7ScEZCRVZBDr', '2017-08-03', '2022-04-03', 78, 1, 1, 0),
(2557, ' #102 Long Distance           ', 'https://open.spotify.com/embed/episode/6wOtFK4x7E8N5VdOV7ejRy', '2017-07-27', '2022-04-03', 78, 1, 1, 0),
(2558, ' #101 Minka           ', 'https://open.spotify.com/embed/episode/1bIxMmQ9VgfPMsw6N3hbyW', '2017-07-13', '2022-04-03', 78, 1, 1, 0),
(2559, ' #100 Friends and Blasphemers           ', 'https://open.spotify.com/embed/episode/5yfeVKLwZLmwhbWC88pWCz', '2017-06-29', '2022-04-03', 78, 1, 1, 0),
(2560, ' #99 Black Hole, New Jersey           ', 'https://open.spotify.com/embed/episode/2sP4jSvNWQWIAjLsAoaOD4', '2017-06-15', '2022-04-03', 78, 1, 1, 0),
(2561, ' #98 Fog of Covfefe           ', 'https://open.spotify.com/embed/episode/3VZivEmHflb2C3tDkNLhBd', '2017-06-08', '2022-04-03', 78, 1, 1, 0),
(2562, ' #97 What Kind Of Idiot Gets Phished?           ', 'https://open.spotify.com/embed/episode/6VqKTPlP6nrlZdbtrBDux8', '2017-05-18', '2022-04-03', 78, 1, 1, 0),
(2563, ' #96 The Secret Life of Alex Goldman           ', 'https://open.spotify.com/embed/episode/6CMPA3VvX6QKQUOVLIADAC', '2017-05-04', '2022-04-03', 78, 1, 1, 0),
(2564, ' #95 The Silence in the Sky           ', 'https://open.spotify.com/embed/episode/42S7rjD6Y9g5GztuLS0Zzx', '2017-04-27', '2022-04-03', 78, 1, 1, 0),
(2565, ' #94 Obfuscation           ', 'https://open.spotify.com/embed/episode/0eHSE2rmi7ntvgM6kBnnzf', '2017-04-12', '2022-04-03', 78, 1, 1, 0),
(2566, ' #93 Beware All           ', 'https://open.spotify.com/embed/episode/7yr7ZpCbIfSlbpKMqsHm2A', '2017-04-06', '2022-04-03', 78, 1, 1, 0),
(2567, ' #92 Favor Atender: The Return           ', 'https://open.spotify.com/embed/episode/05ywpo032ulU4Nyir0hSo2', '2017-03-23', '2022-04-03', 78, 1, 1, 0),
(2568, ' #91 The Russian Passenger           ', 'https://open.spotify.com/embed/episode/3ZD3mnGTDQ9gnGbBdtqJSv', '2017-03-16', '2022-04-03', 78, 1, 1, 0),
(2569, ' #90 Matt Lieber Goes to Dinner           ', 'https://open.spotify.com/embed/episode/66PyUrccmOJbQorN6GUl8U', '2017-03-02', '2022-04-03', 78, 1, 1, 0),
(2570, ' #89 Worldstar           ', 'https://open.spotify.com/embed/episode/0KjN7mvKNquFhjZEiu7PmD', '2017-02-23', '2022-04-03', 78, 1, 1, 0),
(2571, ' #88 Second Language           ', 'https://open.spotify.com/embed/episode/2FmvxUeZ1p5BBJGBYhqLQA', '2017-02-09', '2022-04-03', 78, 1, 1, 0),
(2572, ' #87 Storming the Castle           ', 'https://open.spotify.com/embed/episode/1H3M591uNSAU2kHDpJF16w', '2017-02-02', '2022-04-03', 78, 1, 1, 0),
(2573, ' #86 Man of the People           ', 'https://open.spotify.com/embed/episode/5gLDGNLZoWHPiopDoWSAEI', '2017-01-18', '2022-04-03', 78, 1, 1, 0),
(2574, ' #85 The Reversal           ', 'https://open.spotify.com/embed/episode/28y1LyL3QU6z3dbw9NYvvg', '2017-01-18', '2022-04-03', 78, 1, 1, 0),
(2575, ' #84 Past, Present, Future 2           ', 'https://open.spotify.com/embed/episode/6udtjIu6OghfVnc0EiTcOS', '2016-12-22', '2022-04-03', 78, 1, 1, 0),
(2576, ' #47 Quit Already (REBROADCAST)           ', 'https://open.spotify.com/embed/episode/2MTX0O6a7t5QDuPLIEbgwD', '2016-12-14', '2022-04-03', 78, 1, 1, 0),
(2577, ' #83 Voyage Into Pizzagate           ', 'https://open.spotify.com/embed/episode/3pJInJsCgylVM1t3PzdulZ', '2016-12-08', '2022-04-03', 78, 1, 1, 0),
(2578, ' #82 Hello?           ', 'https://open.spotify.com/embed/episode/5qpOHhYvKX0NQwVoKWW6m8', '2016-11-17', '2022-04-03', 78, 1, 1, 0),
(2579, ' #81 In the Tall Grass           ', 'https://open.spotify.com/embed/episode/7uG3851aFxOGCC7T2Yhxwu', '2016-11-03', '2022-04-03', 78, 1, 1, 0),
(2580, ' #80 Flash!           ', 'https://open.spotify.com/embed/episode/0nmLjGa6ail5Lmw7tcvQoE', '2016-10-27', '2022-04-03', 78, 1, 1, 0),
(2581, ' #29 The Takeover (REBROADCAST)           ', 'https://open.spotify.com/embed/episode/6H5AbqJihXb45auF4wMSpc', '2016-10-19', '2022-04-03', 78, 1, 1, 0),
(2582, ' #79 Boy in Photo           ', 'https://open.spotify.com/embed/episode/20ln29jLrpBQfCQurID8oY', '2016-10-13', '2022-04-03', 78, 1, 1, 0),
(2583, ' #78 Very Quickly to the Drill           ', 'https://open.spotify.com/embed/episode/5rbfz85FIsEUTT4hh3bPWY', '2016-09-29', '2022-04-03', 78, 1, 1, 0),
(2584, ' #77 The Grand Tapestry Of Pepe           ', 'https://open.spotify.com/embed/episode/2YPB4bEBNlrBFst6GlktRl', '2016-09-21', '2022-04-03', 78, 1, 1, 0),
(2585, ' #76 Lost in a Cab           ', 'https://open.spotify.com/embed/episode/0JUxyxmWayBlkCOqkelOnC', '2016-09-08', '2022-04-03', 78, 1, 1, 0),
(2586, ' #75 Boy Wonder           ', 'https://open.spotify.com/embed/episode/7cQSCAhnH3bnOG74QCscj9', '2016-09-01', '2022-04-03', 78, 1, 1, 0),
(2587, ' #74 Making Friends           ', 'https://open.spotify.com/embed/episode/1Zu2K3qAttf3yPvfYwoqnC', '2016-08-24', '2022-04-03', 78, 1, 1, 0),
(2588, ' #73 Sandbox           ', 'https://open.spotify.com/embed/episode/5E5WSTpSChwebTbzxVp3vZ', '2016-08-11', '2022-04-03', 78, 1, 1, 0),
(2589, ' #72 Dead is Paul           ', 'https://open.spotify.com/embed/episode/52MIiYgh50NoCpSKorVT4r', '2016-08-04', '2022-04-03', 78, 1, 1, 0),
(2590, ' #71 The Picture Taker           ', 'https://open.spotify.com/embed/episode/24bjgbbfObHVWrxrXTN4Qa', '2016-07-27', '2022-04-03', 78, 1, 1, 0),
(2591, ' #70 Stolen Valor           ', 'https://open.spotify.com/embed/episode/6CcCO50NMU7SmpakkaGw3T', '2016-07-14', '2022-04-03', 78, 1, 1, 0),
(2592, ' #69 Disappeared           ', 'https://open.spotify.com/embed/episode/5mYbJswwvpT6veWYM4V30I', '2016-07-07', '2022-04-03', 78, 1, 1, 0),
(2593, ' #68 Vampire Rules           ', 'https://open.spotify.com/embed/episode/7H2ZBQMiCEpXfQqahTz1Bp', '2016-06-15', '2022-04-03', 78, 1, 1, 0),
(2594, ' #67 On the Inside, Part IV           ', 'https://open.spotify.com/embed/episode/4XwS4GPGyDElCx7jO07b89', '2016-06-09', '2022-04-03', 78, 1, 1, 0),
(2595, ' #66 On the Inside, Part III           ', 'https://open.spotify.com/embed/episode/35YpTyb98rdnlBXAPoB97k', '2016-05-26', '2022-04-03', 78, 1, 1, 0),
(2596, ' #65 On the Inside, Part II           ', 'https://open.spotify.com/embed/episode/3v8LWFN0R5ek0UdTCSFx7I', '2016-05-19', '2022-04-03', 78, 1, 1, 0),
(2597, ' #64 On the Inside           ', 'https://open.spotify.com/embed/episode/7K6dBmYrXke1DujEm87uhN', '2016-05-12', '2022-04-03', 78, 1, 1, 0),
(2598, ' #63 1000 Brimes           ', 'https://open.spotify.com/embed/episode/0y8lRVlglKVINm9PxNJhCZ', '2016-04-27', '2022-04-03', 78, 1, 1, 0),
(2599, ' #62 Decoders           ', 'https://open.spotify.com/embed/episode/7mI5Psw72F65Y6dBSc6tgs', '2016-04-21', '2022-04-03', 78, 1, 1, 0),
(2600, ' #61 Baby King           ', 'https://open.spotify.com/embed/episode/5hO2FmiFDUZYx1RPEKDIup', '2016-04-14', '2022-04-03', 78, 1, 1, 0),
(2601, ' #60 A Simple Question           ', 'https://open.spotify.com/embed/episode/1ypZ0sdPc5Dyw82kVoYzIW', '2016-03-31', '2022-04-03', 78, 1, 1, 0),
(2602, ' #59 Good Job, Alex           ', 'https://open.spotify.com/embed/episode/7eP9db1qND03Dc7lSDsVTD', '2016-03-23', '2022-04-03', 78, 1, 1, 0),
(2603, ' #58 Earth Pony           ', 'https://open.spotify.com/embed/episode/77RClYZXnCjfDTVw3n5yHL', '2016-03-17', '2022-04-03', 78, 1, 1, 0),
(2604, ' #57 Milk Wanted           ', 'https://open.spotify.com/embed/episode/5H54E25LPLOGco6s05GR3x', '2016-03-09', '2022-04-03', 78, 1, 1, 0),
(2605, ' #56 Zardulu           ', 'https://open.spotify.com/embed/episode/2Oynb2ZUwE2WHmqd4PkIdA', '2016-02-25', '2022-04-03', 78, 1, 1, 0),
(2606, ' #55 The Line           ', 'https://open.spotify.com/embed/episode/2EoZ8zjXOdanGa2Zo1zvCv', '2016-02-18', '2022-04-03', 78, 1, 1, 0),
(2607, ' #54 Apologies to Dr. Rosalind Franklin           ', 'https://open.spotify.com/embed/episode/2JftdZkgLARQuP3GpOsmg7', '2016-02-10', '2022-04-03', 78, 1, 1, 0),
(2608, ' #53 In The Desert           ', 'https://open.spotify.com/embed/episode/1g6qGtc4zMYX5dpL0MEyNb', '2016-02-04', '2022-04-03', 78, 1, 1, 0),
(2609, ' PSA: Hidden Trove           ', 'https://open.spotify.com/embed/episode/0DYpfwwJz7JI9pBTGbqkBq', '2016-01-27', '2022-04-03', 78, 1, 1, 0),
(2610, ' #52 Raising The Bar           ', 'https://open.spotify.com/embed/episode/6BUEHGbJpyMpnjBxYwJ9kt', '2016-01-21', '2022-04-03', 78, 1, 1, 0),
(2611, ' #51 Perfect Crime           ', 'https://open.spotify.com/embed/episode/7CQD9PSqqjFTHUd2dN6URS', '2016-01-14', '2022-04-03', 78, 1, 1, 0),
(2612, ' #50 The Cathedral           ', 'https://open.spotify.com/embed/episode/0GPaNMEgs8uWu0YFExZJs7', '2016-01-07', '2022-04-03', 78, 1, 1, 0),
(2613, ' #49 Past, Present, Future           ', 'https://open.spotify.com/embed/episode/3jH3Nc6yPPjjiAg6VJGH95', '2015-12-15', '2022-04-03', 78, 1, 1, 0),
(2614, ' #48 I Love You, I Loathe You           ', 'https://open.spotify.com/embed/episode/7lzBEi46nTSqxRDw9RCuhV', '2015-12-06', '2022-04-03', 78, 1, 1, 0),
(2615, ' #47 Quit Already!           ', 'https://open.spotify.com/embed/episode/7BKSKntcFcbjqCDnymxhGV', '2015-11-29', '2022-04-03', 78, 1, 1, 0),
(2616, ' #46 Yik Yak Returns           ', 'https://open.spotify.com/embed/episode/2j5HYek7T9qIQGsgZfWZIE', '2015-11-14', '2022-04-03', 78, 1, 1, 0),
(2617, ' #45 The Rainbow Pug           ', 'https://open.spotify.com/embed/episode/7BokmvNYEntRL4EnVLlTEJ', '2015-11-09', '2022-04-03', 78, 1, 1, 0),
(2618, ' #44 Shine On You Crazy Goldman           ', 'https://open.spotify.com/embed/episode/0VCY0etwKMQ75zkxgkDQUt', '2015-11-02', '2022-04-03', 78, 1, 1, 0),
(2619, ' #43 The Law That Sticks           ', 'https://open.spotify.com/embed/episode/7F0lADpsK4FamMzkvd9aVg', '2015-10-25', '2022-04-03', 78, 1, 1, 0),
(2620, ' #42 Blind Spot           ', 'https://open.spotify.com/embed/episode/27xx8KxS0LWCCNv5wtiGfK', '2015-10-11', '2022-04-03', 78, 1, 1, 0),
(2621, ' #41 What It Looks Like           ', 'https://open.spotify.com/embed/episode/2SJh7HUk4Twc1l5jiAZDz9', '2015-10-04', '2022-04-03', 78, 1, 1, 0),
(2622, ' #40 The Flower Child           ', 'https://open.spotify.com/embed/episode/3j9C8veyXDVA6FK1aNzzb4', '2015-09-21', '2022-04-03', 78, 1, 1, 0),
(2623, ' #39 Reply All Exploder           ', 'https://open.spotify.com/embed/episode/1fEbDNEcj3xCaqOV5d5iSA', '2015-09-16', '2022-04-03', 78, 1, 1, 0),
(2624, ' #38 Undo, Undo, Undo           ', 'https://open.spotify.com/embed/episode/6jaI5PKHS9jn8qN91kcK7x', '2015-09-06', '2022-04-03', 78, 1, 1, 0),
(2625, ' #37 Taking Power           ', 'https://open.spotify.com/embed/episode/6569gvq30GgLDWpcKXZank', '2015-08-31', '2022-04-03', 78, 1, 1, 0),
(2626, ' #36 Today&#39;s The Day           ', 'https://open.spotify.com/embed/episode/0gPErCk9WjcBULCpnn0pgK', '2015-08-24', '2022-04-03', 78, 1, 1, 0),
(2627, ' #35 One Strike           ', 'https://open.spotify.com/embed/episode/6fIIiY1z2A8yMs4JmWNGcw', '2015-08-09', '2022-04-03', 78, 1, 1, 0),
(2628, ' #34 DMV Nation           ', 'https://open.spotify.com/embed/episode/46JBOKUThX1XwNoWjjmU7d', '2015-08-03', '2022-04-03', 78, 1, 1, 0),
(2629, ' #6 This Proves Everything + The Best Hold Music in the World           ', 'https://open.spotify.com/embed/episode/6JiPs0GuCNAKzF3tr1eNLX', '2015-07-29', '2022-04-03', 78, 1, 1, 0),
(2630, ' #33 @ISIS           ', 'https://open.spotify.com/embed/episode/0GEMA5WirACsC9t9FOdDUy', '2015-07-19', '2022-04-03', 78, 1, 1, 0),
(2631, ' #32 The Evilest Technology On Earth :-)           ', 'https://open.spotify.com/embed/episode/1rZW5aZDDRn0CkYFigDrl4', '2015-07-12', '2022-04-03', 78, 1, 1, 0),
(2632, ' #31 BONUS: The Reddit Implosion Explainer           ', 'https://open.spotify.com/embed/episode/3Gx2yqV9oR9F0e9CTJAYfy', '2015-07-09', '2022-04-03', 78, 1, 1, 0),
(2633, ' #30 The Man In The FBI Hat           ', 'https://open.spotify.com/embed/episode/6zybTAPySYxyBKwY0ggzIc', '2015-06-28', '2022-04-03', 78, 1, 1, 0),
(2634, ' #29 The Takeover           ', 'https://open.spotify.com/embed/episode/0E5iyWfzPYetZ1HTY2rMtQ', '2015-06-22', '2022-04-03', 78, 1, 1, 0),
(2635, ' #28 Shipped to Timbuktu           ', 'https://open.spotify.com/embed/episode/38gQAdZKZ1TtFNWGwG1bw7', '2015-06-14', '2022-04-03', 78, 1, 1, 0),
(2636, ' #27 The Fever           ', 'https://open.spotify.com/embed/episode/3qBoc9iZ6JYVqIBTlkMga7', '2015-06-01', '2022-04-03', 78, 1, 1, 0),
(2637, ' #26 Craigslist, Horsley&#39;s List           ', 'https://open.spotify.com/embed/episode/7jfNl3JhDZJJAtp2zgZ2EL', '2015-05-23', '2022-04-03', 78, 1, 1, 0),
(2638, ' #25 Favor Atender           ', 'https://open.spotify.com/embed/episode/0Dpu1WgpNmaobQpqRi77Yn', '2015-05-17', '2022-04-03', 78, 1, 1, 0),
(2639, ' #24 Exit &amp; Return, Part II           ', 'https://open.spotify.com/embed/episode/01ugJcZ5cbSdvhrL92WXYW', '2015-05-11', '2022-04-03', 78, 1, 1, 0),
(2640, ' #23 Exit &amp; Return, Part I           ', 'https://open.spotify.com/embed/episode/2tlTdduu6xYuBctPuBqfgV', '2015-05-04', '2022-04-03', 78, 1, 1, 0),
(2641, ' #22 BONUS: The Man Who Refused To Email           ', 'https://open.spotify.com/embed/episode/188lUgH2MGsQIbDPNneE8K', '2015-05-04', '2022-04-03', 78, 1, 1, 0),
(2642, ' #5.5 Jennicam Revisited           ', 'https://open.spotify.com/embed/episode/5qch6pc6tbsPzzt61WSWyO', '2015-04-26', '2022-04-03', 78, 1, 1, 0),
(2643, ' #21 Hack The Police           ', 'https://open.spotify.com/embed/episode/6aIbcLbQ2uGZkrqeLh97z9', '2015-04-19', '2022-04-03', 78, 1, 1, 0),
(2644, ' #20 I Want To Break Free           ', 'https://open.spotify.com/embed/episode/48ve1oB6ac250UVi4lyZw4', '2015-04-12', '2022-04-03', 78, 1, 1, 0),
(2645, ' #19 Underdog           ', 'https://open.spotify.com/embed/episode/1hWTJPQGGyDgyZTh10Y31T', '2015-04-03', '2022-04-03', 78, 1, 1, 0),
(2646, ' #18 Silence And Respect           ', 'https://open.spotify.com/embed/episode/0A6JZqMLAA6Kf8mDQXFVrr', '2015-03-28', '2022-04-03', 78, 1, 1, 0),
(2647, ' #17 The Time Traveler And The Hitman           ', 'https://open.spotify.com/embed/episode/5Y4HtNvPIvA1PAZAqWY4XU', '2015-03-21', '2022-04-03', 78, 1, 1, 0),
(2648, ' #16 Why Is Mason Reese Crying?           ', 'https://open.spotify.com/embed/episode/1BD6pnozwm4Px4Ruuc8vo9', '2015-03-14', '2022-04-03', 78, 1, 1, 0),
(2649, ' #15 I&#39;ve Killed People And I Have Hostages           ', 'https://open.spotify.com/embed/episode/77pF3M0hBUSiBOTG8mkhk2', '2015-02-27', '2022-04-03', 78, 1, 1, 0),
(2650, ' #14 The Art of Making and Fixing Mistakes           ', 'https://open.spotify.com/embed/episode/6CW31emhJkpINN5Jx4KWSz', '2015-02-20', '2022-04-03', 78, 1, 1, 0),
(2651, ' #13 Love is Lies           ', 'https://open.spotify.com/embed/episode/6c5nM5bhQaLreNBFCzARrd', '2015-02-14', '2022-04-03', 78, 1, 1, 0),
(2652, ' #1 - An App Sends A Stranger To Say I Love You (Updated)           ', 'https://open.spotify.com/embed/episode/12M4S3JYkMBLg3CEywhQYT', '2015-02-07', '2022-04-03', 78, 1, 1, 0),
(2653, ' #12 Back End Trouble           ', 'https://open.spotify.com/embed/episode/5Wv4K471f0Q4onNy5QceDl', '2015-01-31', '2022-04-03', 78, 1, 1, 0),
(2654, ' #11 Did Errol Morris&#39; Brother Invent Email?           ', 'https://open.spotify.com/embed/episode/7FGlQEqq9jDic29Ev4DqxR', '2015-01-23', '2022-04-03', 78, 1, 1, 0),
(2655, ' #10 The French Connection           ', 'https://open.spotify.com/embed/episode/1LTK6widU6RzIzLNA580cp', '2015-01-17', '2022-04-03', 78, 1, 1, 0),
(2656, ' #9 The Writing On The Wall           ', 'https://open.spotify.com/embed/episode/0ExFN19sm2rfnKrzC90YnQ', '2015-01-09', '2022-04-03', 78, 1, 1, 0),
(2657, ' #8 Anxiety Box           ', 'https://open.spotify.com/embed/episode/7I319s815yHFSd4e9Gyh3f', '2015-01-08', '2022-04-03', 78, 1, 1, 0),
(2658, ' #7 This Website Is For Sale           ', 'https://open.spotify.com/embed/episode/5QA97j6LJqo7Yzk7TpCGcp', '2014-12-28', '2022-04-03', 78, 1, 1, 0),
(2659, ' #6 This Proves Everything           ', 'https://open.spotify.com/embed/episode/0cTxSqhmASmLLOwcmiDcVp', '2014-12-20', '2022-04-03', 78, 1, 1, 0),
(2660, ' #5 Jennicam           ', 'https://open.spotify.com/embed/episode/1JWJkTaabKbCrjAkNXkeYO', '2014-12-14', '2022-04-03', 78, 1, 1, 0),
(2661, ' #4 Follow The Money           ', 'https://open.spotify.com/embed/episode/3JWeihrlWmXiEbM3eBDaIQ', '2014-12-07', '2022-04-03', 78, 1, 1, 0),
(2662, ' #3 We Know What You Did           ', 'https://open.spotify.com/embed/episode/3YcyFIqJ03VV00BZI0HUkn', '2014-12-03', '2022-04-03', 78, 1, 1, 0),
(2663, ' #1 A Stranger Says I Love You           ', 'https://open.spotify.com/embed/episode/1KHjbpnmNpFmNTczQmTZlR', '2014-11-24', '2022-04-03', 78, 1, 1, 0),
(2664, ' #2 The Secret, Gruesome Internet For Doctors           ', 'https://open.spotify.com/embed/episode/5FpXFvee3PTp8GAjclBt4U', '2014-11-24', '2022-04-03', 78, 1, 1, 0),
(2665, ' Reply All Mic Test           ', '', '2014-11-06', '2022-04-03', 78, 1, 1, 0),
(2848, ' #43 Maura           ', 'https://open.spotify.com/embed/episode/0M6rYBfxT793Jz7XV466eE', '2021-12-16', '2022-04-03', 75, 1, 1, 0),
(3029, 'Caneca de Mamicas 48 - Ciúme não é amor', 'https://nerdcast.jovemnerd.com.br/mamicas_48.mp3', '2022-04-02', '2022-04-03', 81, 3, 1, 0),
(3030, 'NerdCast 823 - Humanos versus Inteligências Artificiais', 'https://nerdcast.jovemnerd.com.br/nerdcast_823_ia.mp3', '2022-04-02', '2022-04-03', 81, 3, 1, 0),
(3031, 'NerdTech 74 - Whatsapp, mIRC, MSN e ICQ querem tc', 'https://nerdcast.jovemnerd.com.br/nerdtech_74.mp3', '2022-04-02', '2022-04-03', 81, 3, 1, 0),
(3032, 'Lá do Bunker 36 - Bruxão pelado e controles peludos', 'https://nerdcast.jovemnerd.com.br/ladobunker_36.mp3', '2022-03-29', '2022-04-03', 81, 3, 1, 0),
(3033, 'Caneca de Mamicas 47 - BBB do Mau', 'https://nerdcast.jovemnerd.com.br/mamicas_47.mp3', '2022-03-26', '2022-04-03', 81, 3, 1, 0),
(3034, 'NerdCast 822 - Qual é a pauta? Stand Up, Frio e Ovo de Chapéu', 'https://nerdcast.jovemnerd.com.br/nerdcast_822_sempauta.mp3', '2022-03-25', '2022-04-03', 81, 3, 1, 0),
(3035, 'Empreendedor 86 - Shop B: dos games ao conhecimento', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_86.mp3', '2022-03-25', '2022-04-03', 81, 3, 1, 0),
(3036, 'Lá do Bunker 35 - Tenho rinite, não quero chorar', 'https://nerdcast.jovemnerd.com.br/ladobunker_35.mp3', '2022-03-21', '2022-04-03', 81, 3, 1, 0),
(3037, 'Caneca de Mamicas 46 - Viajar pra se libertar', 'https://nerdcast.jovemnerd.com.br/mamicas_46.mp3', '2022-03-19', '2022-04-03', 81, 3, 1, 0),
(3038, 'NerdCast 821 - A História da Ucrânia', 'https://nerdcast.jovemnerd.com.br/nerdcast_821_ucrania.mp3', '2022-03-18', '2022-04-03', 81, 3, 1, 0),
(3039, 'Speak English 49 - Frases marcantes do cinema 2', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_49.mp3', '2022-03-18', '2022-04-03', 81, 3, 1, 0),
(3040, 'Papo de Parceiro 08 - Moda do comércio aos pés', 'https://nerdcast.jovemnerd.com.br/marketplace_8.mp3', '2022-03-15', '2022-04-03', 81, 3, 1, 0),
(3041, 'Lá do Bunker 34 - Muita coisa ao mesmo tempo', 'https://nerdcast.jovemnerd.com.br/ladobunker_34.mp3', '2022-03-14', '2022-04-03', 81, 3, 1, 0),
(3042, 'Caneca de Mamicas 45 - Vamos nos permitir!', 'https://nerdcast.jovemnerd.com.br/mamicas_45.mp3', '2022-03-12', '2022-04-03', 81, 3, 1, 0),
(3043, 'NerdCast 820 - The Batman: A vingança nunca é plena, mata a alma e a envenena', 'https://nerdcast.jovemnerd.com.br/nerdcast_820_the_batman.mp3', '2022-03-11', '2022-04-03', 81, 3, 1, 0),
(3044, 'NerdCash 45 - Guerra Econômica', 'https://nerdcast.jovemnerd.com.br/nerdcash_45.mp3', '2022-03-11', '2022-04-03', 81, 3, 1, 0),
(3045, 'Lá do Bunker 33 - É proibido, mas se quiser pode', 'https://nerdcast.jovemnerd.com.br/ladobunker_33.mp3', '2022-03-07', '2022-04-03', 81, 3, 1, 0),
(3046, 'Caneca de Mamicas 44 - Fazer o bem sem ver a quem', 'https://nerdcast.jovemnerd.com.br/mamicas_44.mp3', '2022-03-05', '2022-04-03', 81, 3, 1, 0),
(3047, 'NerdCast 819 - Larica Total: 10 anos da cozinha de guerrilha', 'https://nerdcast.jovemnerd.com.br/nerdcast_819_larica_total.mp3', '2022-03-04', '2022-04-03', 81, 3, 1, 0),
(3048, 'NerdTech 73 - A estranha chegada dos vídeo games ao Brasil', 'https://nerdcast.jovemnerd.com.br/nerdtech_73.mp3', '2022-03-04', '2022-04-03', 81, 3, 1, 0),
(3049, 'Lá do Bunker 32 - Ryu, futuro ex-BBB?', 'https://nerdcast.jovemnerd.com.br/ladobunker_32.mp3', '2022-02-28', '2022-04-03', 81, 3, 1, 0),
(3050, 'Caneca de Mamicas 43 - Tá na hora de lembrar', 'https://nerdcast.jovemnerd.com.br/mamicas_43.mp3', '2022-02-26', '2022-04-03', 81, 3, 1, 0),
(3051, 'NerdCast 818 - Star Trek – Audaciosamente indo aonde ninguém jamais esteve', 'https://nerdcast.jovemnerd.com.br/nerdcast_818_startrek.mp3', '2022-02-25', '2022-04-03', 81, 3, 1, 0),
(3052, 'Empreendedor 85 - Vender, vender, vender!', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_85.mp3', '2022-02-25', '2022-04-03', 81, 3, 1, 0),
(3053, 'Generacast 08 - Não é dieta, é genética', 'https://nerdcast.jovemnerd.com.br/nerdcast_genera_08.mp3', '2022-02-22', '2022-04-03', 81, 3, 1, 0),
(3054, 'Lá do Bunker 31 - Só quem viveu sabe', 'https://nerdcast.jovemnerd.com.br/ladobunker_31.mp3', '2022-02-21', '2022-04-03', 81, 3, 1, 0),
(3055, 'Caneca de Mamicas 42 - Um sono possível', 'https://nerdcast.jovemnerd.com.br/mamicas_42.mp3', '2022-02-19', '2022-04-03', 81, 3, 1, 0),
(3056, 'NerdCast 817 - O Desnecessário Livro de Boba Fett', 'https://nerdcast.jovemnerd.com.br/nerdcast_817_boba_fett.mp3', '2022-02-18', '2022-04-03', 81, 3, 1, 0),
(3057, 'Speak English 48 - Inglês no dia-a-dia', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_48.mp3', '2022-02-18', '2022-04-03', 81, 3, 1, 0),
(3058, 'Papo de Parceiro 07 - A importância da presença nas redes sociais', 'https://nerdcast.jovemnerd.com.br/marketplace_7.mp3', '2022-02-15', '2022-04-03', 81, 3, 1, 0),
(3059, 'Lá do Bunker 30 - Tudo o que vai, volta', 'https://nerdcast.jovemnerd.com.br/ladobunker_30.mp3', '2022-02-14', '2022-04-03', 81, 3, 1, 0),
(3060, 'Caneca de Mamicas 41 - Vai catar coquinho!!!', 'https://nerdcast.jovemnerd.com.br/mamicas_41.mp3', '2022-02-12', '2022-04-03', 81, 3, 1, 0),
(3061, 'NerdCast 816 - A batalha dos Crossovers 10', 'https://nerdcast.jovemnerd.com.br/nerdcast_816_batalha_xovers.mp3', '2022-02-11', '2022-04-03', 81, 3, 1, 0),
(3062, 'NerdCash 44 - De volta para o mercado do futuro', 'https://nerdcast.jovemnerd.com.br/nerdcash_44.mp3', '2022-02-11', '2022-04-03', 81, 3, 1, 0),
(3063, 'Lá do Bunker 29 - Não era sorvete, era feijão', 'https://nerdcast.jovemnerd.com.br/ladobunker_29.mp3', '2022-02-07', '2022-04-03', 81, 3, 1, 0),
(3064, 'Caneca de Mamicas 40 - Em terra de cafézes quem tem jacu é rei', 'https://nerdcast.jovemnerd.com.br/mamicas_40.mp3', '2022-02-05', '2022-04-03', 81, 3, 1, 0),
(3065, 'NerdCast 815 - He-man e os Mestres do Universo ainda têm a força?', 'https://nerdcast.jovemnerd.com.br/nerdcast_815_motu.mp3', '2022-02-04', '2022-04-03', 81, 3, 1, 0),
(3066, 'NerdTech 72 - Os caminhos da carreira de um developer', 'https://nerdcast.jovemnerd.com.br/nerdtech_72.mp3', '2022-02-04', '2022-04-03', 81, 3, 1, 0),
(3067, 'Extra Oferecido por Empréstimo SIM - De picote em picote se chega ao Japão', 'https://nerdcast.jovemnerd.com.br/mamicas_extra_sim.mp3', '2022-01-31', '2022-04-03', 81, 3, 1, 0),
(3068, 'Lá do Bunker 28 - Acho que com certeza', 'https://nerdcast.jovemnerd.com.br/ladobunker_28.mp3', '2022-01-31', '2022-04-03', 81, 3, 1, 0),
(3069, 'Caneca de Mamicas 39 - Eles estão descontrolados!', 'https://nerdcast.jovemnerd.com.br/mamicas_39.mp3', '2022-01-29', '2022-04-03', 81, 3, 1, 0),
(3070, 'NerdCast 814 - Qual é a pauta? Quadrinhos, BBB22 e o refém do #sextou', 'https://nerdcast.jovemnerd.com.br/nerdcast_814_pautaless.mp3', '2022-01-28', '2022-04-03', 81, 3, 1, 0),
(3071, 'Empreendedor 84 - Da biologia ao M&amp;A', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_84.mp3', '2022-01-28', '2022-04-03', 81, 3, 1, 0),
(3072, 'Extra Oferecido por Empréstimo SIM - Reforma, fio terra e a maldita goteira', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_reformas.mp3', '2022-01-25', '2022-04-03', 81, 3, 1, 0),
(3073, 'Lá do Bunker 27 - Com carinho ou com dinheiro', 'https://nerdcast.jovemnerd.com.br/ladobunker_27.mp3', '2022-01-24', '2022-04-03', 81, 3, 1, 0),
(3074, 'Caneca de Mamicas 38 - Lua de mel ou divórcio?', 'https://nerdcast.jovemnerd.com.br/mamicas_38.mp3', '2022-01-22', '2022-04-03', 81, 3, 1, 0),
(3075, 'NerdCast 813 - Trilhas sonoras de uma orquestra de um homem só', 'https://nerdcast.jovemnerd.com.br/nerdcast_813_trilha_sonora.mp3', '2022-01-21', '2022-04-03', 81, 3, 1, 0),
(3076, 'Speak English 47 - Pronuncia que eu te escuto 2', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_47.mp3', '2022-01-21', '2022-04-03', 81, 3, 1, 0),
(3077, 'Papo de Parceiro 06 - Expondo o seu produto digitalmente', 'https://nerdcast.jovemnerd.com.br/marketplace_6.mp3', '2022-01-18', '2022-04-03', 81, 3, 1, 0),
(3078, 'Lá do Bunker 26 - Sem tempo pra sutileza', 'https://nerdcast.jovemnerd.com.br/ladobunker_26.mp3', '2022-01-17', '2022-04-03', 81, 3, 1, 0),
(3079, 'Caneca de Mamicas 37 - Fica, doação e lixo', 'https://nerdcast.jovemnerd.com.br/mamicas_37.mp3', '2022-01-15', '2022-04-03', 81, 3, 1, 0),
(3080, 'NerdCast 812 - Política Internacional 2021', 'https://nerdcast.jovemnerd.com.br/nerdcast_812_politica_internacional.mp3', '2022-01-14', '2022-04-03', 81, 3, 1, 0),
(3081, 'NerdCash 43 - Economia em ano de eleição', 'https://nerdcast.jovemnerd.com.br/nerdcash_43.mp3', '2022-01-14', '2022-04-03', 81, 3, 1, 0),
(3082, 'Lá do Bunker 25 - Vem aí o metaverso', 'https://nerdcast.jovemnerd.com.br/ladobunker_25.mp3', '2022-01-10', '2022-04-03', 81, 3, 1, 0),
(3083, 'Caneca de Mamicas 36 - A mente consumista é oficina do entulho', 'https://nerdcast.jovemnerd.com.br/mamicas_36.mp3', '2022-01-08', '2022-04-03', 81, 3, 1, 0),
(3084, 'NerdCast 811 - Matrix 4: Ressuscitou ou morreu de vez?', 'https://nerdcast.jovemnerd.com.br/nerdcast_811_matrix.mp3', '2022-01-07', '2022-04-03', 81, 3, 1, 0),
(3085, 'NerdTech 71 - Tendências Tecnológicas em 2022', 'https://nerdcast.jovemnerd.com.br/nerdtech_71.mp3', '2022-01-07', '2022-04-03', 81, 3, 1, 0);
INSERT INTO `episode` (`id`, `title`, `url`, `date_publish`, `date_added`, `id_podcast`, `id_publisher`, `id_user`, `status`) VALUES
(3086, 'Lá do Bunker 24 - O início de um sonho', 'https://nerdcast.jovemnerd.com.br/ladobunker_24.mp3', '2022-01-03', '2022-04-03', 81, 3, 1, 0),
(3087, 'Caneca de Mamicas 35 - Oh Meu Deux, que delícia de Jefferson Schroeder', 'https://nerdcast.jovemnerd.com.br/mamicas_35.mp3', '2022-01-01', '2022-04-03', 81, 3, 1, 0),
(3088, 'NerdCast 810 - Gavião Arqueiro: Natal fora do ninho', 'https://nerdcast.jovemnerd.com.br/nerdcast_810_hawkeye.mp3', '2021-12-31', '2022-04-03', 81, 3, 1, 0),
(3089, 'Empreendedor 83 - Por que empresas compram outras?', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_83.mp3', '2021-12-31', '2022-04-03', 81, 3, 1, 0),
(3090, 'Lá do Bunker 23 - É pro meu TCC', 'https://nerdcast.jovemnerd.com.br/ladobunker_23.mp3', '2021-12-27', '2022-04-03', 81, 3, 1, 0),
(3091, 'Caneca de Mamicas 34 - Então é Nataaal…', 'https://nerdcast.jovemnerd.com.br/mamicas_34.mp3', '2021-12-25', '2022-04-03', 81, 3, 1, 0),
(3092, 'NerdCast 809 - Homem-Aranha: Me leva pra casa!', 'https://nerdcast.jovemnerd.com.br/nerdcast_809_miranha.mp3', '2021-12-24', '2022-04-03', 81, 3, 1, 0),
(3093, 'Papo de Parceiro 05 - Liquidação Fantástica: A tradição que vende muito', 'https://nerdcast.jovemnerd.com.br/marketplace_5.mp3', '2021-12-21', '2022-04-03', 81, 3, 1, 0),
(3094, 'Lá do Bunker 22 - Esse aqui é sem spoiler', 'https://nerdcast.jovemnerd.com.br/ladobunker_22.mp3', '2021-12-20', '2022-04-03', 81, 3, 1, 0),
(3095, 'Caneca de Mamicas 33 - Meu trabalho, minha vida', 'https://nerdcast.jovemnerd.com.br/mamicas_33.mp3', '2021-12-18', '2022-04-03', 81, 3, 1, 0),
(3096, 'NerdCast 808 - Profissão: Indie Game Dev', 'https://nerdcast.jovemnerd.com.br/nerdcast_808_indie_game_dev.mp3', '2021-12-17', '2022-04-03', 81, 3, 1, 0),
(3097, 'Speak English 46 - Inglês traduzido ao pé da letra', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_46.mp3', '2021-12-17', '2022-04-03', 81, 3, 1, 0),
(3098, 'Lá do Bunker 21 - Muito bom, nota zero', 'https://nerdcast.jovemnerd.com.br/ladobunker_21.mp3', '2021-12-13', '2022-04-03', 81, 3, 1, 0),
(3099, 'Caneca de Mamicas 32 - O melhor padrão é ser feliz', 'https://nerdcast.jovemnerd.com.br/mamicas_32.mp3', '2021-12-11', '2022-04-03', 81, 3, 1, 0),
(3100, 'NerdCast 807 - David Bowie: As múltiplas faces de um artista único', 'https://nerdcast.jovemnerd.com.br/nerdcast_807_bowie.mp3', '2021-12-10', '2022-04-03', 81, 3, 1, 0),
(3101, 'NerdCash 42 - A economia em 2021', 'https://nerdcast.jovemnerd.com.br/nerdcash_42.mp3', '2021-12-10', '2022-04-03', 81, 3, 1, 0),
(3102, 'Lá do Bunker Oferecido por Fanta - Extra: CCXP Worlds 2021', 'https://nerdcast.jovemnerd.com.br/ladobunker_extra_ccxp21.mp3', '2021-12-09', '2022-04-03', 81, 3, 1, 0),
(3103, 'Extra Oferecido por Fanta - CCXP: Bastidores, Perrengues e o Penetra', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_ccxp.mp3', '2021-12-07', '2022-04-03', 81, 3, 1, 0),
(3104, 'Lá do Bunker 20 - Câmera lenta é amor', 'https://nerdcast.jovemnerd.com.br/ladobunker_20.mp3', '2021-12-06', '2022-04-03', 81, 3, 1, 0),
(3105, 'Caneca de Mamicas 31 - Botox Party', 'https://nerdcast.jovemnerd.com.br/mamicas_31.mp3', '2021-12-04', '2022-04-03', 81, 3, 1, 0),
(3106, 'NerdCast 806 - Fundação: Bom dia, boa tarde e boa noite', 'https://nerdcast.jovemnerd.com.br/nerdcast_806_fundacao.mp3', '2021-12-03', '2022-04-03', 81, 3, 1, 0),
(3107, 'NerdTech 70 - Desdobrando o Metaverso', 'https://nerdcast.jovemnerd.com.br/nerdtech_70.mp3', '2021-12-03', '2022-04-03', 81, 3, 1, 0),
(3108, 'Papo de Parceiro 04 - A logística e a correria da Black Friday', 'https://nerdcast.jovemnerd.com.br/marketplace_4.mp3', '2021-11-30', '2022-04-03', 81, 3, 1, 0),
(3109, 'Lá do Bunker 19 - Necessário, cirúrgico, preciso', 'https://nerdcast.jovemnerd.com.br/ladobunker_19.mp3', '2021-11-29', '2022-04-03', 81, 3, 1, 0),
(3110, 'Caneca de Mamicas 30 - Credo de novela que limite delícia', 'https://nerdcast.jovemnerd.com.br/mamicas_30.mp3', '2021-11-27', '2022-04-03', 81, 3, 1, 0),
(3111, 'NerdCast 805 - Magias do RPG: Da bola de fogo à aposentadoria', 'https://nerdcast.jovemnerd.com.br/nerdcast_805_magias_rpg.mp3', '2021-11-26', '2022-04-03', 81, 3, 1, 0),
(3112, 'Empreendedor 82 - A história da Alura', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_82.mp3', '2021-11-26', '2022-04-03', 81, 3, 1, 0),
(3113, 'Lá do Bunker 18 - Discorde aí de longe', 'https://nerdcast.jovemnerd.com.br/ladobunker_18.mp3', '2021-11-25', '2022-04-03', 81, 3, 1, 0),
(3114, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato III: Por que lutamos', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_3.mp3', '2021-11-23', '2022-04-03', 81, 3, 1, 0),
(3115, 'Lá do Bunker 17 - Não é defeito, é efeito', 'https://nerdcast.jovemnerd.com.br/ladobunker_17.mp3', '2021-11-22', '2022-04-03', 81, 3, 1, 0),
(3116, 'Caneca de Mamicas 29 - Vale a pena cantar de novo', 'https://nerdcast.jovemnerd.com.br/mamicas_29.mp3', '2021-11-20', '2022-04-03', 81, 3, 1, 0),
(3117, 'NerdCast 804 - Eternos e Shang-Chi: Imortais são babacas!', 'https://nerdcast.jovemnerd.com.br/nerdcast_804_eternos_shang_chi.mp3', '2021-11-19', '2022-04-03', 81, 3, 1, 0),
(3118, 'Speak English 45 - Frases Marcantes de Filmes e Séries em 2021', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_45.mp3', '2021-11-19', '2022-04-03', 81, 3, 1, 0),
(3119, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato II: Largados e Shippados', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_2.mp3', '2021-11-16', '2022-04-03', 81, 3, 1, 0),
(3120, 'Lá do Bunker 16 - Homem-Aranha: emo ou gótico suave?', 'https://nerdcast.jovemnerd.com.br/ladobunker_16.mp3', '2021-11-15', '2022-04-03', 81, 3, 1, 0),
(3121, 'Caneca de Mamicas 28 - Use a lupa e encontre o limite', 'https://nerdcast.jovemnerd.com.br/mamicas_28.mp3', '2021-11-13', '2022-04-03', 81, 3, 1, 0),
(3122, 'NerdCast 803 - Em Duna o choro não é livre', 'https://nerdcast.jovemnerd.com.br/nerdcast_803_duna.mp3', '2021-11-12', '2022-04-03', 81, 3, 1, 0),
(3123, 'NerdCash 41 - Câmbio Bipolar', 'https://nerdcast.jovemnerd.com.br/nerdcash_41.mp3', '2021-11-12', '2022-04-03', 81, 3, 1, 0),
(3124, 'Extra Oferecido por Arcane: League of Legends - Arcane – Ato I: Ciência e Magia', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_arcane_1.mp3', '2021-11-09', '2022-04-03', 81, 3, 1, 0),
(3125, 'Lá do Bunker 15 - Questionando a vida real', 'https://nerdcast.jovemnerd.com.br/ladobunker_15.mp3', '2021-11-08', '2022-04-03', 81, 3, 1, 0),
(3126, 'Caneca de Mamicas 27 - Mais vale um padre no porão do que dois capirotos voando', 'https://nerdcast.jovemnerd.com.br/mamicas_27.mp3', '2021-11-06', '2022-04-03', 81, 3, 1, 0),
(3127, 'NerdCast 802 - Round 6: Não sabe brincar vai morrer no play', 'https://nerdcast.jovemnerd.com.br/nerdcast_802_round_6.mp3', '2021-11-05', '2022-04-03', 81, 3, 1, 0),
(3128, 'NerdTech 69 - O tropeço na tomada das redes sociais', 'https://nerdcast.jovemnerd.com.br/nerdtech_69.mp3', '2021-11-05', '2022-04-03', 81, 3, 1, 0),
(3129, 'Lá do Bunker 14 - Paladino estonteante e sensual', 'https://nerdcast.jovemnerd.com.br/ladobunker_14.mp3', '2021-11-01', '2022-04-03', 81, 3, 1, 0),
(3130, 'Caneca de Mamicas 26 - Antes só do que mal assombrado', 'https://nerdcast.jovemnerd.com.br/mamicas_26.mp3', '2021-10-30', '2022-04-03', 81, 3, 1, 0),
(3131, 'NerdCast 801 - Pelados e apavorados', 'https://nerdcast.jovemnerd.com.br/nerdcast_801_pelados_e_apavorados.mp3', '2021-10-29', '2022-04-03', 81, 3, 1, 0),
(3132, 'Empreendedor 81 - Plataformas digitais e na vida real', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_81.mp3', '2021-10-29', '2022-04-03', 81, 3, 1, 0),
(3133, 'Extra Oferecido por Avanade - O consultor, o chupa-cabra e o fantasma do Hi-Tech', 'https://nerdcast.jovemnerd.com.br/nerdcast_extra_avanade.mp3', '2021-10-26', '2022-04-03', 81, 3, 1, 0),
(3134, 'Lá do Bunker 13 - O trem do hype', 'https://nerdcast.jovemnerd.com.br/ladobunker_13.mp3', '2021-10-25', '2022-04-03', 81, 3, 1, 0),
(3135, 'Caneca de Mamicas 25 - Cacete de trampo', 'https://nerdcast.jovemnerd.com.br/mamicas_25.mp3', '2021-10-23', '2022-04-03', 81, 3, 1, 0),
(3136, 'NerdCast 800 - O Melhor de 800 Nerdcasts!', 'https://nerdcast.jovemnerd.com.br/nerdcast_800_melhores800.mp3', '2021-10-22', '2022-04-03', 81, 3, 1, 0),
(3137, 'Papo de Parceiro 03 - Usando “soft skills” na arte das vendas', 'https://nerdcast.jovemnerd.com.br/marketplace_03.mp3', '2021-10-19', '2022-04-03', 81, 3, 1, 0),
(3138, 'Lá do Bunker 12 - Cenas dos próximos capítulos', 'https://nerdcast.jovemnerd.com.br/ladobunker_12.mp3', '2021-10-18', '2022-04-03', 81, 3, 1, 0),
(3139, 'Caneca de Mamicas 24 - Você trampa como eu trampo?', 'https://nerdcast.jovemnerd.com.br/mamicas_24.mp3', '2021-10-16', '2022-04-03', 81, 3, 1, 0),
(3140, 'NerdCast 799 - What If…? E se a Marvel fosse ousada?', 'https://nerdcast.jovemnerd.com.br/nerdcast_799_what_if_e_se_a_marvel_fosse_ousada.mp3', '2021-10-15', '2022-04-03', 81, 3, 1, 0),
(3141, 'Speak English 44 - O Halloween da vida real', 'https://nerdcast.jovemnerd.com.br/nerdcast_speak_english_44.mp3', '2021-10-15', '2022-04-03', 81, 3, 1, 0),
(3142, 'Lá do Bunker 11 - Saudade da minha ex', 'https://nerdcast.jovemnerd.com.br/ladobunker_11.mp3', '2021-10-11', '2022-04-03', 81, 3, 1, 0),
(3143, 'Caneca de Mamicas 23 - O Super Favorito', 'https://nerdcast.jovemnerd.com.br/mamicas_23.mp3', '2021-10-09', '2022-04-03', 81, 3, 1, 0),
(3144, 'NerdCast 798 - Perrengues da hora do almoço', 'https://nerdcast.jovemnerd.com.br/nerdcast_798_perrengues_da_hora_do_almoco.mp3', '2021-10-08', '2022-04-03', 81, 3, 1, 0),
(3145, 'NerdCash 40 - Evergrande: Minha casa, minha crise', 'https://nerdcast.jovemnerd.com.br/nerdcash_40.mp3', '2021-10-08', '2022-04-03', 81, 3, 1, 0),
(3146, 'Lá do Bunker 10 - Olimpíadas do Faustão Mortais', 'https://nerdcast.jovemnerd.com.br/ladobunker_10.mp3', '2021-10-04', '2022-04-03', 81, 3, 1, 0),
(3147, 'Caneca de Mamicas 22 - A Favorita', 'https://nerdcast.jovemnerd.com.br/mamicas_22.mp3', '2021-10-02', '2022-04-03', 81, 3, 1, 0),
(3148, 'NerdCast 797 - Nós vemos a realidade como ela realmente é?', 'https://nerdcast.jovemnerd.com.br/nerdcast_797_percepcao_da_realidade.mp3', '2021-10-01', '2022-04-03', 81, 3, 1, 0),
(3149, 'NerdTech 68 - O browser comeu o meu sistema operacional?', 'https://nerdcast.jovemnerd.com.br/nerdtech_68.mp3', '2021-10-01', '2022-04-03', 81, 3, 1, 0),
(3150, 'Lá do Bunker 09 - O amor sufoca', 'https://nerdcast.jovemnerd.com.br/ladobunker_09.mp3', '2021-09-27', '2022-04-03', 81, 3, 1, 0),
(3151, 'Caneca de Mamicas 21 - TRANS-borde gentileza', 'https://nerdcast.jovemnerd.com.br/mamicas_21.mp3', '2021-09-25', '2022-04-03', 81, 3, 1, 0),
(3152, 'NerdCast 796 - A internet que amamos odiar', 'https://nerdcast.jovemnerd.com.br/nerdcast_796_a_internet_que_amamos_odiar.mp3', '2021-09-24', '2022-04-03', 81, 3, 1, 0),
(3153, 'Empreendedor 80 - E-Sports como negócio', 'https://nerdcast.jovemnerd.com.br/nerdcast_empreendedor_80.mp3', '2021-09-24', '2022-04-03', 81, 3, 1, 0),
(3154, 'Papo de Parceiro 02 - Amour pelo o que faz só ajuda a vender mais', 'https://nerdcast.jovemnerd.com.br/marketplace_02.mp3', '2021-09-21', '2022-04-03', 81, 3, 1, 0),
(3155, 'Lá do Bunker 08 - Fofoca: gostoso demais', 'https://nerdcast.jovemnerd.com.br/ladobunker_08.mp3', '2021-09-20', '2022-04-03', 81, 3, 1, 0),
(3156, 'Caneca de Mamicas 20 - O Amor TRANS-forma', 'https://nerdcast.jovemnerd.com.br/mamicas_20.mp3', '2021-09-18', '2022-04-03', 81, 3, 1, 0),
(3158, 'NerdCast 795 - O The Esquadrão Suicida: Pimenta no Starro dos outros é nam nam', 'https://nerdcast.jovemnerd.com.br/nerdcast_795_esquadrao_suicida_2.mp3', '2021-09-17', '2022-04-03', 81, 3, 1, 0),
(3669, ' Ukrainian War: Fighting Russia&#39;s Propaganda Machine           ', 'https://open.spotify.com/embed/episode/1IXByZV4UggfyrfZLt3wcT', '2022-03-29', '2022-04-03', 84, 1, 1, 0),
(3670, ' Ancient Aliens: Who Really Built the Pyramids?           ', 'https://open.spotify.com/embed/episode/1fA7YzfQuxHgfIpg9EG4kd', '2022-03-24', '2022-04-03', 84, 1, 1, 0),
(3671, ' Trans Kids: The Misinformation Battle           ', 'https://open.spotify.com/embed/episode/39ihgJ7vFNiWPdhVOTVwve', '2022-03-17', '2022-04-03', 84, 1, 1, 0),
(3672, ' Here’s What’s Coming Up!           ', 'https://open.spotify.com/embed/episode/0nP2SlufZITXavd66GPY2P', '2022-03-11', '2022-04-03', 84, 1, 1, 0),
(3673, ' Misinformation: What Should Our Tech Overlords Do?           ', 'https://open.spotify.com/embed/episode/3xVkwVybXm2MwbsO923oUd', '2022-02-24', '2022-04-03', 84, 1, 1, 0),
(3674, ' Joe Rogan: The Malone Interview           ', 'https://open.spotify.com/embed/episode/6U44O0GjgcYNanIMtkO63s', '2022-02-04', '2022-04-03', 84, 1, 1, 0),
(3675, ' The Moon: Why Are We Really Going Back?           ', 'https://open.spotify.com/embed/episode/28IoEbDjiNIqYxH07d47z6', '2021-12-09', '2022-04-03', 84, 1, 1, 0),
(3676, ' Fauci on How This Ends           ', 'https://open.spotify.com/embed/episode/0WVrNX8fI8ARD5mUgQXfgF', '2021-12-03', '2022-04-03', 84, 1, 1, 0),
(3677, ' Omicron: Do You Need to Freak Out?           ', 'https://open.spotify.com/embed/episode/7CgPsnN9rP0OgP9h003sbB', '2021-12-02', '2022-04-03', 84, 1, 1, 0),
(3678, ' Presenting Gastropod: How Chilis Conquered the World           ', 'https://open.spotify.com/embed/episode/59TaUaf5wtv2ulps7xRMge', '2021-11-25', '2022-04-03', 84, 1, 1, 0),
(3679, ' Jurassic Park: Hold On to Your Butts           ', 'https://open.spotify.com/embed/episode/3loEVamJf3DybIMKMpsCJ0', '2021-11-18', '2022-04-03', 84, 1, 1, 0),
(3680, ' Killer Asteroids: NASA Strikes Back           ', 'https://open.spotify.com/embed/episode/5SjC5KNZyEURUTrxvOx7RZ', '2021-11-11', '2022-04-03', 84, 1, 1, 0),
(3681, ' Monkey Say What? LEOPARD!!           ', 'https://open.spotify.com/embed/episode/5ChnUOus6HUdiv0s5n3pAV', '2021-11-04', '2022-04-03', 84, 1, 1, 0),
(3682, ' Chronic Pain: Can Our Brains Fix It?           ', 'https://open.spotify.com/embed/episode/1egw1snBfkeACYwOFsEjeN', '2021-10-28', '2022-04-03', 84, 1, 1, 0),
(3683, ' The Legendary Condom Queen           ', 'https://open.spotify.com/embed/episode/4Ih8Gvj7K4L3PS1RL4sf9Y', '2021-10-21', '2022-04-03', 84, 1, 1, 0),
(3684, ' Burnout: Can We Fix Work?           ', 'https://open.spotify.com/embed/episode/4REnE7JSIVAOF4xeg3EClX', '2021-10-14', '2022-04-03', 84, 1, 1, 0),
(3685, ' Blue Balls: You&#39;re Wrong About Them           ', 'https://open.spotify.com/embed/episode/3xZymMW7C2nKs6rvhxlPXt', '2021-10-07', '2022-04-03', 84, 1, 1, 0),
(3686, ' True Love: Is Monogamy Unnatural?           ', 'https://open.spotify.com/embed/episode/1gm9BvCWsHhXN2erbvNXiv', '2021-09-30', '2022-04-03', 84, 1, 1, 0),
(3687, ' The Secret World of Plants           ', 'https://open.spotify.com/embed/episode/3S3YjKBZl9vrxMbrbcQKlK', '2021-09-28', '2022-04-03', 84, 1, 1, 0),
(3688, ' Childbirth: Are Doctors Messing It Up?           ', 'https://open.spotify.com/embed/episode/6r79SufNYtupBQtz8GEk9Q', '2021-09-23', '2022-04-03', 84, 1, 1, 0),
(3689, ' Weight: Is Fat Unhealthy?           ', 'https://open.spotify.com/embed/episode/771Gz9oycoeqSYtOVopRqp', '2021-09-16', '2022-04-03', 84, 1, 1, 0),
(3690, ' Therapy: Does It Work?           ', 'https://open.spotify.com/embed/episode/3TWNjy89c166IHaUlrjrEa', '2021-09-09', '2022-04-03', 84, 1, 1, 0),
(3691, ' Let’s Do Science Again!!           ', 'https://open.spotify.com/embed/episode/02V6MStz3ik04JHeDsj0CY', '2021-09-02', '2022-04-03', 84, 1, 1, 0),
(3692, ' Presenting Not Past It: The Vax That Got Axed           ', 'https://open.spotify.com/embed/episode/47SxevKtkviJMqLtNzb1od', '2021-08-19', '2022-04-03', 84, 1, 1, 0),
(3693, ' The Delta Variant: How Bad Is It?           ', 'https://open.spotify.com/embed/episode/25K1YVbuFdf4JuZh2396yW', '2021-08-10', '2022-04-03', 84, 1, 1, 0),
(3694, ' Pet Food: How Fancy Should They Feast?           ', 'https://open.spotify.com/embed/episode/4USKQd8v1jDaP0viwW3CS9', '2021-05-27', '2022-04-03', 84, 1, 1, 0),
(3695, ' The G Spot: Come Again?           ', 'https://open.spotify.com/embed/episode/0oMBOjHnimQEDPKnwglQjy', '2021-05-20', '2022-04-03', 84, 1, 1, 0),
(3696, ' Back From the Dead           ', 'https://open.spotify.com/embed/episode/6qH81KOnq22ifB4zzcCkO3', '2021-05-13', '2022-04-03', 84, 1, 1, 0),
(3697, ' A Seedy, Late-Night Adventure           ', 'https://open.spotify.com/embed/episode/7kSyx6saamNRONP1d3EJLZ', '2021-05-06', '2022-04-03', 84, 1, 1, 0),
(3698, ' Screens: Are They Ruining Our Brains and Mental Health and Eyes and           ', 'https://open.spotify.com/embed/episode/1z5qLMOMTDvdDEICAVAaTS', '2021-04-29', '2022-04-03', 84, 1, 1, 0),
(3699, ' Havana Syndrome: Did a Secret Weapon Fry Diplomats&#39; Brains?           ', 'https://open.spotify.com/embed/episode/1fWVwFPU3cUka8lfaSKU2V', '2021-04-22', '2022-04-03', 84, 1, 1, 0),
(3700, ' How Science Created Morons           ', 'https://open.spotify.com/embed/episode/6NIbsn2SW2qNFAgXnbP0Jm', '2021-04-08', '2022-04-03', 84, 1, 1, 0),
(3701, ' Coronavirus: How Scary Are the Variants?           ', 'https://open.spotify.com/embed/episode/1g3FloLMSxIgFtsLKSTqVZ', '2021-04-01', '2022-04-03', 84, 1, 1, 0),
(3702, ' Snake Bite Cures: Weasels, Pigeons, Pee           ', 'https://open.spotify.com/embed/episode/4qZxBv5WF90maNQsMbeNg5', '2021-03-30', '2022-04-03', 84, 1, 1, 0),
(3703, ' SNAKES!!!           ', 'https://open.spotify.com/embed/episode/6RjWdXmb2891AgByx7YDbt', '2021-03-25', '2022-04-03', 84, 1, 1, 0),
(3704, ' UFOs: Through the Wormhole Again           ', 'https://open.spotify.com/embed/episode/60oChXf4TK7dN4NZslVUpx', '2021-03-18', '2022-04-03', 84, 1, 1, 0),
(3705, ' Brood X: A Drug-fueled Cicada Orgy           ', 'https://open.spotify.com/embed/episode/4bH8se9ar9Fytb2e3EhvjC', '2021-03-11', '2022-04-03', 84, 1, 1, 0),
(3706, ' Immune Boosting: Is It a Bust?           ', 'https://open.spotify.com/embed/episode/1UhKdqAcdqxKT20141HmTy', '2021-03-04', '2022-04-03', 84, 1, 1, 0),
(3707, ' Bringing the Science Back, Baby!           ', 'https://open.spotify.com/embed/episode/35kKzGEetkjhZypQAWNi6M', '2021-02-25', '2022-04-03', 84, 1, 1, 0),
(3708, ' Butterflies Are Secret Monsters           ', 'https://open.spotify.com/embed/episode/1We7ArfCMOxdZYPO2vMATw', '2021-01-28', '2022-04-03', 84, 1, 1, 0),
(3709, ' Presenting Coronavirus: Fact Vs. Fiction           ', 'https://open.spotify.com/embed/episode/7y1VJXt8ZQf6zCp6BMHFZ4', '2021-01-21', '2022-04-03', 84, 1, 1, 0),
(3710, ' Magic Mushrooms: Trip Through the Science           ', 'https://open.spotify.com/embed/episode/7lGQvffIR7yrrfT8mU1J3a', '2020-12-10', '2022-04-03', 84, 1, 1, 0),
(3711, ' Coronavirus: More Scared or Less Scared?           ', 'https://open.spotify.com/embed/episode/3CRgQkAfUDcuiWoMN5LoZV', '2020-12-07', '2022-04-03', 84, 1, 1, 0),
(3712, ' Coronavirus: Shots! Shots! Shots!           ', 'https://open.spotify.com/embed/episode/5cO2zn48DjhR25dKASkxGp', '2020-12-03', '2022-04-03', 84, 1, 1, 0),
(3713, ' Did the CIA do it? Part II           ', 'https://open.spotify.com/embed/episode/3V1WtCmgO7GTzefxOVs8iq', '2020-11-19', '2022-04-03', 84, 1, 1, 0),
(3714, ' Did the CIA Plant a Virus in Cuba?           ', 'https://open.spotify.com/embed/episode/3intCxZQkrDI1hur9yvAag', '2020-11-12', '2022-04-03', 84, 1, 1, 0),
(3715, ' Platypuses Get a Glow Up           ', 'https://open.spotify.com/embed/episode/6llmiTXprUUKHgCl05V972', '2020-11-05', '2022-04-03', 84, 1, 1, 0),
(3716, ' Reparations: How Could It Work?           ', 'https://open.spotify.com/embed/episode/1g76zRDULFImEcekyiAtNX', '2020-10-30', '2022-04-03', 84, 1, 1, 0),
(3717, ' Supervolcanoes: Is Yellowstone Gonna Blow?           ', 'https://open.spotify.com/embed/episode/5PM3MgA6OLE7Bc7bapSOvG', '2020-10-22', '2022-04-03', 84, 1, 1, 0),
(3718, ' Science Vs Presents: How to Save a Planet           ', 'https://open.spotify.com/embed/episode/2QrcHVooGpOYeXgEwegebr', '2020-10-15', '2022-04-03', 84, 1, 1, 0),
(3719, ' Lab-Grown Meat: We Grill It           ', 'https://open.spotify.com/embed/episode/2l2L7L9zgP9fEEc5NqWkKy', '2020-10-08', '2022-04-03', 84, 1, 1, 0),
(3720, ' Hunting an Invisible Killer           ', 'https://open.spotify.com/embed/episode/1hBU6fFhfJBuv9OP9rfTFY', '2020-10-01', '2022-04-03', 84, 1, 1, 0),
(3721, ' Orgasms: Come for the Science           ', 'https://open.spotify.com/embed/episode/4flH2xKicjz4i0d3inSV7h', '2020-09-24', '2022-04-03', 84, 1, 1, 0),
(3722, ' SHARKS!!! Sink Your Teeth in Again           ', 'https://open.spotify.com/embed/episode/0stWXLWXNHU6kRxdeH5uKX', '2020-09-10', '2022-04-03', 84, 1, 1, 0),
(3723, ' Astrology: Are Geminis the Worst?           ', 'https://open.spotify.com/embed/episode/4L35pil7kqqvZeOOeFRRPR', '2020-09-03', '2022-04-03', 84, 1, 1, 0),
(3724, ' Mini Mask Update           ', 'https://open.spotify.com/embed/episode/73A4XaiM8rxvyI3r8eSz8y', '2020-09-01', '2022-04-03', 84, 1, 1, 0),
(3725, ' Probiotics: Scam or Superfood?           ', 'https://open.spotify.com/embed/episode/2I5C0yaOXZJlR1XTn9m5HL', '2020-08-27', '2022-04-03', 84, 1, 1, 0),
(3726, ' New Season! Time for Non-Coronavirus Content           ', 'https://open.spotify.com/embed/episode/4fgWrF1cGJni7sed89zjNB', '2020-08-20', '2022-04-03', 84, 1, 1, 0),
(3727, ' Coronavirus: Are We Back Where We Started?           ', 'https://open.spotify.com/embed/episode/0vvmw1YiAC8ZjtBr2BPLqj', '2020-07-02', '2022-04-03', 84, 1, 1, 0),
(3728, ' Fauci! He’s Back!           ', 'https://open.spotify.com/embed/episode/5B8Y7JZXv73733whWfdKoE', '2020-06-23', '2022-04-03', 84, 1, 1, 0),
(3729, ' Coronavirus: Dude, Where&#39;s My Vaccine?           ', 'https://open.spotify.com/embed/episode/4FIgeuRNvpHP8Sa1wUdsOd', '2020-06-19', '2022-04-03', 84, 1, 1, 0),
(3730, ' Coronavirus: Weirdest Virus Ever?           ', 'https://open.spotify.com/embed/episode/3m9TclOFz8FCSvLNgv0RLA', '2020-06-11', '2022-04-03', 84, 1, 1, 0),
(3731, ' Coronavirus: Protesting in a Pandemic           ', 'https://open.spotify.com/embed/episode/7ruB5Xxy3oxi1t3mhncqoe', '2020-06-09', '2022-04-03', 84, 1, 1, 0),
(3732, ' Coronavirus: Labs Go Dark           ', 'https://open.spotify.com/embed/episode/4zZKTgodGHDkzAGfLCjyzr', '2020-05-29', '2022-04-03', 84, 1, 1, 0),
(3733, ' Coronavirus: Sweden Goes Rogue           ', 'https://open.spotify.com/embed/episode/24MBZY1DpPy7xWOKYaRgkL', '2020-05-22', '2022-04-03', 84, 1, 1, 0),
(3734, ' Coronavirus: The Mask Wars           ', 'https://open.spotify.com/embed/episode/4bBPTcsGkuLCGlDHtA5moE', '2020-05-14', '2022-04-03', 84, 1, 1, 0),
(3735, ' Coronavirus: Pregnant in a Pandemic           ', 'https://open.spotify.com/embed/episode/5ubIiOVeUKN5jTNIlymX3x', '2020-05-08', '2022-04-03', 84, 1, 1, 0),
(3736, ' Coronavirus: How Many Silent Spreaders Are There?           ', 'https://open.spotify.com/embed/episode/43F6zu5wpEys4ek9I7rexU', '2020-05-01', '2022-04-03', 84, 1, 1, 0),
(3737, ' Coronavirus: Was It Made In a Lab?           ', 'https://open.spotify.com/embed/episode/2l2tEwGYRiWEbrpLoJ7FbH', '2020-04-24', '2022-04-03', 84, 1, 1, 0),
(3738, ' Working Out From Home — in 7 Minutes? [Rebroadcast]           ', 'https://open.spotify.com/embed/episode/0RCHzwS8zzBkc57C9RzmqG', '2020-04-20', '2022-04-03', 84, 1, 1, 0),
(3739, ' Coronavirus: Can You Get It Twice?           ', 'https://open.spotify.com/embed/episode/0bBKqIsHxryJPwWjDF0xZk', '2020-04-17', '2022-04-03', 84, 1, 1, 0),
(3740, ' Coronavirus: When Will It End?           ', 'https://open.spotify.com/embed/episode/6GwDiX8Ao9aKlCLv8Mo89a', '2020-04-09', '2022-04-03', 84, 1, 1, 0),
(3741, ' Coronavirus: Should I Disinfect EVERYTHING?           ', 'https://open.spotify.com/embed/episode/3wZXPC2c2e9I4RUj0Heuhb', '2020-04-07', '2022-04-03', 84, 1, 1, 0),
(3742, ' Coronavirus: Is It Airborne?           ', 'https://open.spotify.com/embed/episode/0PlDQdDF8D4OzaTnLYkzZG', '2020-04-03', '2022-04-03', 84, 1, 1, 0),
(3743, ' Coronavirus: Are Young People Safe?           ', 'https://open.spotify.com/embed/episode/2l0q7ixoShfQeJaEqMFpal', '2020-03-31', '2022-04-03', 84, 1, 1, 0),
(3744, ' Coronavirus: Will Chloroquine Save Us?           ', 'https://open.spotify.com/embed/episode/0lrTXewgtGwFre6QYYzMWO', '2020-03-26', '2022-04-03', 84, 1, 1, 0),
(3745, ' Coronavirus: Unmasking the Facts and Ibuprofen Scares           ', 'https://open.spotify.com/embed/episode/7CaP0IEFNTXnoBWBdH5xe4', '2020-03-23', '2022-04-03', 84, 1, 1, 0),
(3746, ' Coronavirus: A Story From the Front Lines           ', 'https://open.spotify.com/embed/episode/4CPqOfw6J0VSB7fRlH3HBt', '2020-03-19', '2022-04-03', 84, 1, 1, 0),
(3747, ' Coronavirus: What Should You Do Now?           ', 'https://open.spotify.com/embed/episode/3wcTeLau8znjrjeWmksJjV', '2020-03-16', '2022-04-03', 84, 1, 1, 0),
(3748, ' More Science Vs Coming Right Up           ', 'https://open.spotify.com/embed/episode/1oOmPmtzHT72PwGmQql1ef', '2020-03-12', '2022-04-03', 84, 1, 1, 0),
(3749, ' Coronavirus: Fears and Facts           ', 'https://open.spotify.com/embed/episode/7w98tfnOOcXOFtU5It9Mfz', '2020-03-04', '2022-04-03', 84, 1, 1, 0),
(3750, ' Coronavirus Outbreak: How Scared Should You Be?           ', 'https://open.spotify.com/embed/episode/5bX9huvT9mVpYpQWuzjR8f', '2020-01-30', '2022-04-03', 84, 1, 1, 0),
(3751, ' How to Stop A Killer Asteroid           ', 'https://open.spotify.com/embed/episode/4IIposSiseR71dPDPvJ74K', '2019-12-19', '2022-04-03', 84, 1, 1, 0),
(3752, ' Healthcare: How Do We Fix It?           ', 'https://open.spotify.com/embed/episode/5djlCyK7F3JKJsjzwhnlfU', '2019-12-12', '2022-04-03', 84, 1, 1, 0),
(3753, ' Ants: Tales from the Underground           ', 'https://open.spotify.com/embed/episode/5Lw96WvRwdyFrCH3f3WntJ', '2019-12-05', '2022-04-03', 84, 1, 1, 0),
(3754, ' Police Shootings: The Data and the Damage Done           ', 'https://open.spotify.com/embed/episode/1S3S2p7lrHjtANzRJSvFHe', '2019-11-21', '2022-04-03', 84, 1, 1, 0),
(3755, ' When a Hospital becomes The Butcher Shop           ', 'https://open.spotify.com/embed/episode/3mTk1lZ9x41lqpy0NviaGe', '2019-11-14', '2022-04-03', 84, 1, 1, 0),
(3756, ' Sleep: All Aboard the Snooze Cruise!           ', 'https://open.spotify.com/embed/episode/5Py5B8yyEQrMFbuMomA9uK', '2019-11-07', '2022-04-03', 84, 1, 1, 0),
(3757, ' 5G: Welcome to the Revolution?           ', 'https://open.spotify.com/embed/episode/7oJytSsawVtqQzGniEajf3', '2019-10-31', '2022-04-03', 84, 1, 1, 0),
(3758, ' Vaping: What the Hell is Going On?!           ', 'https://open.spotify.com/embed/episode/1D78VfU9fRsEDKX8JtJIem', '2019-10-24', '2022-04-03', 84, 1, 1, 0),
(3759, ' PANDEMIC!!!           ', 'https://open.spotify.com/embed/episode/1pUZDEEfvrOonvNhSy5mf0', '2019-10-11', '2022-04-03', 84, 1, 1, 0),
(3760, ' Heartbreak: Why does it hurt so bad?           ', 'https://open.spotify.com/embed/episode/6aNjaMp3OlMVU7YhiS6yiJ', '2019-10-03', '2022-04-03', 84, 1, 1, 0),
(3761, ' Football: Should We Cancel It?           ', 'https://open.spotify.com/embed/episode/3iMLOaNVAy0s6RsdecUySj', '2019-09-26', '2022-04-03', 84, 1, 1, 0),
(3762, ' Exercise: Fat Buster or Belly Flop?           ', 'https://open.spotify.com/embed/episode/0cB6mp9Uj8GzJ0pONV9OdU', '2019-09-19', '2022-04-03', 84, 1, 1, 0),
(3763, ' Let&#39;s...science...AGAIN!           ', 'https://open.spotify.com/embed/episode/76gJEWheoh7blMjnCUFweI', '2019-09-12', '2022-04-03', 84, 1, 1, 0),
(3764, ' The Dinosaur Explosion           ', 'https://open.spotify.com/embed/episode/2aDjG1b30sqkh4bZNcUGyU', '2019-08-08', '2022-04-03', 84, 1, 1, 0),
(3765, ' SHARKS!!!           ', 'https://open.spotify.com/embed/episode/63dTAAieJ4LFIPj1XJUp7l', '2019-06-13', '2022-04-03', 84, 1, 1, 0),
(3766, ' How Bad Science Killed A President           ', 'https://open.spotify.com/embed/episode/0LrNjDM18KESHLMwofbflD', '2019-06-06', '2022-04-03', 84, 1, 1, 0),
(3767, ' Peanuts: Public Enemy No. 1?           ', 'https://open.spotify.com/embed/episode/3tReIj2u5HlICQze1IUGV9', '2019-05-30', '2022-04-03', 84, 1, 1, 0),
(3768, ' The Abortion Underground           ', 'https://open.spotify.com/embed/episode/7cdR9LwUsLsj2PWf7lJEw5', '2019-05-23', '2022-04-03', 84, 1, 1, 0),
(3769, ' Vaccines: Time for a Booster Shot [Rebroadcast]           ', 'https://open.spotify.com/embed/episode/0USQ5MBdsL9vLRrX0DD8mG', '2019-05-02', '2022-04-03', 84, 1, 1, 0),
(3770, ' Fertility Cliff: Is It Real?           ', 'https://open.spotify.com/embed/episode/6ZdswhANCgfLFIVeuPrv1S', '2019-04-25', '2022-04-03', 84, 1, 1, 0),
(3771, ' Race: Can We See It In Our DNA?           ', 'https://open.spotify.com/embed/episode/4pqwn2m8Ke54N1RtIJf1jB', '2019-04-19', '2022-04-03', 84, 1, 1, 0),
(3772, ' DNA Kits: Can You Trust Them?           ', 'https://open.spotify.com/embed/episode/6DY1xm1fJde58k72C75SY1', '2019-04-11', '2022-04-03', 84, 1, 1, 0),
(3773, ' Pets on Planes: Are Emotional Support Animals Legit?           ', 'https://open.spotify.com/embed/episode/0y6QSAzkzAmw3AnoT6ygZt', '2019-04-04', '2022-04-03', 84, 1, 1, 0),
(3774, ' Fasting Diets: What&#39;s the Skinny?           ', 'https://open.spotify.com/embed/episode/0M2j1YyIxhtEMZ8hYTU3h0', '2019-03-28', '2022-04-03', 84, 1, 1, 0),
(3775, ' Human Lab Rats: Science&#39;s Rotten Underbelly           ', 'https://open.spotify.com/embed/episode/3Pj0wVcYQEIX8HtSvr8quP', '2019-03-21', '2022-04-03', 84, 1, 1, 0),
(3776, ' Alcohol: A Pour Decision?           ', 'https://open.spotify.com/embed/episode/3igDOGG23FtqSM1F6VlhCk', '2019-03-14', '2022-04-03', 84, 1, 1, 0),
(3777, ' We&#39;re back next week!           ', 'https://open.spotify.com/embed/episode/6AcJLdgVdgV6ZRs3eTjlua', '2019-03-07', '2022-04-03', 84, 1, 1, 0),
(3778, ' The Mystery of the Man Who Died Twice           ', 'https://open.spotify.com/embed/episode/6CjQ8MDmDGTgLCLmdcuYnO', '2018-12-20', '2022-04-03', 84, 1, 1, 0),
(3779, ' The Science Of Being Transgender           ', 'https://open.spotify.com/embed/episode/6Ft9HunKBhXgRdLkdO4QLq', '2018-12-13', '2022-04-03', 84, 1, 1, 0),
(3780, ' The Wank Worm: How NASA Got Hacked           ', 'https://open.spotify.com/embed/episode/1ybnp6DnPaLMmlF6lbVUuV', '2018-12-06', '2022-04-03', 84, 1, 1, 0),
(3781, ' Ancient Aliens: Who Really Built the Pyramids?           ', 'https://open.spotify.com/embed/episode/0M2BGsneuubYxpMqI1zrKg', '2018-11-29', '2022-04-03', 84, 1, 1, 0),
(3782, ' 7 Minute Workout: Fit or Fad?           ', 'https://open.spotify.com/embed/episode/7L1AsGdNdeHixfEBfZF2Ym', '2018-11-21', '2022-04-03', 84, 1, 1, 0),
(3783, ' CBD: Weed Wonder Drug?           ', 'https://open.spotify.com/embed/episode/1t9xpsHGHfGxuRFso39Wc8', '2018-11-15', '2022-04-03', 84, 1, 1, 0),
(3784, ' Election Special: Immigration           ', 'https://open.spotify.com/embed/episode/0GwBbYxCb3Lyeu6630d0C7', '2018-11-02', '2022-04-03', 84, 1, 1, 0),
(3785, ' Election Special: Climate Change           ', 'https://open.spotify.com/embed/episode/42t9q2oy52sZg5f7tyndVM', '2018-11-01', '2022-04-03', 84, 1, 1, 0),
(3786, ' Election Special: Abortion           ', 'https://open.spotify.com/embed/episode/2ycQbLsazRf7X2AeZrUHy6', '2018-10-31', '2022-04-03', 84, 1, 1, 0),
(3787, ' Election Special: Gun Violence           ', 'https://open.spotify.com/embed/episode/0GIo3ifU1sI5QcWwxqD90w', '2018-10-30', '2022-04-03', 84, 1, 1, 0),
(3788, ' Meet Chompers: A Kids Toothbrushing Show           ', 'https://open.spotify.com/embed/episode/1hG7GTcYm2bRHNQSAzHBl8', '2018-10-27', '2022-04-03', 84, 1, 1, 0),
(3789, ' Online Dating: Can Science Find You Love?           ', 'https://open.spotify.com/embed/episode/6TkPAlz8jTGuzb1GXBOHHK', '2018-10-26', '2022-04-03', 84, 1, 1, 0),
(3790, ' Murder Mystery: An 1850s Whodunnit           ', 'https://open.spotify.com/embed/episode/6GvKCeMiJIYi7OS1pYFKiJ', '2018-10-18', '2022-04-03', 84, 1, 1, 0),
(3791, ' Gentrification: What&#39;s Really Happening?           ', 'https://open.spotify.com/embed/episode/1VNnDSoftcBVa72mWs5uuX', '2018-10-11', '2022-04-03', 84, 1, 1, 0),
(3792, ' Soy, Almond, Oat Milks: Are They Udder Bull?           ', 'https://open.spotify.com/embed/episode/215FYVlX9nh3L2VMfZ5GYs', '2018-10-04', '2022-04-03', 84, 1, 1, 0),
(3793, ' Vegans: Are They Right?           ', 'https://open.spotify.com/embed/episode/4eALtqRLIIqOABN9DTW5bX', '2018-09-27', '2022-04-03', 84, 1, 1, 0),
(3794, ' Essential Oils: Science or Snake Oil?           ', 'https://open.spotify.com/embed/episode/7vYjYu6nuuvTzJka1swRy4', '2018-09-20', '2022-04-03', 84, 1, 1, 0),
(3795, ' Plastics: The Final Straw?           ', 'https://open.spotify.com/embed/episode/3XozBNEv7alzWopDYObrxq', '2018-09-13', '2022-04-03', 84, 1, 1, 0),
(3796, ' We Return... With A Twist.           ', 'https://open.spotify.com/embed/episode/5kHBARkZZe9mKvbXlRnQ8T', '2018-09-06', '2022-04-03', 84, 1, 1, 0),
(3797, ' Welcome, New Listeners!           ', 'https://open.spotify.com/embed/episode/1eIGT91HEXmaMLbAkke3f4', '2018-07-17', '2022-04-03', 84, 1, 1, 0),
(3798, ' Serial Killers: Science of the Lambs           ', 'https://open.spotify.com/embed/episode/4CyjtpZzhyBLBwVrnPLvxr', '2018-06-28', '2022-04-03', 84, 1, 1, 0),
(3799, ' UFOs: What the Government Covered Up           ', 'https://open.spotify.com/embed/episode/3EaeEgjl5QuAujGS0S2Gtw', '2018-06-21', '2022-04-03', 84, 1, 1, 0),
(3800, ' Lyme Disease: How Scary Is It?           ', 'https://open.spotify.com/embed/episode/2Mb67OumbO9r0AVYyKQeQ1', '2018-06-14', '2022-04-03', 84, 1, 1, 0),
(3801, ' Circumcision: Why Are We Doing This?           ', 'https://open.spotify.com/embed/episode/1wMso1MxQQtavQzLrUJQqU', '2018-05-31', '2022-04-03', 84, 1, 1, 0),
(3802, ' How Science Created Morons           ', 'https://open.spotify.com/embed/episode/2KTzRKjGsUcoibEOZYoabY', '2018-05-25', '2022-04-03', 84, 1, 1, 0),
(3803, ' Polar Bears: A Surprising Tail           ', 'https://open.spotify.com/embed/episode/1VIx0bVphvFbrOn7bnEZZf', '2018-05-17', '2022-04-03', 84, 1, 1, 0),
(3804, ' Scott Kelly: How A Year in Space Changes You           ', 'https://open.spotify.com/embed/episode/0ZolA8TZOLZwqF8DwzsX2y', '2018-05-03', '2022-04-03', 84, 1, 1, 0),
(3805, ' Ketogenic Diet... Is Fat Good For You?           ', 'https://open.spotify.com/embed/episode/6WwYKdCMlLp0JrBvrw6cwz', '2018-04-26', '2022-04-03', 84, 1, 1, 0),
(3806, ' Nuclear War... Total Annihilation?           ', 'https://open.spotify.com/embed/episode/1AzTkYWfeKugv8sd9JTG8z', '2018-04-19', '2022-04-03', 84, 1, 1, 0),
(3807, ' Sex Addiction: Are They Faking It?           ', 'https://open.spotify.com/embed/episode/0H9vHAnUceHohNYtiVPv5c', '2018-04-05', '2022-04-03', 84, 1, 1, 0),
(3808, ' Opioids: Kicking America&#39;s Addiction           ', 'https://open.spotify.com/embed/episode/6OUy4AVx2OqmiuBvj1B1UZ', '2018-03-29', '2022-04-03', 84, 1, 1, 0),
(3809, ' Opioids: How America Got Hooked           ', 'https://open.spotify.com/embed/episode/4KhVSxUoPVCrU3G4CvYP6Y', '2018-03-22', '2022-04-03', 84, 1, 1, 0),
(3810, ' Brand New Science Vs!           ', 'https://open.spotify.com/embed/episode/1Cu6MeI897rRLyRhkxTnqi', '2018-03-16', '2022-04-03', 84, 1, 1, 0),
(3811, ' Obesity - Is It Your Fault?           ', 'https://open.spotify.com/embed/episode/5CKWtFX7F5Or0tIe4Y93WJ', '2017-12-14', '2022-04-03', 84, 1, 1, 0),
(3812, ' Chiropractors           ', 'https://open.spotify.com/embed/episode/3E1EpfIPJXyt2B0aguvQrN', '2017-12-07', '2022-04-03', 84, 1, 1, 0),
(3813, ' Birth Control - The Biggest Myths           ', 'https://open.spotify.com/embed/episode/6L4HXVxO3GGxxtYlUgS4zb', '2017-11-30', '2022-04-03', 84, 1, 1, 0),
(3814, ' Molly - Scary Drug or Promising Therapy?           ', 'https://open.spotify.com/embed/episode/3iQe6yE15QRkhVsJ7KeiRP', '2017-11-16', '2022-04-03', 84, 1, 1, 0),
(3815, ' Balding - What Actually Works?           ', 'https://open.spotify.com/embed/episode/6o8iHym7rXfY3XvAoCUF2L', '2017-11-09', '2022-04-03', 84, 1, 1, 0),
(3816, ' The Bee-pocalypse           ', 'https://open.spotify.com/embed/episode/0RkZO33HeNvzM9MIJprqtU', '2017-11-02', '2022-04-03', 84, 1, 1, 0),
(3817, ' Vitamins &amp; Supplements - Are They Worth It?           ', 'https://open.spotify.com/embed/episode/2JRcf99AkL57VyDlLAmDYd', '2017-10-19', '2022-04-03', 84, 1, 1, 0),
(3818, ' Bigfoot           ', 'https://open.spotify.com/embed/episode/3a2biAVZTnHVM4ZGJ7e6LA', '2017-10-12', '2022-04-03', 84, 1, 1, 0),
(3819, ' 100% Renewable Energy - Can We Do It?           ', 'https://open.spotify.com/embed/episode/3touboUOGIdNulgq3c9Xw0', '2017-10-05', '2022-04-03', 84, 1, 1, 0),
(3820, ' Science Vs Presents: I Want That Purple Stuff           ', 'https://open.spotify.com/embed/episode/54sRdruzOA5DofiOAGYCpd', '2017-09-28', '2022-04-03', 84, 1, 1, 0),
(3821, ' The Rise of Anti-Vaxxers           ', 'https://open.spotify.com/embed/episode/0yYnDHT3gVrsPI3ps02Nmp', '2017-09-21', '2022-04-03', 84, 1, 1, 0),
(3822, ' Vaccines - Are They Safe?           ', 'https://open.spotify.com/embed/episode/0LMp1ma3J03Vw7KL5ZONls', '2017-09-14', '2022-04-03', 84, 1, 1, 0),
(3823, ' Detoxing &amp; Cleanses - Do They Work?           ', 'https://open.spotify.com/embed/episode/3OwyJPTapd5UTjZU0lJAwi', '2017-09-07', '2022-04-03', 84, 1, 1, 0),
(3824, ' New Season... Coming Soon!           ', 'https://open.spotify.com/embed/episode/3bKnA4xcA1oQ62EyNGqfeI', '2017-08-31', '2022-04-03', 84, 1, 1, 0),
(3825, ' Artificial Sweeteners - not so sweet?           ', 'https://open.spotify.com/embed/episode/5PneRrLvVO886BDCgy3j4A', '2017-06-08', '2022-04-03', 84, 1, 1, 0),
(3826, ' Nuclear Power - what are the Risks?           ', 'https://open.spotify.com/embed/episode/1Pjl9mzSWG3VIvqIiT8jqO', '2017-06-01', '2022-04-03', 84, 1, 1, 0),
(3827, ' Meditation           ', 'https://open.spotify.com/embed/episode/1OBOW4TO1UvSCE9mbkSlMr', '2017-05-25', '2022-04-03', 84, 1, 1, 0),
(3828, ' True Love           ', 'https://open.spotify.com/embed/episode/7MkefuRmXo4utFPCRpVaus', '2017-05-11', '2022-04-03', 84, 1, 1, 0),
(3829, ' Antioxidants           ', 'https://open.spotify.com/embed/episode/0nsYhJSseHQjm5ikn5KYQR', '2017-05-04', '2022-04-03', 84, 1, 1, 0),
(3830, ' Abortion: What You Need To Know           ', 'https://open.spotify.com/embed/episode/1IvD5Jz56DiRe7DvSXmIH1', '2017-04-27', '2022-04-03', 84, 1, 1, 0),
(3831, ' GMO... OMG?           ', 'https://open.spotify.com/embed/episode/3MMD5hXz2pkoT9AwHToxUP', '2017-04-17', '2022-04-03', 84, 1, 1, 0),
(3832, ' Lemmings           ', 'https://open.spotify.com/embed/episode/7lngcBcYzBreyex0Z0m4C0', '2017-04-06', '2022-04-03', 84, 1, 1, 0),
(3833, ' Ghosts           ', 'https://open.spotify.com/embed/episode/4NY7wJRPVdWnJzhlFmIPTJ', '2017-03-30', '2022-04-03', 84, 1, 1, 0),
(3834, ' Climate Change... the Apocalypse?           ', 'https://open.spotify.com/embed/episode/68BMrqxthXNWIxsr8ZXimh', '2017-03-16', '2022-04-03', 84, 1, 1, 0),
(3835, ' Acne           ', 'https://open.spotify.com/embed/episode/7LD7tUjZAjV32gfbquzYYl', '2017-03-09', '2022-04-03', 84, 1, 1, 0),
(3836, ' Immigration           ', 'https://open.spotify.com/embed/episode/1xknah0bAcLoYMO50NO8DR', '2017-03-09', '2022-04-03', 84, 1, 1, 0),
(3837, ' Antidepressants           ', 'https://open.spotify.com/embed/episode/5Zqxuhiumf6fysfqSwx8w6', '2016-10-28', '2022-04-03', 84, 1, 1, 0),
(3838, ' DNA and the Smell of Death           ', 'https://open.spotify.com/embed/episode/4VsPOeeV4mr0JJGZnh26ft', '2016-10-20', '2022-04-03', 84, 1, 1, 0),
(3839, ' Forensic Science           ', 'https://open.spotify.com/embed/episode/6rxKaP85aZ9iO7rztd189W', '2016-10-07', '2022-04-03', 84, 1, 1, 0),
(3840, ' Zika           ', 'https://open.spotify.com/embed/episode/4ESEpwQQDe5fNot3EENDdW', '2016-09-30', '2022-04-03', 84, 1, 1, 0),
(3841, ' Hypnosis           ', 'https://open.spotify.com/embed/episode/75FxADLe3Co6PiQdyrAlz0', '2016-09-22', '2022-04-03', 84, 1, 1, 0),
(3842, ' The G-spot           ', 'https://open.spotify.com/embed/episode/3NCf6DAWtiWOShQr6MNqNY', '2016-09-01', '2022-04-03', 84, 1, 1, 0),
(3843, ' Organic Food           ', 'https://open.spotify.com/embed/episode/1kDrqSeMT1TpkmPBuo1b0w', '2016-08-25', '2022-04-03', 84, 1, 1, 0),
(3844, ' Gun Control (Pt 2)           ', 'https://open.spotify.com/embed/episode/4fOv3XCKoWE900YnFwSbp6', '2016-08-11', '2022-04-03', 84, 1, 1, 0),
(3845, ' Guns           ', 'https://open.spotify.com/embed/episode/3A2CqSh4SpSZWtuyKqIGIf', '2016-08-04', '2022-04-03', 84, 1, 1, 0),
(3846, ' Attachment Parenting           ', 'https://open.spotify.com/embed/episode/779tegJ0OWEgwLhOVtde1R', '2016-07-27', '2022-04-03', 84, 1, 1, 0),
(3847, ' Fracking           ', 'https://open.spotify.com/embed/episode/42JVEA4IqCD3paypAkkUvX', '2016-07-27', '2022-04-03', 84, 1, 1, 0),
(3848, ' Sneak Peek           ', 'https://open.spotify.com/embed/episode/0UhyN2quS8KlxwB3xJYdAH', '2016-06-28', '2022-04-03', 84, 1, 1, 0),
(3849, 'T03E16: Roberto Carlos - Roberto Carlos (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b0edbc30-ce68-4224-a7c4-adf600e90763/audio.mp3?utm_source=Podcast&amp', '2021-12-06', '2022-04-03', 115, 7, 1, 0),
(3850, 'T03E15: Hunky Dory - David Bowie (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b659d167-b40a-46d2-a2cc-adef00e031d1/audio.mp3?utm_source=Podcast&amp', '2021-11-29', '2022-04-03', 115, 7, 1, 0),
(3851, 'Episódio Extra: O Longo e Tortuoso Caminho até “The Beatles: Get Back”', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/ab904f82-7cb1-4ed8-ada8-adea013caf61/audio.mp3?utm_source=Podcast&amp', '2021-11-24', '2022-04-03', 115, 7, 1, 0),
(3852, 'T03E14: Gal a Todo Vapor - Gal Costa (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/5f77b091-60cf-455f-af17-ade8014b0dbb/audio.mp3?utm_source=Podcast&amp', '2021-11-22', '2022-04-03', 115, 7, 1, 0),
(3853, 'T03E13: Achtung Baby - U2 (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/5c73e62d-6992-4cb9-8571-ade10132b8de/audio.mp3?utm_source=Podcast&amp', '2021-11-15', '2022-04-03', 115, 7, 1, 0),
(3854, 'T03E12: Led Zeppelin IV - Led Zeppelin (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/acf962aa-2177-4c97-9782-adda0104b91b/audio.mp3?utm_source=Podcast&amp', '2021-11-08', '2022-04-03', 115, 7, 1, 0),
(3855, 'T03E11: Construção - Chico Buarque (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/aff9c8d3-1f9a-40f4-b629-add30108bc27/audio.mp3?utm_source=Podcast&amp', '2021-11-01', '2022-04-03', 115, 7, 1, 0),
(3856, 'T03E10: A Night At The Opera - Queen (1975)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/cdaf1f1f-2901-4f4e-8285-adcc011efd19/audio.mp3?utm_source=Podcast&amp', '2021-10-25', '2022-04-03', 115, 7, 1, 0),
(3857, 'T03E09: Time Out - The Dave Brubeck Quartet (1959)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/f6592b4b-f2a9-4d44-b898-adc5011f3e0f/audio.mp3?utm_source=Podcast&amp', '2021-10-18', '2022-04-03', 115, 7, 1, 0),
(3858, 'T03E08: Lemonade - Beyoncé (2016)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/dd4cdf30-04fd-4c75-a8c0-adbe00f542b2/audio.mp3?utm_source=Podcast&amp', '2021-10-11', '2022-04-03', 115, 7, 1, 0),
(3859, 'T03E07: Canções Praieiras - Dorival Caymmi (1954)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/1b41dc58-2965-4f65-a3ec-adb700f5bec9/audio.mp3?utm_source=Podcast&amp', '2021-10-04', '2022-04-03', 115, 7, 1, 0),
(3860, 'T03E06: Sobrevivendo no Inferno - Racionais MC&#39;s (1997)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/291df205-3f82-47ea-ad56-adb000df8421/audio.mp3?utm_source=Podcast&amp', '2021-09-27', '2022-04-03', 115, 7, 1, 0),
(3861, 'T03E05: Nevermind - Nirvana (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/a7b13a66-6cd4-4007-9a40-ada900af641b/audio.mp3?utm_source=Podcast&amp', '2021-09-20', '2022-04-03', 115, 7, 1, 0),
(3862, 'T03E04: Blood Sugar Sex Magik - Red Hot Chili Peppers (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/ade06889-4426-411a-bb8f-ada000be3944/audio.mp3?utm_source=Podcast&amp', '2021-09-13', '2022-04-03', 115, 7, 1, 0),
(3863, 'T03E03: Imagine - John Lennon (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/faa799de-00b7-4a75-b9b0-ad9b008e86dd/audio.mp3?utm_source=Podcast&amp', '2021-09-06', '2022-04-03', 115, 7, 1, 0),
(3864, 'T03E02: Cabeça Dinossauro - Titãs (1986)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/5f2d57b7-655f-4a06-a060-ad9400dc27c6/audio.mp3?utm_source=Podcast&amp', '2021-08-30', '2022-04-03', 115, 7, 1, 0),
(3865, 'T03E01: Ten - Pearl Jam (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/a4a4413d-727d-46a6-b530-ad8d013abfbd/audio.mp3?utm_source=Podcast&amp', '2021-08-23', '2022-04-03', 115, 7, 1, 0),
(3866, 'Episódio Extra: O produtor da Tropicália [Episódio Piloto]', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/8ce9d6bf-1542-4dd6-8fb3-ad4e00a4c49c/audio.mp3?utm_source=Podcast&amp', '2021-06-21', '2022-04-03', 115, 7, 1, 0),
(3867, 'T02E16: Tropicália ou Panis et Circencis (1968)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/6fc2346d-7148-4347-b811-ad4701053877/audio.mp3?utm_source=Podcast&amp', '2021-06-14', '2022-04-03', 115, 7, 1, 0),
(3868, 'T02E15: The Yes Album - Yes (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/064dfb34-abd8-4fe0-bb71-ad4000a9a697/audio.mp3?utm_source=Podcast&amp', '2021-06-07', '2022-04-03', 115, 7, 1, 0),
(3869, 'T02E14: Is This It - The Strokes (2001)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/0ff3ab81-1f41-499f-a622-ad39008a5529/audio.mp3?utm_source=Podcast&amp', '2021-05-31', '2022-04-03', 115, 7, 1, 0),
(3870, 'T02E13: Sticky Fingers - Rolling Stones (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b5975d77-bc73-47a4-9ebc-ad32014ae4ba/audio.mp3?utm_source=Podcast&amp', '2021-05-24', '2022-04-03', 115, 7, 1, 0),
(3871, 'T02E12: Back to Black – Amy Winehouse (2006)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/cd4da3fa-7b31-4bb7-8156-ad2b00c92cef/audio.mp3?utm_source=Podcast&amp', '2021-05-17', '2022-04-03', 115, 7, 1, 0),
(3872, 'T02E11: Who&#39;s Next - The Who (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b5755c12-ff19-4cd1-acf3-ad24008b365a/audio.mp3?utm_source=Podcast&amp', '2021-05-10', '2022-04-03', 115, 7, 1, 0),
(3873, 'T02E10: Acústico MTV - Cássia Eller (2001)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/728ac1b3-9be1-48fe-b2bf-ad1d00b6d147/audio.mp3?utm_source=Podcast&amp', '2021-05-03', '2022-04-03', 115, 7, 1, 0),
(3874, 'T02E09: White Blood Cells - The White Stripes (2001)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/3696d287-31dc-4dd5-a05b-ad1600a757b9/audio.mp3?utm_source=Podcast&amp', '2021-04-26', '2022-04-03', 115, 7, 1, 0),
(3875, 'T02E08: Metallica – Metallica (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/6d1cf30a-a02b-4ac8-abe6-ad0f00d041d2/audio.mp3?utm_source=Podcast&amp', '2021-04-19', '2022-04-03', 115, 7, 1, 0),
(3876, 'T02E07: Carlos, Erasmo – Erasmo Carlos (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/5500569d-6bf8-46db-8cf8-ad0800c731e5/audio.mp3?utm_source=Podcast&amp', '2021-04-12', '2022-04-03', 115, 7, 1, 0),
(3877, 'T02E06: Catch a Fire - Bob Marley (1973)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/aa2bd2b9-dd96-4167-9fc4-ad0100fae196/audio.mp3?utm_source=Podcast&amp', '2021-04-05', '2022-04-03', 115, 7, 1, 0),
(3878, 'T02E05: Rubber Soul - Beatles (1965)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/9d443193-23eb-4101-8148-acfa00e11fb9/audio.mp3?utm_source=Podcast&amp', '2021-03-29', '2022-04-03', 115, 7, 1, 0),
(3879, 'T02E04:  Mais - Marisa Monte (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/678040d2-c099-4ed3-8dae-acf3009cf293/audio.mp3?utm_source=Podcast&amp', '2021-03-22', '2022-04-03', 115, 7, 1, 0),
(3880, 'T02E03: Out of Time - R.E.M. (1991)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/de6a8a0e-c21b-449b-9e45-acec00e19e7d/audio.mp3?utm_source=Podcast&amp', '2021-03-15', '2022-04-03', 115, 7, 1, 0);
INSERT INTO `episode` (`id`, `title`, `url`, `date_publish`, `date_added`, `id_podcast`, `id_publisher`, `id_user`, `status`) VALUES
(3881, 'T02E02: Gita - Raul Seixas (1974)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b13c2a1a-c957-427d-bc98-ace50115c737/audio.mp3?utm_source=Podcast&amp', '2021-03-08', '2022-04-03', 115, 7, 1, 0),
(3882, 'T02E01: Dois - Legião Urbana (1986)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/7b127a9f-8b4f-4280-895b-acda012cad32/audio.mp3?utm_source=Podcast&amp', '2021-02-25', '2022-04-03', 115, 7, 1, 0),
(3883, 'Episódio Extra: Perguntas dos ouvintes (Preview da Segunda Temporada)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/abdac44f-ec50-427d-87c1-acd7011d429e/audio.mp3?utm_source=Podcast&amp', '2021-02-22', '2022-04-03', 115, 7, 1, 0),
(3884, 'Episódio Extra: Os melhores discos nacionais de 2020', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/c108fed5-bd7a-431a-894c-acbc009f1202/audio.mp3?utm_source=Podcast&amp', '2021-01-26', '2022-04-03', 115, 7, 1, 0),
(3885, 'Episódio Extra: Os melhores discos internacionais de 2020', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/5a163468-8e3a-4366-83cf-acb500a928dd/audio.mp3?utm_source=Podcast&amp', '2021-01-19', '2022-04-03', 115, 7, 1, 0),
(3886, 'T01E16: Phil Spector’s Christmas Album - Vários artistas (1963)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/216d0cb1-6f0a-48ed-862a-ac980169cdd7/audio.mp3?utm_source=Podcast&amp', '2020-12-22', '2022-04-03', 115, 7, 1, 0),
(3887, 'T01E15: Roberto Carlos - Roberto Carlos (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/24dd46f9-cf6e-4ad0-b44c-ac9101810474/audio.mp3?utm_source=Podcast&amp', '2020-12-15', '2022-04-03', 115, 7, 1, 0),
(3888, 'T01E14: John Lennon/Plastic Ono Band - John Lennon (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/0682a626-78c8-4c72-b986-ac8e012f696b/audio.mp3?utm_source=Podcast&amp', '2020-12-11', '2022-04-03', 115, 7, 1, 0),
(3889, 'T01E13: Tim Maia - Tim Maia (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/c09b7964-8d91-427a-b064-ac860116488b/audio.mp3?utm_source=Podcast&amp', '2020-12-01', '2022-04-03', 115, 7, 1, 0),
(3890, 'T01E12: All Things Must Pass - George Harrison (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/16b73f65-b92f-49d6-8478-ac860116658f/audio.mp3?utm_source=Podcast&amp', '2020-11-24', '2022-04-03', 115, 7, 1, 0),
(3891, 'T01E11: Aftermath - The Rolling Stones (1966)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/2627a32c-7dae-4ede-8d95-ac7601381c4c/audio.mp3?utm_source=Podcast&amp', '2020-11-17', '2022-04-03', 115, 7, 1, 0),
(3892, 'T01E10: Kind of Blue - Miles Davis (1959)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/e87f76df-aae2-4a4a-9d9e-ac760138230d/audio.mp3?utm_source=Podcast&amp', '2020-11-10', '2022-04-03', 115, 7, 1, 0),
(3893, 'T01E09: Mellon Collie And The Infinite Sadness - Smashing Pumpkins (1995)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/032c0edf-9cbb-4158-9916-ac760137ff41/audio.mp3?utm_source=Podcast&amp', '2020-11-03', '2022-04-03', 115, 7, 1, 0),
(3894, 'T01E08: Cartola - Cartola (1976)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/3ac44ab9-9b8f-4f16-9363-ac7601383ddb/audio.mp3?utm_source=Podcast&amp', '2020-10-27', '2022-04-03', 115, 7, 1, 0),
(3895, 'T01E07: Led Zeppelin III - Led Zeppelin (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/b90e4ef1-ba66-424b-8788-ac76013851dc/audio.mp3?utm_source=Podcast&amp', '2020-10-20', '2022-04-03', 115, 7, 1, 0),
(3896, 'T01E06: What&#39;s Going On - Marvin Gaye (1971)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/703dfe2b-2afe-457c-bd08-ac7601386061/audio.mp3?utm_source=Podcast&amp', '2020-10-13', '2022-04-03', 115, 7, 1, 0),
(3897, 'T01E05: Remain in Light - Talking Heads (1980)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/991be228-9ac3-4b57-b554-ac7601386c10/audio.mp3?utm_source=Podcast&amp', '2020-10-06', '2022-04-03', 115, 7, 1, 0),
(3898, 'T01E04: Rita Lee - Rita Lee [&quot;Lança Perfume&quot;] (1980)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/24e169c3-f76b-4036-a4dc-ac76013877fe/audio.mp3?utm_source=Podcast&amp', '2020-09-29', '2022-04-03', 115, 7, 1, 0),
(3899, 'T01E03: Abraxas - Santana', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/3341071c-6a59-451e-8f40-ac7601388afe/audio.mp3?utm_source=Podcast&amp', '2020-09-22', '2022-04-03', 115, 7, 1, 0),
(3900, 'T01E02: After The Gold Rush - Neil Young (1970)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/c369b4a3-e580-42bf-9a49-ac7601389d39/audio.mp3?utm_source=Podcast&amp', '2020-09-15', '2022-04-03', 115, 7, 1, 0),
(3901, 'T01E01: Pet Sounds - The Beach Boys (1966)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/ba6aff99-1325-4050-9f62-ac760138b2c7/audio.mp3?utm_source=Podcast&amp', '2020-09-08', '2022-04-03', 115, 7, 1, 0),
(3902, 'Discoteca Básica (Episódio Piloto)', 'https://chtbl.com/track/72E5D/traffic.omny.fm/d/clips/0009b167-0e82-414e-91eb-aae8011fc66d/9b29ae9e-7123-4139-bb90-ac6a00dba4fe/55b9e333-8cb8-45a3-8ea3-ac760138bdae/audio.mp3?utm_source=Podcast&amp', '2020-08-31', '2022-04-03', 115, 7, 1, 0);

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
(47, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 0),
(58, 'Anticast', 5, 'https://www.spreaker.com/show/3221921/episodes/feed', 0),
(61, 'Radiolab', 6, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLndueWMub3JnL3JhZGlvbGFi', 0),
(63, 'Reply All', 1, 'https://gimletmedia.com/shows/reply-all/episodes#show-tab-picker', 5),
(75, 'Heavyweight', 1, 'https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker', 1),
(78, 'Reply All', 1, 'https://gimletmedia.com/shows/reply-all/episodes#show-tab-picker', 1),
(81, 'Nerdcast', 3, 'https://podcasts.google.com/feed/aHR0cHM6Ly9qb3ZlbW5lcmQuY29tLmJyL2ZlZWQtbmVyZGNhc3Qv?sa=X&ved=0CAMQ4aUDahcKEwjQy9a-8Of2AhUAAAAAHQAAAAAQQw', 1),
(84, 'Science Vs', 1, 'https://gimletmedia.com/shows/science-vs/episodes#show-tab-picker', 1),
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
(97, 'Where Should We Begin?', 1, 'https://gimletmedia.com/shows/where-should-we/episodes#show-tab-picker', 0),
(98, 'Revolushow', 5, 'https://anchor.fm/s/7dfb0f7c/podcast/rss', 0),
(99, 'O Código do Russo', 5, 'https://www.spreaker.com/show/5001237/episodes/feed', 0),
(100, 'Imagina Juntas', 5, 'https://www.spreaker.com/show/2929952/episodes/feed', 0),
(101, 'Motherchip', 5, 'https://www.omnycontent.com/d/playlist/42233656-1562-49af-98d5-acd100df7932/a3504d75-e95a-41c5-8dda-aced013a0cb9/343561ea-888c-4641-bd55-aced013a0cd5/podcast.rss', 0),
(102, 'Decrépitos', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvMDAwOWIxNjctMGU4Mi00MTRlLTkxZWItYWFlODAxMWZjNjZkLzE4NWE4NDBjLTU3OGQtNGUxMS04OWQ1LWFjMGYwMGZmZmUzMi9mM2ZjZDIwZC1jNTlhLTRmOTMtYmFmNS1hYzBmMDBmZmZlNDAvcG9kY2FzdC5yc3M', 0),
(103, 'This American Life', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cudGhpc2FtZXJpY2FubGlmZS5vcmcvcG9kY2FzdC54bWw', 0),
(104, 'Radio Ambulante', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMxNS9wb2RjYXN0LnhtbA', 0),
(105, 'Planet Money', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDI4OS9wb2RjYXN0LnhtbA', 0),
(106, 'Invisibilia', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMwNy9wb2RjYXN0LnhtbA', 0),
(107, 'Tiny Desk Concerts', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5ucHIub3JnLzUxMDMwNi9wb2RjYXN0LnhtbA', 0),
(108, 'Podpah', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9hbmNob3IuZm0vcy81N2JkMzBkOC9wb2RjYXN0L3Jzcw', 0),
(109, 'Papricast', 7, 'https://podcasts.google.com/feed/aHR0cDovL2ZlZWRzLmZlZWRidXJuZXIuY29tL1BhcHJpY2FzdA', 0),
(110, 'Serial', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS94bDM2WEJDMg', 0),
(111, 'S-Town', 8, 'https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DcHZucElhag', 0),
(112, 'Projeto Humanos', 5, 'https://www.omnycontent.com/d/playlist/651a251e-06e1-47e0-9336-ac5a00f41628/220ec2a9-bb93-469e-aad7-acd8013110b7/11cd2462-4550-482d-88ea-acd8013110cf/podcast.rss', 0),
(113, 'Conversas Paralelas', 9, 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4LzFhMWE1NDY2LTJiNGUtNDc0YS1hNzRkLWFkYTUwMGI5MzBkYS9lY2I1NTE1NS1iYmNmLTRmNmYtOTdlMy1hZGE1MDBiOTMxZTAvcG9kY2FzdC5yc3M', 0),
(114, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 0),
(115, 'Discoteca Básica', 7, 'https://podcasts.google.com/feed/aHR0cHM6Ly9kaXNjb3RlY2FiYXNpY2EubGlic3luLmNvbS9yc3M', 1);

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
(9, 'Globoplay');

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
(5, 'kemilly', 'RUcxRlVWaEk1cU5wTXIrMnZPc0hnQT09', 'RUcxRlVWaEk1cU5wTXIrMnZPc0hnQT09', '4870791426606515bcbc61e806acc3edf12af30aaff03a74ff9834a50d798649', '7236ef93ab2e3d93', '2022-03-31', 1);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3903;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podcast`
--
ALTER TABLE `podcast`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
