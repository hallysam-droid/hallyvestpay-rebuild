-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql311.infinityfree.com
-- Generation Time: Apr 11, 2026 at 03:27 PM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41349564_hallyvestpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonus_codes`
--

CREATE TABLE `bonus_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `is_used` int(11) DEFAULT 0,
  `used_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bonus_codes`
--

INSERT INTO `bonus_codes` (`id`, `code`, `amount`, `expiry_date`, `is_used`, `used_by`, `created_at`) VALUES
(1, 'C9BF729D', '500.00', '2026-03-10 13:39:20', 1, 1, '2026-03-10 16:39:20'),
(2, 'D1D3D6B5', '-200.00', '2026-03-20 06:26:20', 1, 16, '2026-03-20 09:26:21'),
(3, '29AB537D', '-2675.00', '2026-04-02 03:03:56', 1, 16, '2026-04-02 06:03:56'),
(4, '348C656D', '7000.00', '2026-04-03 09:22:59', 1, 16, '2026-04-03 12:22:59'),
(5, 'FB8FB6EA', '100.00', '2026-04-06 07:39:39', 0, NULL, '2026-04-06 10:39:39'),
(6, '035812E8', '150.00', '2026-04-06 12:26:47', 0, NULL, '2026-04-06 15:26:47'),
(7, 'A8D20FA9', '80.00', '2026-04-07 11:09:25', 0, NULL, '2026-04-07 14:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_messages`
--

CREATE TABLE `chatbot_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender` enum('user','bot') NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chatbot_messages`
--

INSERT INTO `chatbot_messages` (`id`, `user_id`, `sender`, `message`, `created_at`) VALUES
(1, 1, 'user', 'hello', '2026-03-10 15:58:45'),
(2, 1, 'bot', 'Hello! How can Hallyvestpay assist you today?', '2026-03-10 15:58:45'),
(3, 1, 'bot', 'how may we help', '2026-03-10 15:59:11'),
(4, 1, 'user', 'i want to invest', '2026-03-10 15:59:28'),
(5, 1, 'bot', 'Thank you for your message. An admin will get back to you shortly.', '2026-03-10 15:59:28'),
(6, 1, 'user', 'helo', '2026-03-10 16:08:19'),
(7, 1, 'user', 'Hello', '2026-03-10 16:08:27'),
(8, 1, 'bot', 'Hello! I am the Hallyvest Assistant. How can I help you grow your wealth today?', '2026-03-10 16:08:27'),
(9, 1, 'user', 'goof', '2026-03-10 16:08:35'),
(10, 1, 'user', 'deposit', '2026-03-10 16:08:47'),
(11, 1, 'bot', 'soorry', '2026-03-10 16:09:24'),
(12, 1, 'user', 'hey', '2026-03-10 16:10:53'),
(13, 1, 'user', 'hey', '2026-03-10 16:11:15'),
(14, 1, 'bot', 'Hello! How can Hallyvest help you today?', '2026-03-10 16:11:15'),
(15, 1, 'user', 'deposit', '2026-03-10 16:11:23'),
(16, 1, 'bot', 'Pay to the account on the Deposit page and upload proof. Takes 1-6hrs.', '2026-03-10 16:11:23'),
(17, 1, 'user', 'crashed', '2026-03-10 16:11:30'),
(18, 1, 'user', 'deposit', '2026-03-10 16:11:49'),
(19, 1, 'bot', 'Pay to the account on the Deposit page and upload proof. Takes 1-6hrs.', '2026-03-10 16:11:49'),
(20, 1, 'user', 'hey', '2026-03-10 16:13:57'),
(21, 1, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-10 16:13:57'),
(22, 1, 'user', 'crashed', '2026-03-10 16:14:04'),
(23, 1, 'bot', 'Hallyvestpay is designed for longevity. We use a 25% withdrawal fee to maintain a sustainability reserve and reinvest in low-risk assets to ensure all members are paid indefinitely.', '2026-03-10 16:14:04'),
(24, 1, 'user', 'stop', '2026-03-10 16:14:21'),
(25, 1, 'bot', 'Hallyvestpay is designed for longevity. We use a 25% withdrawal fee to maintain a sustainability reserve and reinvest in low-risk assets to ensure all members are paid indefinitely.', '2026-03-10 16:14:21'),
(26, 6, 'user', 'Hi', '2026-03-11 19:11:16'),
(27, 6, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-11 19:11:16'),
(28, 6, 'user', 'I need money', '2026-03-11 19:11:24'),
(29, 6, 'user', 'hi', '2026-03-11 19:39:11'),
(30, 6, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-11 19:39:11'),
(31, 9, 'user', 'Hello', '2026-03-12 08:11:35'),
(32, 9, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-12 08:11:35'),
(33, 9, 'user', 'I can I pay', '2026-03-12 08:11:52'),
(34, 9, 'user', 'Are you there', '2026-03-12 08:12:16'),
(35, 9, 'bot', '', '2026-03-12 21:54:13'),
(36, 9, 'bot', '', '2026-03-12 21:54:23'),
(37, 9, 'bot', '', '2026-03-12 21:54:27'),
(38, 9, 'bot', '', '2026-03-13 14:43:20'),
(39, 1, 'user', 'xup', '2026-03-13 14:44:19'),
(40, 1, 'bot', '', '2026-03-13 14:44:46'),
(41, 1, 'user', 'Hi', '2026-03-13 14:45:01'),
(42, 1, 'user', 'hello', '2026-03-14 01:16:27'),
(43, 1, 'user', 'hello', '2026-03-14 01:18:01'),
(44, 1, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-14 01:18:01'),
(45, 1, 'user', 'deposit', '2026-03-14 01:18:07'),
(46, 2, 'user', 'hey', '2026-03-14 01:19:20'),
(47, 2, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-14 01:19:20'),
(48, 2, 'bot', 'hh', '2026-03-14 01:19:56'),
(49, 2, 'user', 'i', '2026-03-14 01:20:14'),
(50, 2, 'bot', 'n/a', '2026-03-14 01:20:28'),
(51, 9, 'bot', 'ok', '2026-03-19 22:33:43'),
(52, 16, 'user', 'hey', '2026-03-21 18:01:55'),
(53, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-21 18:01:55'),
(54, 16, 'user', 'Deposi', '2026-03-21 18:02:02'),
(55, 16, 'user', 'deposit', '2026-03-21 18:02:08'),
(56, 16, 'user', 'hey', '2026-03-21 18:02:22'),
(57, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-21 18:02:22'),
(58, 16, 'user', 'Move it', '2026-03-21 18:07:26'),
(59, 16, 'bot', 'Sorry, eya', '2026-03-21 18:07:57'),
(60, 16, 'user', 'Deposit', '2026-03-21 18:13:00'),
(61, 16, 'user', 'Withdraw', '2026-03-21 18:13:08'),
(62, 16, 'bot', 'Minimum withdrawal is â‚¦2,000. 25% fee applies. Payments processed within 24 hours.', '2026-03-21 18:13:08'),
(63, 16, 'user', 'hello', '2026-03-26 23:10:10'),
(64, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-26 23:10:10'),
(65, 16, 'user', 'deposit', '2026-03-26 23:10:16'),
(66, 16, 'bot', 'sorry', '2026-03-26 23:10:27'),
(67, 16, 'user', 'hello', '2026-03-27 05:55:11'),
(68, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-27 05:55:11'),
(69, 16, 'user', 'hello', '2026-03-27 05:55:14'),
(70, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-27 05:55:14'),
(71, 16, 'user', 'hello firend', '2026-03-27 05:55:20'),
(72, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-27 05:55:20'),
(73, 16, 'user', 'hello friend', '2026-03-27 06:00:58'),
(74, 16, 'bot', 'Hello! I am your Hallyvest assistant. How can I help you grow your investments today?', '2026-03-27 06:00:58'),
(75, 16, 'user', 'i want to deposit', '2026-03-27 06:01:06'),
(76, 16, 'user', 'recharge', '2026-03-27 06:01:12'),
(77, 16, 'user', 'dd', '2026-03-27 06:02:04'),
(78, 2, 'bot', 'Hello', '2026-04-07 14:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crashed_plans`
--

CREATE TABLE `crashed_plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `is_crashed` tinyint(1) DEFAULT 0,
  `manual_investors` int(11) DEFAULT 0,
  `fake_users` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `crashed_plans`
--

INSERT INTO `crashed_plans` (`id`, `plan_name`, `is_crashed`, `manual_investors`, `fake_users`) VALUES
(1, 'Starter', 0, 125, 160),
(2, 'Basic', 0, 75, 0),
(3, 'Standard', 0, 58, 0),
(4, 'Bronze', 1, 0, 0),
(5, 'Silver', 0, 0, 0),
(6, 'Gold', 0, 0, 7),
(7, 'Platinum', 0, 0, 0),
(8, 'Diamond', 0, 1, 0),
(9, 'Master', 0, 0, 0),
(10, 'Ultimate', 0, 0, 0),
(11, 'Emerald', 0, 0, 0),
(12, 'Sapphire', 0, 0, 0),
(13, 'Ruby', 0, 0, 0),
(14, 'Phoenix', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending',
  `denial_reason` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `reason` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `username`, `amount`, `screenshot`, `status`, `denial_reason`, `created_at`, `reason`) VALUES
(1, 1, 'Hally', '2000.00', 'uploads/proofs/1773109787_images.png', 'approved', '', '2026-03-10 02:29:47', NULL),
(2, 1, 'Hally', '2700.00', 'uploads/proofs/1773111204_images.png', 'declined', 'no', '2026-03-10 02:53:23', NULL),
(3, 1, 'Hally', '2700.00', 'uploads/proofs/1773111367_images.png', 'approved', '', '2026-03-10 02:56:06', NULL),
(4, 1, 'Hally', '4500.00', 'uploads/proofs/proof_1773148737_1.jpg', 'declined', 'no', '2026-03-10 13:18:57', NULL),
(5, 1, 'Hally', '3000.00', 'uploads/proofs/proof_1773148894_1.jpg', 'declined', 'no consention', '2026-03-10 13:21:34', NULL),
(6, 1, 'Hally', '2625.00', 'uploads/proofs/proof_1773149196_1.jpg', 'approved', '', '2026-03-10 13:26:37', NULL),
(7, 1, 'Hally', '7500.00', 'uploads/proofs/proof_1773156481_1.jpg', 'approved', '', '2026-03-10 15:28:02', NULL),
(8, 1, 'Hally', '225000.00', 'uploads/proofs/proof_1773202358_1.jpg', 'approved', '', '2026-03-11 04:12:39', NULL),
(9, 6, 'WiseTech', '1500.00', 'uploads/proofs/proof_1773254571_6.png', 'approved', '', '2026-03-11 18:42:51', NULL),
(10, 6, 'WiseTech', '1500.00', 'uploads/proofs/proof_1773254776_6.png', 'approved', '', '2026-03-11 18:46:16', NULL),
(11, 1, 'Hally', '15000.00', 'uploads/proofs/proof_1773254987_1.png', 'declined', 'No tewuitement met', '2026-03-11 18:49:47', NULL),
(12, 8, 'Tech', '1500.00', 'uploads/proofs/proof_1773282674_8.jpg', 'approved', '', '2026-03-12 02:31:14', NULL),
(13, 8, 'Tech', '3750.00', 'uploads/proofs/proof_1773282797_8.jpg', 'approved', '', '2026-03-12 02:33:17', NULL),
(14, 1, 'Hally', '3750.00', 'uploads/proofs/proof_1773444789_1.png', 'declined', 'no body', '2026-03-13 23:33:09', NULL),
(15, 11, 'Abdulkareem', '1500.00', 'uploads/proofs/proof_1773763800_11.', 'approved', '', '2026-03-17 16:09:59', NULL),
(16, 1, 'Hally', '1500.00', 'uploads/proofs/proof_1773872451_1.jpg', 'approved', '', '2026-03-18 22:20:52', NULL),
(17, 16, 'Samuel', '1875.00', 'uploads/proofs/proof_1773988829_16.png', 'approved', '', '2026-03-20 06:40:29', NULL),
(18, 16, 'Samuel', '12750.00', 'uploads/proofs/proof_1775070403_16.png', 'declined', 'No cn', '2026-04-01 19:06:44', NULL),
(19, 16, 'Samuel', '2000.00', 'uploads/proofs/proof_1775109897_16.jpg', 'approved', '', '2026-04-02 06:04:57', NULL),
(20, 16, 'Samuel', '1000.00', 'uploads/proofs/proof_1775122332_16.png', 'approved', '', '2026-04-02 09:32:13', NULL),
(21, 28, 'Kay Sam', '300.00', 'uploads/proofs/proof_1775454063_28.png', 'declined', 'TransactioÅ„s already aprroved', '2026-04-06 05:41:03', NULL),
(22, 28, 'Kay Sam', '300.00', 'uploads/proofs/proof_1775454191_28.png', 'approved', '', '2026-04-06 05:43:11', NULL),
(23, 16, NULL, '500.00', '1775671805_loading.gif', 'declined', '', '2026-04-08 18:10:06', 'no '),
(24, 16, NULL, '2000.00', '1775677466_unnamed (13).jpg', 'approved', '', '2026-04-08 19:44:26', NULL),
(25, 16, NULL, '2000.00', '1775677757_Snapchat-587734000.jpg', 'approved', '', '2026-04-08 19:49:17', NULL),
(26, 16, NULL, '2000.00', 'DEP_1775725523_16.png', 'approved', '', '2026-04-09 09:05:24', NULL),
(27, 23, NULL, '500.00', 'DEP_1775894669_23.png', 'pending', '', '2026-04-11 08:04:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `capital` decimal(15,2) DEFAULT NULL,
  `daily_earning` decimal(15,2) DEFAULT NULL,
  `total_return` decimal(15,2) DEFAULT NULL,
  `days_completed` int(11) DEFAULT 0,
  `status` enum('active','completed') DEFAULT 'active',
  `last_payout` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) DEFAULT 0.00,
  `profit_earned` decimal(10,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `user_id`, `plan_name`, `capital`, `daily_earning`, `total_return`, `days_completed`, `status`, `last_payout`, `created_at`, `amount`, `profit_earned`) VALUES
(1, 1, 'Starter', '2000.00', '480.00', '2400.00', 0, 'completed', '2026-03-10', '2026-03-10 13:00:35', '0.00', '0.00'),
(2, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-10', '2026-03-10 15:11:08', '0.00', '0.00'),
(3, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:06:26', '0.00', '0.00'),
(4, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:06:38', '0.00', '0.00'),
(5, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:09:00', '0.00', '0.00'),
(6, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:09:16', '0.00', '0.00'),
(7, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:13:07', '0.00', '0.00'),
(8, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:19:52', '0.00', '0.00'),
(9, 1, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 04:54:37', '0.00', '0.00'),
(10, 6, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-11 18:47:21', '0.00', '0.00'),
(11, 7, 'Ultimate', '2000000.00', '200000.00', '3000000.00', 0, 'completed', '2026-03-11', '2026-03-11 19:10:20', '0.00', '0.00'),
(12, 8, 'Starter', '2000.00', '200.00', '3000.00', 0, 'completed', '2026-03-11', '2026-03-12 02:33:41', '0.00', '0.00'),
(13, 1, 'Starter', '2000.00', '200.00', '3000.00', 5, 'completed', '2026-03-13', '2026-03-12 11:52:05', '0.00', '0.00'),
(14, 1, 'Starter', '2000.00', '200.00', '3000.00', 5, 'completed', '2026-03-13', '2026-03-14 00:24:34', '0.00', '0.00'),
(15, 1, 'Basic', '5000.00', '500.00', '7500.00', 0, 'completed', '2026-03-13', '2026-03-14 00:25:07', '0.00', '0.00'),
(16, 1, 'Basic', '5000.00', '500.00', '7500.00', 0, 'completed', '2026-03-13', '2026-03-14 00:26:56', '0.00', '0.00'),
(17, 1, 'Bronze', '20000.00', '2000.00', '30000.00', 0, 'completed', '2026-03-17', '2026-03-17 12:38:12', '0.00', '0.00'),
(18, 11, 'Starter', '500.00', '50.00', '750.00', 0, 'completed', '2026-03-19', '2026-03-19 08:21:48', '0.00', '0.00'),
(19, 11, 'Starter', '500.00', '50.00', '750.00', 0, 'completed', '2026-03-19', '2026-03-19 08:26:52', '0.00', '0.00'),
(20, 16, 'Starter', '500.00', '50.00', '750.00', 5, 'completed', '2026-03-20', '2026-03-20 06:42:36', '0.00', '0.00'),
(21, 16, 'Starter', '500.00', '50.00', '750.00', 5, 'completed', '2026-03-20', '2026-03-20 06:43:02', '0.00', '0.00'),
(22, 16, 'Starter', '500.00', '50.00', '750.00', 5, 'completed', '2026-03-26', '2026-03-26 19:46:05', '0.00', '0.00'),
(23, 16, 'Starter', '500.00', '50.00', '750.00', 5, 'completed', '2026-03-26', '2026-03-26 19:46:20', '0.00', '0.00'),
(24, 16, 'Basic', '2000.00', '200.00', '3000.00', 0, '', '2026-04-02', '2026-04-02 09:31:07', '0.00', '0.00'),
(25, 23, 'Starter', '500.00', '50.00', '750.00', 0, '', '2026-04-05', '2026-04-05 18:39:10', '0.00', '0.00'),
(26, 16, 'Starter', '500.00', '50.00', '750.00', 0, '', '2026-04-05', '2026-04-05 18:55:19', '0.00', '0.00'),
(27, 23, 'Starter', '500.00', '50.00', '750.00', 0, '', '2026-04-05', '2026-04-05 19:02:34', '0.00', '0.00'),
(28, 23, 'Starter', '500.00', '50.00', '750.00', 0, '', '2026-04-05', '2026-04-05 19:31:06', '0.00', '0.00'),
(29, 23, 'Starter', '500.00', '50.00', '750.00', 0, '', '2026-04-05', '2026-04-05 20:04:11', '0.00', '0.00'),
(30, 16, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-09 13:27:46', '0.00', '0.00'),
(31, 16, 'Gold', '10000.00', '3000.00', '15000.00', 0, '', NULL, '2026-04-09 13:50:50', '0.00', '0.00'),
(32, 16, 'Bronze', '1000.00', '300.00', '1500.00', 0, '', NULL, '2026-04-09 15:27:33', '0.00', '0.00'),
(33, 23, 'Bronze', '1000.00', '300.00', '1500.00', 0, '', NULL, '2026-04-10 17:39:56', '0.00', '0.00'),
(34, 23, 'Bronze', '1000.00', '300.00', '1500.00', 0, '', NULL, '2026-04-10 19:49:37', '0.00', '0.00'),
(35, 23, 'Bronze', '1000.00', '300.00', '1500.00', 0, '', NULL, '2026-04-10 19:49:46', '0.00', '0.00'),
(36, 23, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 20:10:14', '0.00', '0.00'),
(37, 25, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 21:09:39', '0.00', '0.00'),
(38, 45, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 21:18:11', '0.00', '0.00'),
(39, 48, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 21:19:38', '0.00', '0.00'),
(40, 16, 'Bronze', '1000.00', '300.00', '1500.00', 0, '', NULL, '2026-04-10 21:42:59', '0.00', '0.00'),
(41, 45, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 22:39:54', '0.00', '0.00'),
(42, 44, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-10 22:57:21', '0.00', '0.00'),
(43, 16, 'Silver', '5000.00', '1500.00', '7500.00', 0, '', NULL, '2026-04-11 09:02:34', '0.00', '0.00'),
(44, 48, 'Starter', '500.00', '150.00', '750.00', 0, 'active', NULL, '2026-04-11 15:43:32', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('Deposit','Withdrawal','Task','Investment') NOT NULL,
  `status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `nin` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `plain_password` varchar(255) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT 0.00,
  `referral_code` varchar(20) DEFAULT NULL,
  `referred_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bound` tinyint(1) DEFAULT 0,
  `is_banned` tinyint(1) DEFAULT 0,
  `reg_date` timestamp NULL DEFAULT current_timestamp(),
  `profile_pic` varchar(255) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `withdrawal_pin` varchar(4) DEFAULT NULL,
  `chat_mode` enum('automatic','manual') DEFAULT 'automatic',
  `limit_expiry` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `pin` varchar(10) DEFAULT '0000',
  `last_invest_date` date DEFAULT NULL,
  `role` int(1) DEFAULT 0,
  `telegram_chat_id` varchar(50) DEFAULT NULL,
  `claimed_referral_bonus` decimal(10,2) DEFAULT 0.00,
  `ban_reason` text DEFAULT NULL,
  `device_id` text DEFAULT NULL,
  `last_ip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `dob`, `nin`, `phone`, `email`, `password`, `plain_password`, `balance`, `referral_code`, `referred_by`, `account_bound`, `is_banned`, `reg_date`, `profile_pic`, `bank_name`, `account_number`, `account_name`, `withdrawal_pin`, `chat_mode`, `limit_expiry`, `status`, `pin`, `last_invest_date`, `role`, `telegram_chat_id`, `claimed_referral_bonus`, `ban_reason`, `device_id`, `last_ip`) VALUES
(17, 'Onyeke ', 'Ondugbe ', 'Precious ', 'Son Of A Lion', '2004-12-03', '69821188912', '08075664410', 'ondugbeonyeke@gmail.com', '$2y$10$.AcYZQ/L6QdiiHOKeu/O4OGag/heH4XgjQAVyRPP4FPiEFbDmlxZS', NULL, '200.00', 'SON 296', 'SAMU946', 1, 0, '2026-03-21 16:45:33', NULL, 'Opay', '8075664410', 'Onyeke Precious Ondugbe ', '1980', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(2, 'Genesis', '', 'Gen', 'gen', '2000-10-10', '123456789', '123456789', 'gen@gmail.com', '$2y$10$6SDtJ0EiUFIXNkYPYZpdy.yzNfpjZKs62e6kudcWfAXUagMW/uZRa', NULL, '200.00', 'GEN704', 'HALL340', 0, 0, '2026-03-10 01:35:34', 'uploads/2_ed98c23c3512a4f7e5b942f94b36a94e.png', NULL, NULL, NULL, NULL, 'manual', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(3, 'uni', '', 'lala', 'uni', '2000-10-10', '111111111', '1111111', 'aa@gmail.com', '$2y$10$8UGVgvbxRTdMeQgV2wqzvOSYP3nh/mh/vLRxEwfcp29Aq.jPzFbk6', NULL, '200.00', 'UNI580', 'HALL340', 0, 0, '2026-03-10 16:53:42', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(4, 'Akeju', '', 'Semilore ', 'Semilove', '2006-09-12', '25511453932', '070844085622', 'oluwasemiloreakeju2@gmail.com', '08f8e0260c64418510cefb2b06eee5cd', NULL, '200.00', 'SEMI373', 'UNI580', 1, 0, '2026-03-10 17:04:38', NULL, 'Opay ', '8029605739', 'Akeju semilore joyce', '3333', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(5, 'sam', '', 'sam', 'sam', '2000-10-10', '50000', '0785', 'a@gmail.com', '$2y$10$K6ZitzgdiWiLUw.fuOQlyeMKZLA9pHSG3V69e19qRPCEmN3Plf8TC', 'ccc', '0.00', 'SAM465', '', 0, 0, '2026-03-10 19:51:43', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(19, 'Pelumi', 'Hezekiah', 'Hezekiah', 'Pelumzi82', '2002-10-31', '25634555336', '07072353949', 'ajiboyepelumi81@gmail.com', '$2y$10$PhpVh9/TyglnwBD2/Ya9ZuLKuckYFWtqT4fwCKsclCLDR87cmV6vK', NULL, '200.00', 'PELU504', 'SAMU946', 1, 0, '2026-03-23 06:25:02', NULL, 'OPAY ', '9160981138', 'PELUMI HEZEKIAH AJIBOYE ', '1199', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(18, 'Amuta ', 'Precious ', 'Chidindu ', 'Stoneboy ', '2005-09-16', '45469949064', '07044093731', 'sboy58922@gmail.com', '$2y$10$YQsMmfDwpMfppATLLOqef.q/vPlPNOBp.RAST3OFUFX7wzLEV2/TW', NULL, '200.00', 'STON839', 'SAMU946', 0, 0, '2026-03-21 19:55:04', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(16, 'Samuel', '', 'Samuel', 'Samuel', '2006-05-18', '7043237547', '07075158977', 'digitalhallysam@gmail.com', '$2y$10$7fW6W3xefRYR8uMecjlkX.L3t4NDYV2c2Q0XTYrQkk4Bnym66ryEW', '112', '1575.00', 'SAMU946', '', 0, 0, '2026-03-20 06:38:42', 'uploads/user_16_1775664913.png', 'Opay', '7075158977', 'hally', '3333', 'manual', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '102.89.68.204'),
(9, 'Abrah5', '', 'Oluwatobi ', 'Abraham ', '1993-03-30', '95542284063', '9036532387', 'sandraoluwatobi59@gmail.com', '$2y$10$rapg6d0GnZSeeX0kGgje7.3bJKpbH/6sbTYSvrrRsPDEAQzmEokHK', NULL, '200.00', 'ABRA971', 'HALL340', 1, 0, '2026-03-12 07:59:48', NULL, 'Opa', '9036532387', 'Abraham Oluwatobi O', '1981', 'manual', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(11, 'Saheed ', 'Olasunkanmi ', 'Ayomide', 'Abdulkareem', '2006-07-23', '92374866121', '07077801730', 'saheedolasunkanmi415@gmail.com', '$2y$10$8f6dVcyGjXDA6gbJeGDkRONyCDlq/sHWHEjp2XPXdFl/eSltxwF7S', 'saheed', '350.00', 'ABDU153', 'HALL340', 1, 0, '2026-03-13 20:48:12', NULL, 'Opay ', '9153759773', 'Abdulkareem saheed olasunkanmi ', '8319', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(12, 'Agbada', '', 'Dinran', 'Agbada', '2000-10-10', '2345678', '23459765', 'agbadadinran@gmail.com', '$2y$10$3nOh7/q1ig011f7pQoxWp.UAATx86dKaSrnWlK.RFFKf7rdfrbG3W', 'aa', '0.00', 'AGBA531', '', 0, 0, '2026-03-14 05:57:08', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(13, 'Hally', '', 'Sam', '.josef_4576.', '2000-10-10', '87654', '4567', 'hal.hallysam@gmail.com', '$2y$10$mtzKQjijZl2o0234a7AyXO0XuRnqwppHXMQV72.cDHwsxaEcj.dTG', 'a', '0.00', '.JOS143', '', 0, 0, '2026-03-14 07:20:01', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(14, 'Hhyhhjk', 'Hhjnjgggh', 'Bbnngggy', 'Bhhgjjjjh', '2008-01-17', '0884564255', '07033208947', 'olaoluwaogundeji22@gmail.com', '$2y$10$HCmmT61p0ueFyUnAoY0Rn.9Wr4Wy9Gm1B0FuylROjDEEfDvh5me5W', 'oluwafera', '200.00', 'BHHG759', 'HALL340', 1, 0, '2026-03-14 18:57:43', NULL, 'Opay', '9036025947', 'Lawrence olaoluwa ogundeji', '7070', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(15, 'you', '', 'you', 'you', '2000-10-10', '1234567', '12345678', 'ss@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa', '0.00', 'YOU115', '', 0, 0, '2026-03-18 23:37:03', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(20, 'Daniel ', 'James ', 'Paul', 'danny', '2004-03-25', '59156523121', '09037716017', 'danilife333@gmail.com', '$2y$10$0SWBiUqLwPFNlF8TCFfYyOSmDteDQrSeDyVlws.k.nrWW5awnjF2e', NULL, '200.00', 'DANN318', 'SAMU946', 0, 0, '2026-03-25 18:06:48', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(21, 'Bariayah', '', 'Mene-akekue', 'Leayas', '1983-04-29', '44317760692', '08038937611', 'meneayah@gmail.co', '$2y$10$MztinJWvtW3uaMUyk7wFbOsK194bijvMKRxAGRAy5Avozh.rAhDvq', NULL, '0.00', 'LEAY184', '', 0, 0, '2026-04-01 11:10:43', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(22, 'Usman', 'umar', 'aji', 'Usmanaji', '2007-03-06', '534158971', '08101212284', 'usmanumaraji39@gmail.com', '$2y$10$9QB46b.xH2fAB86TsU5eHOs2MhwXqqBqENS0diT.vgVjD3B3Uis6G', NULL, '200.00', 'USMA297', 'SAMU946', 1, 0, '2026-04-03 14:39:38', NULL, 'Ooay', '8101212284', 'Usman aji unar', '2284', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(23, 'Ojurere ', 'Oluwa', 'oluwa', 'Favourite ', '2009-01-21', '10278391347', '08021080391', 'ojurereoluwa643@gmail.com', '$2y$10$Cmj2viOqljBSGDJQmcpDLej1N/pTTMf1sczJmhFiCtTr6bkocq3wK', 'ojurere', '444.00', 'FAVO300', 'SAMU946', 1, 0, '2026-04-05 18:33:44', 'uploads/user_23_1775895153.jpg', 'Lydia Abidemi Ayoola ', '8021080391', 'Favourite ', '2009', 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'Multiple Account Detection', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.83.91'),
(24, 'Ayomide ', '', 'Nathaniel ', 'Sonofgrace321', '2005-10-31', '', '09019100321', 'nathanielayomide2006@gmail.com', '$2y$10$JisVsL3Pd1nl1jgox392auK0Go.SC1ZlDRH60rlervkTqso4IX2wG', NULL, '400.00', 'SONO616', 'FAVO300', 1, 0, '2026-04-05 18:52:52', NULL, 'Opay', '9019100321', 'Sonofgrace321', '2006', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(25, 'Philip', 'Joy ', 'Ojugbo ', 'Joyce234', '2007-08-27', '', '09060235693', 'philipjoyojugbo@gmail.com', '$2y$10$u1GhO04M64SR0KnPcp2pfea.TqLlX/z9b3Lc9cCe7X6nxn2ZeyAke', 'Margaret234', '100.00', 'JOYC970', 'FAVO300', 1, 0, '2026-04-05 18:56:26', NULL, 'Opay ', '9060235693', 'Ojugbo joy Philip ', '6023', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '102.89.69.128'),
(26, 'Favour ', 'Debby ', 'Taiwo', 'Flavy gal ', '2009-01-21', '', '08021080391', 'anitajessicajohnson@gmail.com', '$2y$10$OroJzqwa6DK6aLOQ.3.qGOAT0tXUonEmLjHgU6Hc/uBRkQcmIQDfW', NULL, '200.00', 'FLAV435', 'FAVO300', 0, 0, '2026-04-05 18:59:29', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'This phone number is already registered to an older account.', NULL, NULL),
(27, 'Toyin', 'Oriola ', 'Taiwo ', 'oriolatoyin70@gmail.com', '2003-08-08', '', '09112918320', 'oriolatoyin70@gmail.com', '$2y$10$./6U5o8jHE1tNK1P9MRJ8eN8L.6V4juoiuAqYDPYbRJ8NCNpA9JRS', NULL, '200.00', 'ORIO470', 'SONO616', 1, 0, '2026-04-05 19:07:34', NULL, 'Opay', '9123499429', 'Funke modupe oriola', '8699', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(28, 'Akintunde ', 'Samuel ', 'Kehinde ', 'Kay Sam', '2008-01-21', '', '08022443493', 'samuelakintunde101@gmail.com', '$2y$10$ViirD431/t6gSTq3/EHC..P5tv8KkzMxTNOMAuVoM7fJcANkdE3G2', '953710@As', '425.00', 'KAY 390', 'FAVO300', 0, 0, '2026-04-05 19:11:32', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '102.89.68.204'),
(29, 'Ayoola ', 'Godwin ', 'Elijah ', 'God\'s grace ', '2008-01-21', '', '07071380792', 'danielwileyrobinson@gmail.com', '$2y$10$LeIBwRidkAYyZBtNp/tiw.0vHpzkVtQElOrgBt/JIqwxVC4uvjcJS', NULL, '200.00', 'GOD394', 'FAVO300', 0, 0, '2026-04-05 19:29:42', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(30, 'Taiwo ', 'Awonusi', 'Goodness ', 'Awonusi ', '2008-05-12', '', '07066387187', '37@ilemoboro', '$2y$10$DCvO0Slin3hJ19Qx6vbFjuuwYOaV9tIyVpBReMe.9pammn1EqJMOq', 'Awonusi1', '200.00', 'AWON775', 'FAVO300', 0, 0, '2026-04-05 19:33:26', NULL, 'OPay', '7066387187', 'Awonusi ', NULL, 'automatic', NULL, 'active', 'Awonusi1', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '102.88.112.88'),
(31, 'Philip', 'Testimony ', 'Ojugbo ', 'Testimony234 ', '2006-07-25', '', '09060235693', 'philipjoyojugbo@gmail.com', '$2y$10$hS7dQtmzOdNPgsDKa.GRl.3fJhLJh8nr0ETlqR6vbUl/ETT7NxKYG', NULL, '200.00', 'TEST529', 'JOYC970', 0, 0, '2026-04-05 19:40:22', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'This phone number is already registered to an older account.', NULL, NULL),
(32, 'Adeoye ', 'Boluwatife ', 'Adewumi ', 'Tife', '2007-08-13', '', '08135248094', 'boluwatifeadeoye749@gmail.com', '$2y$10$X1s5G41j1Zsrav2iY7WJ8ueCSPF9PI3jrv.FA8vn6C.JlTBLUvioC', NULL, '200.00', 'TIFE274', 'JOYC970', 0, 0, '2026-04-05 19:40:52', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(33, 'Lydia ', 'Jane', 'Joy', 'Lydia ', '2005-10-15', '', '07032980693', 'alfreddarrellbrier@gmail.com', '$2y$10$688m6KZAscMRL6FJf2Q/G.ewj4pf38.ykOh..iwBvZvdjP7qW6xfu', NULL, '200.00', 'LYDI324', 'FAVO300', 0, 0, '2026-04-05 19:59:35', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, NULL, NULL),
(34, 'Gabriel ', 'Taiwo ', 'Man', 'Godly man ', '2000-08-31', '', '08032372853', 'lunaricci643@gmail.com', '$2y$10$0iWaEYDbznT9U4LCfbBBmeJ4vQvDzhHCgkpsTmprB64/fGo94610C', NULL, '200.00', 'GODL915', 'FAVO300', 0, 0, '2026-04-05 20:03:06', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'This device is already managing an account.', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.85.70'),
(35, 'Hally', 'Jessica', 'Sam', 'Hally', '2000-10-10', '', '070744473640', 'anitajessicajohnson@gmail.com', '$2y$10$2qOfBE6PfvpmEoUBfqIuTuMk1EBpWKEOS2XP.iFkvxiMQGnoFlof.', NULL, '200.00', 'HALL123', 'SAMU946', 0, 0, '2026-04-05 20:16:46', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'Email linked to an older account.', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '102.89.82.231'),
(36, 'Mary', '', 'Stone', 'Stone', '2000-10-10', '', '123445679', 'aa@gmail.com', '$2y$10$Ma5n/xpOszA06022Ebf9CuyjhLB5XR0iTRM1AxpvhdD99GVx9Xsxi', NULL, '200.00', 'STON307', 'SAMU946', 0, 0, '2026-04-05 20:18:48', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'Email linked to an older account.', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '102.89.82.231'),
(37, 'Muhammed', 'Ridwan', 'idowu', 'Idowu', '2000-11-15', '', '08144538387', 'muhammedridwanidowu@gmail.com', '$2y$10$89xUW8g1BGFjiPAby7jSFeKzWhAk60hRpaR3T5AwP3hrMyg5.CsyG', NULL, '200.00', 'IDOW636', 'JOYC970', 0, 0, '2026-04-05 21:43:10', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'This device is already managing an account.', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.82.66'),
(38, 'Philip ', 'Margaret', 'Abiodun ', 'Feranmi ', '2003-12-29', '', '07076406926', 'linaalice591@gmail.com', '$2y$10$eMPU4YbHp/tMd7wWjeqaB.RfW.BkHrT6Vmx8BWWIaEUCUnu0J9eZa', NULL, '200.00', 'FERA993', 'JOYC970', 0, 0, '2026-04-05 21:51:28', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'Multiple accounts detected on this network.', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '102.89.82.66'),
(39, 'Ella ', 'Hazz', 'Hazz', 'Ella', '2001-03-06', '', '+2349135914951', 'balogunmohammed23@gmail.com', '$2y$10$s4eagUHFWJM9eDG3d.zNBO9XQnXciCQSez1RXw6ialJe7WuGCicsK', NULL, '200.00', 'ELLA361', 'SAMU946', 1, 0, '2026-04-06 20:12:19', NULL, 'Opay ', '7031222290', 'Balogun hasanutu', '1234', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/19H218 Safari/604.1 [FBAN/FBIOS;FBAV/554.0.0.38.78;FBBV/917646558;FBDV/iPhone9,2;FBMD/iPhone;FBSN/iOS;FBSV/15.7.2;FBSS/3;FBID/phone;FBLC/en_US;FBOP/5;FBRV/927649838;IABMV/1]', '102.89.85.182'),
(40, 'Anita', 'Jessica', 'Johnson', 'Johnson', '2001-10-12', '', '63u9032575', 'aitha@outlook.com', '$2y$10$Bb8SXWGJ7cZyaif3OskiP.nhp0giSBl66K3jBVoNad/N/Ht.ttWca', NULL, '0.00', 'JOHN636', '', 0, 0, '2026-04-06 20:59:46', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '1.00', 'This device is already managing an account.', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '102.89.68.228'),
(86, 'John', 'Ikusika ', 'Towumi ', 'ikusikaaderonke@gmail.com', '1980-12-31', '', '08063123131', 'ikusikaaderonke@gmail.com', '$2y$10$vUMB.E.FKU.nNiDp2r/lEeNgDrfpqsUJ8v9vsNdrHdxM3Wanm1ihS', 'ikusika', '0.00', 'IKUS629', 'Hey', 0, 0, '2026-04-11 10:20:30', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.7 Mobile/15E148 Safari/604.1', '102.93.11.37'),
(41, 'Emma', '', 'Nuel', 'Nuel', '2008-04-01', '', '25804', 'az@outlook.com', '$2y$10$NNXsKwL9QtGFmfuUQg.wpuKwd6Y10sEPZqzUx6ust6EoR29f3ipgy', '1qa', '200.00', 'NUEL172', 'SAMU946', 0, 0, '2026-04-07 09:28:22', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 8.1.0; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.179 Mobile Safari/537.36 Telegram-Android/12.5.1 (Iyou iYOU_M2; Android 8.1.0; SDK 27; LOW)', '102.89.82.78'),
(43, 'Mike', '', 'Wike', 'wike', '2000-10-10', '', '44822', 'a@bbb.com', '$2y$10$XiPHJC5PomNRlarm3ebXnuBAPAzDC.cGlwKEdXJqVeHFnH3mznnSq', '  ', '0.00', 'WIKE686', 'SAMU946', 0, 0, '2026-04-09 21:37:57', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '84.17.35.248'),
(42, 'Ola', '', 'Mide', 'Mide', '2000-10-10', '', '456tyy787654', 'asdf@gmail.com', '$2y$10$u11VeQG1TwVSayWgtFxCY.tvnjeZr2eBczg4P0AJmWh64tPQHN9eu', '222', '0.00', 'MIDE947', 'SAMU946', 0, 0, '2026-04-09 17:56:22', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Multiple Account Detection', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '102.91.4.200'),
(44, 'adegbola', 'Isaiah', 'Sileola ', 'Isaiah', '2009-11-12', '', '08087180887', 'adegbolaisaiah879@gmail.com', '$2y$10$zhDnWkAMIS0Mc/1OGfOdhuglLi/Wb231ZSBNivl8W2Hv.7.R0wRRS', 'Isaiah@44152348', '300.00', 'ISAI768', 'FAVO300', 0, 0, '2026-04-10 20:00:21', NULL, 'OPay', '7061048326', 'Ronke olwayemisi adegbola ', NULL, 'automatic', NULL, 'active', '4415', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.113.20.20'),
(45, 'Adefisoye', ' Precious ', 'Oluwaseyi ', 'Holuwaseyi', '2008-05-29', '', '09025025858', 'preciousoluwaseyi07@gmail.com', '$2y$10$rHELrir2m8WYQZMSCQ0GzuTVATB72QILuApMcnfU/rm7RITUdDXDW', '147258', '200.00', 'HOLU105', 'FAVO300', 0, 0, '2026-04-10 20:05:51', NULL, 'OPay', '9025025858', 'Adefisoye precious Oluwaseyi ', NULL, 'automatic', NULL, 'active', '147258', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', '105.119.40.184'),
(46, 'Ezkando ', 'Banty', 'Commander ', 'Ezkando ', '2007-04-23', '', '08148119776', 'omotayohezekiah6@gmail.com', '$2y$10$4PmfjvnPcp3/iC6G/lq6Q.oQUE94vgJvo4FjOPTHibfzB8YXdH8S6', 'Command,123', '400.00', 'EZKA857', 'ISAI768', 0, 0, '2026-04-10 20:11:27', NULL, 'Palmpay', '9121166960', 'Omotayo Fadekemi Eunice ', NULL, 'automatic', NULL, 'active', '0912', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 8.0.0; BND-L21 Build/HONORBND-L21) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36', '105.119.24.95'),
(47, 'Tope', 'Emmanuel ', 'Atoyebi ', 'Topzy', '2007-03-04', '', '09120199390', 'topeatoyebi5@gmail.com', '$2y$10$dsKZfsDoX9ue0W6loNhw0OFxMwLHOLv5KLawbRjkoCdnzgY75YUX2', 'Atoyebi123', '0.00', 'TOPZ612', 'EZKA857', 0, 0, '2026-04-10 20:14:30', NULL, 'OPay', '9134049858', 'Atoyebi tope ', NULL, 'automatic', NULL, 'active', '2007', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.119.7.35'),
(48, 'Segun', '', 'Jimoh', 'jimohsegun601@gmail.com', '2004-10-14', '', '8134434185', 'jimohsegun601@gmail.com', '$2y$10$l71Oc6G0J2lIQP0qPL9AE.yefG.ByC8qs9risZ6.GXAwYLWIo7HLS', 'Pablo,123', '0.00', 'JIMO809', 'EZKA857', 0, 0, '2026-04-10 20:21:47', 'uploads/user_48_1775859862.jpg', 'OPay', '8134434185', 'Nasiru segun jimoh ', '2580', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '197.210.53.191'),
(49, 'Afon ', 'Kehinde ', 'Bukola ', 'Anuke ', '2009-10-09', '', '08066424273', 'anikeade274@gmail.com', '$2y$10$RskmqwR8Wnz5v/UEWMeUqOBBGqocYSttGoNmwyqf6eNVJbyZAPERO', '3660', '0.00', 'ANUK325', 'HOLU105', 0, 0, '2026-04-10 20:34:48', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_11 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Mobile/15E148 Safari/604.1', '102.89.83.17'),
(50, 'Adefisoye', 'ayomide', 'Oluwadarasimi', 'hay why', '2006-12-12', '', '09063279136', 'oluwadarasimiayomide091@gmail.com', '$2y$10$hmyy5RnCDBPmFC2PDOcZQetgVs/zYGyE3n4VnXX2WCkLl.UKk62Ie', '2008', '0.00', 'HAY 177', 'HOLU105', 0, 0, '2026-04-10 20:35:35', NULL, 'OPay', '9063279136', 'Adefisoye abosede sileola', NULL, 'automatic', NULL, 'active', '2008', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '102.93.9.105'),
(51, 'Adeyemi ', 'Emmanuel ', 'Adelakin ', 'Ade123', '2006-08-25', '', '09026211923', 'adelakinadeyemi001@gmail.com', '$2y$10$bY7nThgp9G/RkZ/lm27Bz.AxxxXZPV35CdIhyXSOrUBwTyHH8yyT2', 'ade123', '0.00', 'ADE1203', 'FAVO300', 0, 0, '2026-04-10 20:46:34', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; U; Android 14; en-us; 24048RN6CG Build/UP1A.231005.007) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/146.0.7680.177 Mobile Safari/537.36 Lite Browser/4.12', '197.211.63.85'),
(52, 'imole', 'Friday ', 'emma', 'Joseph ', '2005-02-05', '', '07077518730', 'jimoleayo78@gmail.com', '$2y$10$qsWsCqGjNuhRi1P4itGYeu8jsFk/UWSoep7IxkbS1WPKsLdubSKby', 'Imole@123', '0.00', 'JOSE877', 'JIMO809', 0, 0, '2026-04-10 20:46:42', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G9500 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/9.0 Chrome/67.0.3396.87 Mobile Safari/537.36', '102.89.85.159'),
(53, 'Akingbola ', 'Adenike ', 'Marvellous ', 'Ike ãdë', '2008-05-20', '', '09067314586', 'ebuna463@gmail.com', '$2y$10$E.DoDVK8INWhks9iCu5X3uivUVo.Y2XT2bc7Mq3ed6/NSItoQS/26', '4548', '0.00', 'IKE 691', '', 0, 0, '2026-04-10 20:52:17', NULL, 'OPay', '9067314586', 'Ike ãdë', NULL, 'automatic', NULL, 'active', '4548', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '102.89.82.81'),
(54, 'Oreoluwa ', 'Elijah ', 'Sunday', 'Oram', '2009-03-27', '', '07083594850', 'oreoluwaelijah29@gmail.com', '$2y$10$70Sx3U81qjT0gb7GCVPk9.TLfjntvLBZOemwTmSBvcLasrRPQFTWm', 'ore2011', '0.00', 'ORAM761', 'HAY', 0, 0, '2026-04-10 20:53:36', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.113.17.149'),
(55, 'adegbola', 'Sileola ', 'Isaiah', 'Theguy', '2007-11-12', '', '07061048326', 'l.mlauramegan@gmail.com', '$2y$10$sCSc7w51afmQ/yDy7xDZ1.cjce3j6rr6nW4H8ln8mflVbI90zBHSm', 'Isaiah@44152348', '0.00', 'THEG498', 'ISAI768', 0, 0, '2026-04-10 20:59:12', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.119.28.39'),
(56, 'Adegbulugbe', '', 'Omotoyosi', 'Damola', '2008-08-25', '', '08062816436', 'adegbulugbeomotoyosi@gmail.com', '$2y$10$giRwREQqUlx7rbMmzCBs4.aObi9WuVhFeeyyOM57mnfGtSrI4ArBq', 'marvey25', '0.00', 'DAMO837', 'FAVO300', 0, 0, '2026-04-10 20:59:24', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; U; Android 11; TECNO KG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/146.0.7680.166 Mobile Safari/537.36 OPR/77.0.2254.69906', '102.89.85.76'),
(57, 'Olajide', 'Shehu', 'Opeyemi ', 'Olajideshehu1710', '2007-10-17', '', '09053664091', 'olajideshehu1710@gmail.com', '$2y$10$/J/UgptNZ4Zz1im5quXsLuK6ErMw5vTsWLdGrML.i8lLFxKQINUXW', 'SHEHU1710', '0.00', 'OLAJ803', 'HOLU105', 0, 0, '2026-04-10 20:59:40', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '197.211.63.171'),
(58, 'AM', '', 'In', 'Inna', '2001-10-10', '', '44329', 'bb@gmalil.com', '$2y$10$EunBxzbiX6KUZRSzXwN34.pptyiJVK.rwDLQKE5xe7owxvTJE3wqS', 'zz', '0.00', 'INNA196', 'SAMU946', 0, 0, '2026-04-10 21:03:47', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '91.196.69.196'),
(59, 'Afon', 'Kehinde ', 'Bukola ', 'Anike ', '2009-10-09', '', '08066424273', 'anikebukola274@gmail.com', '$2y$10$TTRp2KY5x//dhY36iL87wuaDPFaeKCbIRrc9PTELInh4AG5v6dy7u', '3660', '0.00', 'ANIK130', 'HOLU105', 0, 0, '2026-04-10 21:06:12', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_11 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Mobile/15E148 Safari/604.1', '102.89.83.17'),
(60, 'bm', '', 'bb', 'bbb', '2001-10-10', '', '8866', 'aa@aaaaa.com', '$2y$10$yE2CwjUdEt29fGJJz2c57.j33dAsOIjhTV0.kbZKWI8./5ztajRwO', 'v', '0.00', 'BBB281', 'SAMU946', 0, 0, '2026-04-10 21:06:26', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '45.11.80.159'),
(61, 'Olajide ', 'Shehu ', 'Opeyemi ', 'Opeyemi2007', '2007-10-17', '', '09070976004', 'olajideshehu2007@gmail.com', '$2y$10$TyZv3C20cKYmffarEJ7Z5eJ.V1qGGBBIb6ud.Sw9IYMxPwu3qM9Zq', 'SHEHU1710', '200.00', 'OPEY539', '', 0, 0, '2026-04-10 21:07:09', NULL, 'Palmpay', '9070976004', 'OLAJIDE SHEHU OPEYEMI', '2007', 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '197.211.63.171'),
(62, 'Jimoh', 'nusirudeen', 'segun', 'igiowo', '2004-10-14', '', '09015215026', 'abdulazizadegoke@gmail.com', '$2y$10$/BhBx6Yb9ZrLd0EuZeVc2.6u.uJrCn.9AAeZlx5rnYxbwMPJ7nV62', 'abdul', '0.00', 'IGIO502', 'JIMO809', 0, 0, '2026-04-10 21:09:29', NULL, 'OPay', '9015125026', 'Adegoke abdulzeez olatunbosun', '2004', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '105.119.40.54'),
(63, 'Richard', 'Ayomide ', 'Ilemobayo', 'Richie money', '2008-07-07', '', '09026477487', 'ilemobayor56@gmail.com', '$2y$10$FOZ8QW09nVzp0TZgVH7IFu7SO9DyvDIy1rGG1.y56Hu4GhUwNd7YW', 'Ayomide1', '0.00', 'RICH226', 'Isaiah', 0, 0, '2026-04-10 21:11:20', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '105.119.7.118'),
(64, 'bo', '', 'nb', 'nbb', '2001-10-10', '', '999', 'aq@q.io', '$2y$10$fH0YYzz6ltQZBwwjwfDyYuIHjqqb.itBkKG5Q2AnnBuozjSbzHKqS', 'a', '0.00', 'NBB514', 'Samuel', 0, 0, '2026-04-10 21:12:17', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '45.11.80.159'),
(65, 'www', '', 'www', 'www', '2001-10-10', '', '45676543', 'asd@aaaaq.mm', '$2y$10$KnC147sDZGwa83Zaq3AYYukvzmYt8qpawXMjQJGvvrR1FWitWAEfG', 'az', '0.00', 'WWW119', 'Samuel', 0, 0, '2026-04-10 21:13:49', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '45.11.80.238'),
(66, 'tt', '', 'mm', 'ttmm', '2001-10-10', '', '076789', 'a@a.a', '$2y$10$a3sA.SSX8BMVWcvTGZP2e.JIIH6XWotT38k38zF7k/sjBMHvIJx0K', 'a', '0.00', 'TTMM664', 'Samuel', 0, 0, '2026-04-10 21:19:32', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '185.214.97.160'),
(74, 'bb', '', 'sss', 'ccc', '2001-10-10', '', '999', 'sdf.sdf@f.v', '$2y$10$WYMA1yTxUEoWTwdhTJwwZeQKpX.ig1JFOs.25oMAaCWLU/MYVpF2.', 'b', '0.00', 'CCC731', 'Samuel', 0, 0, '2026-04-10 22:21:28', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '103.107.196.172'),
(68, 'Oladosu ', 'Iyanu ', 'Precious ', 'oladosuiyanupre', '2007-02-18', '', '08135476098', 'iyanuprecious80@gmail.com', '$2y$10$0PakxVQW/ehFziprvTik3ej6uSI1VrpJlTnENo6dKVr0RXmW5B4aO', 'OPEY539', '0.00', 'OLAD628', 'Opeyemi2007', 0, 0, '2026-04-10 21:25:48', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.69.39'),
(69, 'Akinboboye ', 'Oyindamola ', 'Israel ', 'Sugar001', '2005-11-21', '', '08168710470', 'akinboboyejibayo@gmail.com', '$2y$10$vl5mi5kcRDuHKYX6WonUQetBpsWyEn.1./zOsH0al7DMUVk9.dnTu', 'sugqrity1', '600.00', 'SUGA740', 'Holuwaseyi', 0, 0, '2026-04-10 21:27:03', NULL, 'OPay', '8168710470', 'Akinboboye Oyindamola Israel ', '8168', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.69.158'),
(70, 'Akinrata ', 'Nelson ', 'Oluwashola ', 'Aki@123', '2006-05-08', '', '09010734800', 'akinratanelson@gmail.com', '$2y$10$cg9FxnwnPL407qFy1BfVNO6E.KpuNlI7BHe52NRqKRijA0.0pL7VC', 'Aki@123', '0.00', 'AKI@212', '', 0, 0, '2026-04-10 21:30:37', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.119.7.178'),
(71, 'Samuel ', 'Alex ', 'Odunlami ', 'Ninja001', '2007-12-01', '', '08149315091', 'samuelodunlami1234@gmail.com', '$2y$10$GoNcY8RgVG45c9wmQupGKux7hh8OXV5oo/gpgFiFm13Z4l30OWGz.', 'samuel1234', '0.00', 'NINJ652', 'Sugar001', 0, 0, '2026-04-10 21:47:03', NULL, 'OPay', '9112838663', 'Odunlami Samuel Oluwanifemi ', '2008', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.32.79'),
(72, 'Oluwasefunmi ', 'Comfort ', 'Ajayi ', 'Oluwasefunmi comfort ', '2005-08-22', '', '09024316342', 'comfortoluwasefunmi68@gmail.com', '$2y$10$4tbTfHiKyKqb3CaBAnDmk.mXlbRID31BYoY.alGw5OEMSLo07LBy2', 'Comfort', '0.00', 'OLUW662', 'Sugar001', 0, 0, '2026-04-10 21:53:37', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.82.85'),
(73, 'iwalaiye ', 'victoria ', 'modupeoluwa ', 'modupeoluwa ', '2007-02-17', '', '08127932295', 'victoriamodupeoluwa@gmail.com', '$2y$10$HkWGt77e4SCKFUL0jdb0buBQocnIH8DkUFqMP/ijhnrkdaWYdJD4a', 'victoria123', '0.00', 'MODU886', 'Sugar001', 0, 0, '2026-04-10 22:01:35', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '102.88.115.193'),
(75, 'Michael ', 'Aduragbemi ', 'Oluwarantimi ', 'Verified_media', '2006-09-17', '', '07075884980', 'omojofodunmimichael955@gmail.com', '$2y$10$7VMWnwujMYtkEo05a.PNVOl5Gn/fr5KmS7TxPFAUR7ztYwwiQW/c2', '@Oluwamodupe111', '0.00', 'VERI235', 'jimohsegun601@gmail.com', 0, 0, '2026-04-10 22:22:14', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '105.119.20.129'),
(76, 'Love', '', 'Magret', 'Lovert', '2005-04-30', '', '08147195805', 'jimohnasiru641@gmail.com', '$2y$10$oa/0bA72idrsuaNWQkYn8.bTyC0M6xVvNv0618OEkQzWvhZHX5nZq', 'Pablo,123', '0.00', 'LOVE418', 'JIMO809', 0, 0, '2026-04-10 22:31:57', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.88.110.41'),
(77, 'Sam', 'Sunday ', 'Sunday ', 'Sunday ', '2004-08-14', '', '09045752777', 'weworld599@gmail.com', '$2y$10$S7rdrXzAmp0DLcNgtkASNu013iuofQ6MI69PVy9pX7KTietjrE.gq', 'Pablo,123', '0.00', 'SUND503', 'JIMO809', 0, 0, '2026-04-10 22:37:54', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.88.110.41'),
(78, 'Hassanat ', 'Ajoke ', 'Olamhiposi ', 'Ajoke', '2009-03-02', '', '09066955017', 'hassanatajoke634@gmail.com', '$2y$10$kIMvP8PuhT2E5M8AeVhqouQb2BR9usgMiZDKQ6oqIIvWLuyMTEI6K', 'ajoke123', '0.00', 'AJOK917', 'JIMO809', 0, 0, '2026-04-10 22:47:08', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '102.89.82.237'),
(79, 'Chijindu', 'Johnpaul', 'Nnamani', 'John paul', '2008-10-04', '', '07025010320', 'johnpaulchijindunnamani78@gmail.com', '$2y$10$WFJ54PoU1WL3eJ1Cn8L6K.YGhUG.Uc2QrH07UtYlDp9F2oNDlRUWG', '787878', '0.00', 'JOHN283', 'SAMU946', 0, 0, '2026-04-10 22:55:40', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 8.1.0; Infinix X650) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '197.210.71.253'),
(80, 'Henry ', 'Lora ', 'Joshua', 'Josh key', '2005-11-12', '', '08066670682', 'lorahenry93@gmail.com', '$2y$10$47/lwza.E72akuKCEXr9eOKz0jNXB24D/8P5dgmBLueE56XaocOSK', 'Isaiah@12345', '0.00', 'JOSH499', 'ISAI768', 0, 0, '2026-04-10 22:56:21', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '105.113.20.82'),
(81, 'Folarin', 'Qureeb ', 'Olamide', 'loner', '2006-10-25', '', '08072099115', 'folarinolamide534@gmail.com', '$2y$10$zHdlfBwMO66yfnMq9PpDzeDAf0OGFQDCvmKpbjC9BHMfcJ4sfqAzC', 'zxcvbnm12', '0.00', 'LONE925', 'SUGA740', 0, 0, '2026-04-11 01:43:50', NULL, 'Palmpay', '8072099115', 'loner', '9115', 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '129.205.124.214'),
(82, 'ooo', '', 'ccc', 'Zxcvb', '2001-10-10', '', '42924', 'aaaa.ww@aa.c', '$2y$10$w1C15LSbzgbH9zANiODLh.HDyIpFny3VLmLFTSeJRLTfH7qD8H6wa', 'm', '0.00', 'ZXCV500', 'SAMU946', 0, 0, '2026-04-11 04:56:41', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '185.250.39.240'),
(83, 'Fabusiwa', '', 'Precious ', 'FABZ', '2009-09-23', '', '08157805849', 'fabulousfire123@gmail.com', '$2y$10$MvKj/y0c97qoGbICuCQ8suhczsDAprsKXt7ELiSZBdAtep2ZEqSBG', 'temzy2009', '0.00', 'FABZ812', 'HOLU105', 0, 0, '2026-04-11 05:47:52', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '102.89.68.77'),
(84, 'EZE ', 'Mercy ', 'Chidinma ', 'Chi Baby', '2008-09-23', '', '09068779497', 'mercyeze@gmail.com', '$2y$10$XOONhhCBFhVJkoRYB3vY3uuUjHKPQabiPzJtaf8Ko5Yicb7rq4HN6', 'mercy2309', '0.00', 'CHI 450', 'JOSE877', 0, 0, '2026-04-11 07:00:58', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Mobile/15E148 Safari/604.1', '102.89.68.253'),
(85, 'Kehinde', 'Femi', 'David ', 'DAVIDS ', '2007-04-19', '', '08157348520', 'davidkehinde091@gmail.com', '$2y$10$egpQdlbo.dP/HalTvxxqf.xxhFNuLlaONn6UdEF.dE1Rr2erHwtfK', 'kehinde123', '0.00', 'DAVI715', 'ISAI768', 0, 0, '2026-04-11 07:09:41', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '1.00', NULL, 'Mozilla/5.0 (Linux; Android 9.1; OPPO A57 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.85 Mobile Safari/537.36', '197.211.57.36'),
(87, 'Adefisoye', 'ayomide', 'Oluwadarasimi', 'Its opk jnr', '2009-12-12', '', '09063279136', 'adefisoyeayomide@gmail.com', '$2y$10$isvoanyPM1xu6iTDTaAALue8cSr/Y.m1FbItLL0QZRLqYRMaeE5RO', '2011', '0.00', 'ITS 970', '', 0, 0, '2026-04-11 10:34:59', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'banned', '0000', NULL, 0, NULL, '0.00', 'Duplicate Identity/Device', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '102.93.9.105'),
(88, 'Femi ', 'Ayomide', 'Femi', 'Femi ', '2009-12-11', '', '06115648658', 'femiayomide321@icloud.com', '$2y$10$eBYYPhToBZkywDPFWBLB0.i8Tl1DBHZB6paRte0O9gphI55a5OTTm', 'Ayomide', '0.00', 'FEMI364', 'HAY', 0, 0, '2026-04-11 10:41:18', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '102.89.83.57'),
(89, 'Sileola', 'Blessing', 'fayoke', 'ilemobayo', '2008-12-31', '', '07068547997', 'ilemobayoblessing242@gmail.com', '$2y$10$URWI7JZtJKBxLitcRSPoAeFAGcWsZbRGLN.PvdhDZPhfk8nL0tS8O', 'fayoke', '0.00', 'ILEM146', 'RICH226', 0, 0, '2026-04-11 17:44:17', NULL, NULL, NULL, NULL, NULL, 'automatic', NULL, 'active', '0000', NULL, 0, NULL, '0.00', NULL, 'Mozilla/5.0 (Linux; U; Android 12; Infinix X6817 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/146.0.7680.177 Mobile Safari/537.36 OPR/97.1.2254.80874', '102.89.69.212');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending',
  `denial_reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `reason` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `username`, `amount`, `bank_name`, `account_number`, `account_name`, `status`, `denial_reason`, `created_at`, `reason`) VALUES
(1, 1, 'Hally', '2000.00', 'Opay', '1234567890', 'Hally', 'approved', NULL, '2026-03-10 15:26:06', NULL),
(2, 1, 'Hally', '3000.00', 'Opay', '1234567890', 'Hally', 'declined', 'no consention', '2026-03-10 15:28:32', NULL),
(3, 1, 'Hally', '10000.00', 'Opay', '34567890', 'Hally', 'declined', 'no consention', '2026-03-11 04:13:42', NULL),
(4, 1, 'Hally', '10000.00', 'Opay', '34567890', 'Hally', 'declined', 'nn', '2026-03-11 04:14:23', NULL),
(5, 1, 'Hally', '2000.00', 'pa', '222', 'Hally', 'declined', 'nn', '2026-03-11 04:53:33', NULL),
(6, 1, 'Hally', '2000.00', 'pa', '222', 'Hally', 'declined', 'no consention', '2026-03-11 16:33:12', NULL),
(7, 1, 'Hally', '7000.00', 'pa', '222', 'Hally', 'declined', 'no consention', '2026-03-11 16:36:46', NULL),
(8, 1, 'Hally', '23000.00', 'pa', '222', 'Hally', 'declined', 'no consention', '2026-03-11 16:42:26', NULL),
(9, 1, 'Hally', '2000.00', 'pa', '222', 'Hally', 'approved', NULL, '2026-03-15 04:27:59', NULL),
(10, 1, 'Hally', '1000.00', 'pa', '222', 'Hally', 'approved', NULL, '2026-03-18 04:26:12', NULL),
(11, 16, 'Samuel', '500.00', 'Opay', '7075158977', '', 'approved', NULL, '2026-04-03 12:21:39', NULL),
(12, 16, NULL, '375.00', 'Opay', '7075158977', 'hally', '', NULL, '2026-04-11 08:35:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_codes`
--
ALTER TABLE `bonus_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crashed_plans`
--
ALTER TABLE `crashed_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_name` (`plan_name`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `referred_by` (`referred_by`(250));

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bonus_codes`
--
ALTER TABLE `bonus_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crashed_plans`
--
ALTER TABLE `crashed_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
