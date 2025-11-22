-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2025 at 12:52 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpl_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `position` enum('GK','DEF','MID','FWD') NOT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `fk_team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `full_name`, `position`, `price`, `points`, `total_points`, `fk_team`) VALUES
(1, 'Senne Lammens', 'GK', '5.00', 9, 9, 14),
(2, 'Jurrien Timber', 'DEF', '5.90', 12, 48, 2),
(3, 'Dan Burn', 'DEF', '5.10', 11, 43, 15),
(4, 'Jan Paul van Hecke', 'DEF', '4.20', 11, 22, 5),
(5, 'Antoine Semenyo', 'MID', '7.90', 20, 66, 1),
(6, 'Mohammed Kudus', 'MID', '6.70', 12, 39, 18),
(7, 'Declan Rice', 'MID', '6.50', 11, 40, 2),
(8, 'Donyell Malen', 'FWD', '5.10', 16, 22, 3),
(9, 'Benjamin Sesko', 'FWD', '7.30', 9, 23, 14),
(10, 'Bruno Guimaraes', 'MID', '6.50', 14, 30, 15),
(11, 'Josko Gvardiol', 'DEF', '5.90', 12, 24, 13),
(12, 'TEST', 'FWD', '5.50', 10, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `stadium` varchar(100) DEFAULT NULL,
  `manager_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `stadium`, `manager_name`) VALUES
(1, 'AFC Bournemouth', 'Dean Court', 'Andoni Iraola'),
(2, 'Arsenal', 'Emirates Stadium', 'Mikel Arteta'),
(3, 'Aston Villa', 'Villa Park', 'Unai Emery'),
(4, 'Brentford', 'Brentford Community Stadium', 'Keith Andrews'),
(5, 'Brighton & Hove Albion', 'Falmer Stadium', 'Fabian Hürzeler'),
(6, 'Burnley', 'Turf Moor', 'Scott Parker'),
(7, 'Chelsea', 'Stamford Bridge', 'Enzo Maresca'),
(8, 'Crystal Palace', 'Selhurst Park', 'Oliver Glasner'),
(9, 'Everton', 'Hill Dickinson Stadium', 'David Moyes'),
(10, 'Fulham', 'Craven Cottage', 'Marco Silva'),
(11, 'Leeds United', 'Elland Road', 'Daniel Farke'),
(12, 'Liverpool', 'Anfield', 'Arne Slot'),
(13, 'Manchester City', 'Etihad Stadium', 'Pep Guardiola'),
(14, 'Manchester United', 'Old Trafford', 'Ruben Amorim'),
(15, 'Newcastle United', 'St James Park', 'Eddie Howe'),
(16, 'Nottingham Forest', 'City Ground', 'Ange Postecoglou'),
(17, 'Sunderland', 'Stadium of Light', 'Régis Le Bris'),
(18, 'Tottenham Hotspur', 'Tottenham Hotspur Stadium', 'Thomas Frank'),
(19, 'West Ham United', 'London Stadium', 'Nuno Espírito Santo'),
(20, 'Wolverhampton Wanderers', 'Molineux Stadium', 'Vitor Pereira');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `created_at`) VALUES
(1, 'lipengcheng@example.com', '$2y$10$pnF4gtv/tGybOItr4TCEZ.b9RRd93QdHzl0SXgc0nhVyz2bGRQym2', '2025-11-18 19:13:31'),
(2, 'samson@test.com', '$2y$10$g/J6mPG72EpXN5eu7SZTfOqYPIRrDXhzqnIHjsQEodXFkHXeDQ7pa', '2025-11-21 14:53:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `fk_team` (`fk_team`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
