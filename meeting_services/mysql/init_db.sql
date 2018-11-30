-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 02:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8_unicode_ci NOT NULL,
  `new_value` text COLLATE utf8_unicode_ci NOT NULL,
  `change_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `action`, `meeting_id`, `content_id`, `column`, `old_value`, `new_value`, `change_by`, `created_at`, `updated_at`) VALUES
(1, 'insert', 36, 184, 'author', 'An Nguyen', 'An Nguyen', 40, '2018-11-25 10:40:30', '2018-11-25 10:40:30'),
(2, 'insert', 36, 186, 'author', 'An Nguyen', 'An Nguyen', 40, '2018-11-25 10:40:30', '2018-11-25 10:40:30'),
(3, 'insert', 36, 185, 'author', 'Thang Nguyen', 'Thang Nguyen', 40, '2018-11-25 10:40:30', '2018-11-25 10:40:30'),
(4, 'insert', 36, 187, 'author', 'Thang Nguyen', 'Thang Nguyen', 40, '2018-11-25 10:40:31', '2018-11-25 10:40:31');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meeting_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`, `user_id`, `meeting_id`) VALUES
(1, 2, '2018-11-06 00:00:00', '2018-11-06 00:00:00', 1, 1),
(5, 1, '2018-11-07 00:00:00', '2018-11-07 00:00:00', 1, 2),
(6, 1, '2018-11-07 00:00:00', '2018-11-07 00:00:00', 1, 4),
(7, 2, '2018-11-07 02:49:14', '2018-11-07 02:49:14', 1, 22),
(8, 1, '2018-11-07 03:24:41', '2018-11-07 03:24:41', 14, 1),
(9, 0, '2018-11-07 03:32:12', '2018-11-07 03:32:12', 15, 1),
(10, 2, '2018-11-12 09:50:17', '2018-11-12 09:50:17', 41, 35),
(11, 1, '2018-11-12 09:55:57', '2018-11-12 09:55:57', 40, 35),
(12, 2, '2018-11-25 04:10:57', '2018-11-25 04:10:57', 40, 36),
(13, 1, '2018-11-25 04:11:06', '2018-11-25 04:11:06', 1, 36),
(14, 2, '2018-11-25 05:27:57', '2018-11-25 05:27:57', 42, 37),
(15, 1, '2018-11-25 10:33:19', '2018-11-25 10:33:19', 1, 36);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'ThangNv', 'thang@gmail.com', '$2a$10$jNyvkczYuwy3io9V.mXVfegPawLlhp8ejhmxrWzNIznKtYs4Vncoi', '2018-11-01 04:44:16', '2018-11-01 04:44:16'),
(13, 'THANG', 'thang111@yahoo.com', '$2a$10$XAOJ9xaezEvHp1O.0KC4/ui3z8LaE8zECd37l9.PVV8ItoNf66IyW', '2018-11-01 11:17:11', '2018-11-01 11:17:11'),
(14, 'Herman Coty', 'Ottilie16@hotmail.com', '$2a$10$6pnIU3b.jPghbh0Fk4Qt/uBJQvW7JDHKpsWNZwXi4mvg8nVbbSuZm', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(15, 'Lockman Lela', 'Ashtyn71@yahoo.com', '$2a$10$irGoHFrBD7RQIr.dWlzSNu.ZqBWKADDRBeiW3kthXMoiUyrAkjmim', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(16, 'Reynolds Rodrick', 'Christiana.Mertz@gmail.com', '$2a$10$6H58oowUEGNQgx0QWuqSP.WXO.Ce80jiy3YWdJ31bwJt1NTamRhq.', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(17, 'Aufderhar Hosea', 'Aleen62@yahoo.com', '$2a$10$LfwvgKR3PW1wyYvT/PDuo.fslLF4R4ofOVIXb8APiAfMjQJjiVzL6', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(18, 'Erdman Ashly', 'Naomi20@hotmail.com', '$2a$10$XrrwR3Gr470DFKgrHRvZEeZjQ.Bl6yTIbIR4PgdVnQQrqCufcGaOm', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(19, 'Hessel Elna', 'Jess.Keeling13@yahoo.com', '$2a$10$bI6iblntVsVwucQ2YFqske6Db8Pa7OTvmStG/FlJjElN4dd5pfQ7y', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(20, 'Windler Nigel', 'Ayana27@yahoo.com', '$2a$10$vwLla9.5SWQZrXTNrP3A9uLT.Y9lIRnU73Iwb3ETAyETK.qP/wGH6', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(21, 'Bailey Lorna', 'Amparo_Morar21@gmail.com', '$2a$10$NODTZHh1tK42C2Ybql9F4O0VyB/XijY2Q0PnW91Jeycf2jzm0PFdm', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(22, 'Nicolas Alysa', 'Sallie7@hotmail.com', '$2a$10$rX0wVd5eqc6FdFeT5uv6ueYsixt0N5rdy1K0HdbjdIrRJ1U78HTQS', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(23, 'Gorczany Alta', 'Joanie33@gmail.com', '$2a$10$fNPn6xdeppOhlYL2g0SN1.I0.a.eOBs8RoqCNsDD1b645Aw/hSv2a', '2018-11-05 06:05:51', '2018-11-05 06:05:51'),
(24, 'Heidenreich Christop', 'Kyra66@hotmail.com', '$2a$10$MPNdECVm9eb6J7zCknrZCuNmoHYXVcuSAYD3d1egDRaWzSuK1NJXC', '2018-11-05 06:28:30', '2018-11-05 06:28:30'),
(25, 'Little Sabryna', 'Nikolas.Graham@gmail.com', '$2a$10$md5ohxDgpVQvTB.KlDc/zeDjpks1xQ7g/mbyzolFDTnDoZhECRQkK', '2018-11-05 06:28:54', '2018-11-05 06:28:54'),
(26, 'Yundt River', 'Prudence44@hotmail.com', '$2a$10$lxR2hBZYaXM/ezk4123dguPpyWkn8HgkAAAxA0KHRoYdaS1TGxpoy', '2018-11-05 06:30:03', '2018-11-05 06:30:03'),
(27, 'Donnelly Regan', 'Baron_Erdman91@hotmail.com', '$2a$10$nTNXo/B25cALN0nhQfBXIu3J7itijmyqW9eI14AwJF.4cIShv0uIW', '2018-11-05 06:50:39', '2018-11-05 06:50:39'),
(28, 'Ward Darlene', 'Shanel_Douglas@yahoo.com', '$2a$10$7SSXZFBLm8HWF23O5USkeuqLS8GD9Mj5tZLTnhMd8PxiTEQgQR90y', '2018-11-05 06:50:39', '2018-11-05 06:50:39'),
(29, 'Cartwright Broderick', 'Herminio.Schmitt46@yahoo.com', '$2a$10$HutXsQ0sUXLk7cNlWl0.M.6f7rhcJag9fwFo2QtYmhv9Y6zBFZj9q', '2018-11-05 06:50:39', '2018-11-05 06:50:39'),
(30, 'Schinner Joannie', 'Rogelio53@hotmail.com', '$2a$10$HfhEuGf8fY4TBuVeKaTkOOu8T73AB0Q208kBSD68NCxH4lQpsylKa', '2018-11-05 06:50:39', '2018-11-05 06:50:39'),
(31, 'McCullough Torrance', 'Branson.Hettinger@gmail.com', '$2a$10$Dk4kbPBtHRnCufOw/aBVW.Mx7kYDcyJULAepc5b/LHmw4q.ldxvti', '2018-11-05 06:50:39', '2018-11-05 06:50:39'),
(32, 'Bednar Kale', 'Alayna_Breitenberg41@hotmail.com', '$2a$10$9cF3SALxGKdtNezJNyC6eO1te.nrVBovik4eKCYFTTVAQvyq0CnYK', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(33, 'Kerluke Faustino', 'Sadie22@hotmail.com', '$2a$10$v4hZUHJFbaDPTQlXVV6amekTc65PQxlIFzg1kLIHN3wbT04NcSmzW', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(34, 'Witting Kenya', 'Devin.Halvorson53@gmail.com', '$2a$10$JmHZ8JNE6BBMA1hXIVk9ZOWRtKWL6YcMkQNwgqdAKv9GDuIvOdsM2', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(35, 'Thiel Cathryn', 'Isaac53@gmail.com', '$2a$10$eVjKPlybIxZtyjv4HVlzeeW5Zp7jj7jK9n45Q2nr/1HTZM6refKgC', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(36, 'Reichel Chesley', 'Bethany_Lynch7@gmail.com', '$2a$10$.TcPb1M3nzCdbd0QdRRJ/u1vFeLAl961ARrRuWwcJiQ1uTHA5wWGq', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(37, 'Wolff Bryana', 'Boris75@gmail.com', '$2a$10$ohfIz1sipOpxVg33L/I3wuSTcuhxKmrEuP2dcTgflTtLCxl4rN.b.', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(38, 'Goyette Jamir', 'Marielle_Barton4@gmail.com', '$2a$10$f4myW/WrCPjUFgBSpngtnucHWVjaHGybCsLgs4bI.5sqDXuvamNEe', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(39, 'Gottlieb Timmothy', 'Sylvia64@yahoo.com', '$2a$10$mallkYJvaLwMsg5YtcauuOkCgeDXvqh4tr51QuoNPHvtOJ8XjF6B.', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(40, 'Schoen Valentina', 'test@gmail.com', '$2a$10$sMyRUYHE/L8jYKDRlyg.eeilm.y58NDA6qjzFjaDBPb9N7c3hM2g.', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(41, 'Doyle Augusta', 'test1@gmail.com', '$2a$10$VjodUBPbvLsquUO7DDlN1OTWSrw72DlYK6FvpOgWd0WV5OzvuBTP2', '2018-11-12 09:28:12', '2018-11-12 09:28:12'),
(42, 'Quran Nguyen ', 'test3@gmail.com', '$2a$10$bFbQnmtiKoZzPlyeRTp1sOYTVwbNbvR10FAjQSCgqgW500OZV5Lem', '2018-11-25 05:27:30', '2018-11-25 05:27:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_created_id` (`user_created_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- Indexes for table `sub_contents`
--
ALTER TABLE `sub_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meeting_id` (`meeting_id`);

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
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sub_contents`
--
ALTER TABLE `sub_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sub_contents`
--
ALTER TABLE `sub_contents`
  ADD CONSTRAINT `sub_contents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_contents_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
