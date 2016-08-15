-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2016 at 09:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd_keys`
--

CREATE TABLE `cd_keys` (
  `username` varchar(100) DEFAULT NULL,
  `product_number` varchar(16) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `first_use` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_keys`
--

INSERT INTO `cd_keys` (`username`, `product_number`, `used`, `first_use`) VALUES
('tito', '1234561234561234', 1, '2016-08-15 21:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3e7d1bcf7bb3f21a57866af57d119bb9d7860d73', '::1', 1471289206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313238383939313b),
('da9143d7ba2bba16030c02969d31fa45a7e77722', '::1', 1471290941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313239303934313b),
('deb50372488c1d860ba3b11fa619b3eed6f5fbb9', '::1', 1471289713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313238393639313b);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) DEFAULT 'default.jpg',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(1, 'tito', 'tito@abv.bg', '$2y$10$SSzoUToib0fem3aJRHDEJetObs8uXeSwwp/kNLtThvIiQe40XwwNG', 'default.jpg', '2016-08-15 21:53:27', NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd_keys`
--
ALTER TABLE `cd_keys`
  ADD UNIQUE KEY `user_id` (`username`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
