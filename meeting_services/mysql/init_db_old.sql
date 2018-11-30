-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 02:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting`
--
-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `title`, `created_at`, `updated_at`, `user_created_id`) VALUES
(1, 'BTL PHan tan updated', '2018-11-02 04:43:09', '2018-11-07 01:39:49', 1),
(2, 'qui-dolor-qui', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 17),
(4, 'dolorem-ex-accusantium', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 18),
(5, 'sunt-blanditiis-voluptatem', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 19),
(6, 'fugit-itaque-dolores', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 18),
(7, 'reiciendis-laboriosam-omnis', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 20),
(8, 'aut-vel-omnis', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 13),
(9, 'facere-dolore-commodi', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 16),
(10, 'inventore-dolores-aut', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 22),
(11, 'aut-ullam-accusamus', '2018-11-05 06:07:15', '2018-11-05 06:07:15', 16),
(12, 'voluptatem-tempora-laborum', '2018-11-05 06:33:42', '2018-11-05 06:33:42', 13),
(13, 'deleniti-vel-doloribus', '2018-11-05 06:33:42', '2018-11-05 06:33:42', 15),
(14, 'ad-repudiandae-ut', '2018-11-05 06:33:42', '2018-11-05 06:33:42', 13),
(15, 'ipsa-perspiciatis-quam', '2018-11-05 06:33:42', '2018-11-05 06:33:42', 13),
(16, 'qui-sit-sit', '2018-11-05 06:33:42', '2018-11-05 06:33:42', 15),
(17, 'facere-quisquam-officia', '2018-11-05 06:45:10', '2018-11-05 06:45:10', 24),
(18, 'eum-et-a', '2018-11-05 06:45:10', '2018-11-05 06:45:10', 23),
(20, 'incidunt-tempore-tempore', '2018-11-05 06:45:10', '2018-11-05 06:45:10', 18),
(22, 'New Meeting', '2018-11-07 02:49:14', '2018-11-07 02:49:14', 1),
(23, 'deserunt-aliquam-quis', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 23),
(24, 'accusantium-harum-hic', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 20),
(25, 'commodi-ullam-et', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 28),
(26, 'enim-labore-vel', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 23),
(27, 'unde-tempore-occaecati', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 40),
(28, 'voluptas-et-ut', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 17),
(29, 'eius-dolor-sed', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 16),
(30, 'molestiae-inventore-totam', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 1),
(31, 'cumque-atque-quia', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 14),
(32, 'repudiandae-molestiae-laboriosam', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 38),
(33, 'porro-sed-fuga', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 26),
(34, 'eum-dolorem-modi', '2018-11-12 09:31:31', '2018-11-12 09:31:31', 14),
(35, 'Test New Meeting 1', '2018-11-12 09:50:17', '2018-11-12 09:50:17', 41),
(36, 'Meeting 5', '2018-11-25 04:10:57', '2018-11-25 04:10:57', 40),
(37, 'Meeting222', '2018-11-25 05:27:57', '2018-11-25 05:27:57', 42);

-- --------------------------------------------------------

--
-- Table structure for table `sub_contents`
--

CREATE TABLE `sub_contents` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `flag` int(11) NOT NULL,
  `is_full` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meeting_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_contents`
--

INSERT INTO `sub_contents` (`id`, `author`, `content`, `start_time`, `end_time`, `flag`, `is_full`, `created_at`, `updated_at`, `user_id`, `meeting_id`) VALUES
(3, 'An ', '<b>ở Pondicherry</b>, nơi đó từng là của thuộc địa\r\ncủa Pháp, là 1 phần của Ấn Độ.\r\n', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-02 00:00:00', '2018-11-02 00:00:00', 1, 1),
(4, 'Thang', 'Cha tôi là người trông coi sở thú.', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-03 15:18:40', '2018-11-03 15:18:40', 13, 1),
(5, 'Quan', 'Và tôi được chú ý \n bởi 1 nhà nghiên cứu bò sát,', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-03 15:18:40', '2018-11-03 15:18:40', 13, 1),
(6, 'An', 'người mà ở đó để kiểm tra con thằn lằn Bengal updated', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-03 15:22:45', '2018-11-03 15:47:33', 13, 1),
(7, 'N.V.Thắng', 'Cuộc đời của Pi \n Hdvietnam.con \n Translated by Fctraucho.', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-06 09:31:49', '2018-11-06 09:31:49', 1, 1),
(8, 'Đình Quân', '- Vậy là anh lớn lên ở sở thú à? \n - Sinh ra và lớn lên...', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-06 09:31:49', '2018-11-06 09:31:49', 1, 1),
(11, 'Thang PUT', 'new subconten', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:33:42', '2018-11-16 09:06:27', 1, 2),
(12, 'Đình Quân', '- Vậy là anh lớn lên ở sở thú à? \n - Sinh ra và lớn lên...', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:33:42', '2018-11-07 02:33:42', 1, 2),
(13, 'N.V.Thắng', 'Cuộc đời của Pi \n Hdvietnam.con \n Translated by Fctraucho.', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:34:53', '2018-11-07 02:34:53', 1, 4),
(14, 'Đình Quân', '- Vậy là anh lớn lên ở sở thú à? \n - Sinh ra và lớn lên...', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:34:53', '2018-11-07 02:34:53', 1, 4),
(15, 'N.V.Thắng', 'Cuộc đời của Pi \n Hdvietnam.con \n Translated by Fctraucho.', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:39:48', '2018-11-07 02:39:48', 1, 4),
(16, 'Đình Quân', '- Vậy là anh lớn lên ở sở thú à? \n - Sinh ra và lớn lên...', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 02:39:48', '2018-11-07 02:39:48', 1, 4),
(17, 'Mr.One', 'Cuộc đời của Pi \n Hdvietnam.con \n Translated by Fctra', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 03:41:36', '2018-11-07 03:41:36', 14, 1),
(18, 'Mr.Two', '- Vậy là anh lớn lên ở sở thú à? \n - Sinh ra và lớn l', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-07 03:41:36', '2018-11-07 03:41:36', 14, 1),
(19, 'Quan Nguyen', 'I feel like....up', '2018-11-21 00:12:00', '2018-11-21 00:12:02', 0, 1, '2018-11-11 16:19:26', '2018-11-11 16:19:46', 1, 1),
(21, 'Quan', 'EEEEEEE', '2018-11-21 11:45:00', '2018-11-21 11:46:02', 0, 1, '2018-11-12 10:01:23', '2018-11-18 09:37:30', 40, 35),
(22, 'Thang 222222', 'new 22222', '2018-11-21 12:00:22', '2018-11-21 12:01:02', 0, 1, '2018-11-16 10:33:44', '2018-11-18 09:15:44', 40, 35),
(83, 'AAAA', 'aaaaaaaaaaaaaaaaa', '2018-11-21 05:58:00', '2018-11-21 05:58:45', 1, 1, '2018-11-22 10:31:22', '2018-11-25 04:11:28', 40, 35),
(84, 'BBBB', 'bbbbbbbbbbbbbbbbb', '2018-11-21 05:59:00', '2018-11-21 05:59:05', 1, 1, '2018-11-22 10:31:22', '2018-11-25 04:11:28', 40, 35),
(85, 'AAAA', '123445555', '2018-11-21 06:58:00', '2018-11-21 06:58:45', 2, 1, '2018-11-22 10:33:05', '2018-11-22 10:33:05', 40, 35),
(86, 'BBBB', 'xyzthdhdh', '2018-11-21 06:59:00', '2018-11-21 06:59:05', 2, 1, '2018-11-22 10:33:05', '2018-11-22 10:33:05', 40, 35),
(99, 'DDDD', 'aaaaaaaaaaaaaaaaa', '2018-11-23 05:58:00', '2018-11-23 05:58:45', 0, 1, '2018-11-24 12:20:27', '2018-11-24 12:20:55', 40, 35),
(100, 'EEE', 'bbbbbbbbbbbbbbbbb', '2018-11-23 05:59:00', '2018-11-23 05:59:05', 0, 1, '2018-11-24 12:20:27', '2018-11-24 12:20:55', 40, 35),
(184, 'An Nguyen', NULL, '2018-11-21 06:58:00', '2018-11-21 06:58:45', 0, 0, '2018-11-25 10:40:30', '2018-11-25 10:40:30', 40, 36),
(185, 'Thang Nguyen', NULL, '2018-11-21 06:56:00', '2018-11-21 06:57:05', 0, 0, '2018-11-25 10:40:30', '2018-11-25 10:40:30', 40, 36),
(186, 'An Nguyen', NULL, '2018-11-21 05:59:00', '2018-11-21 05:59:05', 0, 0, '2018-11-25 10:40:30', '2018-11-25 10:40:30', 40, 36),
(187, 'Thang Nguyen', NULL, '2018-11-21 05:58:00', '2018-11-21 05:58:45', 0, 0, '2018-11-25 10:40:30', '2018-11-25 10:40:30', 40, 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_created_id` (`user_created_id`);

--
-- Indexes for table `sub_contents`
--
ALTER TABLE `sub_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sub_contents`
--
ALTER TABLE `sub_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_contents`
--
ALTER TABLE `sub_contents`
  ADD CONSTRAINT `sub_contents_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
