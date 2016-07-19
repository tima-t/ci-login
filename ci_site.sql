-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2016 at 04:48 
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

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
  `id` int(11) NOT NULL,
  `product_number` varchar(16) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `first_use` datetime NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_keys`
--

INSERT INTO `cd_keys` (`id`, `product_number`, `user_id`, `first_use`, `used`) VALUES
(1, 'aaaaaaaaaaaaaaaa', 'tito', '2016-07-19 16:44:51', 1),
(2, 'bbbbbbbbbbbbbbbb', 'aaaa', '2016-07-19 16:47:46', 1);

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
('2e90ff7981161c2aa66cd1b4fe32bf725286c995', '::1', 1468939209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933393138363b),
('3390d0e3f7a418225dd0d510653f1adadcb6ba14', '::1', 1468925381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383932353338313b),
('36b8bb5f07e025cbc00a95411b104a2451059dfb', '::1', 1468926929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383932363834303b),
('4e300cf1d89728b8c39007b9fea40c64e1ce8efc', '::1', 1468927222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383932373137383b),
('734022236cbdab38845d0e942255c9dd70448dac', '::1', 1468925821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383932353832313b),
('855184e66d7e1a3497930710c1809c3a3e0f791b', '::1', 1468938874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933383833303b),
('984cfe0f5d9522b3bc1c1fca79d595084f95ea1d', '::1', 1468936569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933363237353b),
('99e5e93e15c4c4e3d3a8c5d73cf99c4024866e9d', '::1', 1468939686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933393439313b757365725f69647c693a323b757365726e616d657c733a343a227469746f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('ad21a9476b940cd3fbfdbe620d870d10410f07d2', '::1', 1468926423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383932363332333b),
('c499cc49d902f2b6f66b31f4188ea761394ff377', '::1', 1468936947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933363832323b),
('cb783b34aacc05c73080264464c62262440fa4ab', '::1', 1468935102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933343830333b),
('da1323b5a335713a1a877b3c183c03302b6dfa1d', '::1', 1468935236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933353130353b),
('e56accc2ba0071b4bb99512a28e48fce1db534a5', '::1', 1468938796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933383532303b),
('f98596ef2859f4bc0f2a8a3d8f966b9ccbd1d7bd', '::1', 1468934438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436383933343433313b);

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
(2, 'tito', 'tmt940@abv.bg', '$2y$10$DNkvdFelfM3XxV.tFSh6OuKrTGzT87JHvc4ueWJfr4.kQvOvhAdze', 'default.jpg', '2016-07-19 16:44:51', NULL, 0, 0, 0),
(3, 'aaaa', 'asen@abv.bg', '$2y$10$V8CdX.BHxyq9x92ZkxpoCu3mXJc3RXErC96q70fPKGl.wMrxPoBzW', 'default.jpg', '2016-07-19 16:47:46', NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd_keys`
--
ALTER TABLE `cd_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_number` (`product_number`);

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
-- AUTO_INCREMENT for table `cd_keys`
--
ALTER TABLE `cd_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
