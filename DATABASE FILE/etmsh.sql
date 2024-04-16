-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 06:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etmsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(43, 27, '01-03-2024 08:31:24', '01-03-2024 08:31:36', '00:00:12'),
(44, 30, '01-03-2024 11:54:15', '01-03-2024 11:54:25', '00:00:10'),
(42, 1, '22-03-2021 22:01:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `text_column` varchar(255) NOT NULL,
  `file_path_column` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `text_column`, `file_path_column`) VALUES
(1, 'hdg', 'uploads/exam.zip'),
(2, 'hdg', 'uploads/exam.zip'),
(3, 'hdg', 'uploads/exam.zip');

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(26, 'Your PHP task is complted', 'none', '2024-03-01 12:00', '2024-03-05 12:10', 27, 2),
(27, 'write a script file upload', 'none', '2024-03-01 12:00', '2024-03-02 12:00', 30, 2),
(28, '66', 'fj', '2024-03-02 12:00', '2024-03-05 12:00', 0, 0),
(29, 'hf', 'smv', '2024-03-02 12:00', '2024-03-05 12:00', 0, 0),
(30, 'hhhs', 'dhdh', '2024-03-02 12:00', '2024-03-04 12:00', 29, 0),
(31, 'kalyani sent me hii', 'nothing', '2024-03-02 12:00', '2024-03-04 12:00', 27, 0),
(32, 'jhhh', 'jhjhjh', '2024-03-09 12:00', '2024-03-23 12:00', 28, 0),
(33, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(34, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(35, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(36, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(37, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(38, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(39, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(40, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(41, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(42, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(43, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(44, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(45, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(46, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(47, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(48, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(49, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(50, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(51, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(52, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(53, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(54, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(55, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(56, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(57, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(58, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(59, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(60, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(61, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(62, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(63, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(64, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(65, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(66, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(67, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(68, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(69, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(70, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(71, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(72, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(73, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(74, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(75, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(76, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(77, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(78, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(79, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(80, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(81, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(82, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(83, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(84, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(85, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(86, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(87, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(88, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(89, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(90, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(91, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(92, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(93, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(94, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(95, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(96, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(97, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(98, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(99, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(100, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(101, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(102, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(103, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(104, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(105, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(106, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(107, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(108, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(109, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(110, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(111, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(112, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(113, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(114, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(115, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(116, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(117, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(118, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(119, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(120, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(121, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(122, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(123, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(124, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(125, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(126, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(127, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(128, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(129, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(130, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(131, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(132, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(133, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(134, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(135, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(136, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(137, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(138, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(139, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(140, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(141, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(142, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(143, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(144, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(145, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(146, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(147, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(148, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(149, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(150, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(151, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(152, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(153, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(154, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(155, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(156, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(157, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(158, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(159, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(160, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(161, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(162, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(163, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(164, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(165, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(166, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(167, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(168, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(169, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(170, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(171, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(172, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(173, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(174, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(175, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(176, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(177, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(178, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(179, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(180, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(181, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(182, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(183, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(184, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(185, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(186, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(187, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(188, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(189, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(190, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(191, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(192, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(193, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(194, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(195, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(196, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(197, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(198, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(199, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(200, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(201, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(202, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(203, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(204, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(205, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(206, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(207, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(208, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(209, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(210, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(211, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(212, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(213, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(214, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(215, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(216, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(217, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(218, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(219, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(220, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(221, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(222, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(223, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(224, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(225, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(226, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(227, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(228, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(229, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(230, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(231, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(232, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(233, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(234, 'dd', 'hjh', '2024-03-02 12:00', '2024-03-09 12:00', 0, 0),
(235, 'Task Title', 'Task Description', '2022-03-02 10:00:00', '2022-03-02 12:00:00', 0, 0),
(236, 'ffN', 'mm', '2024-03-02 12:00', '2024-03-08 12:00', 0, 0),
(237, 'd', 'nn', '2024-03-15 12:00', '2024-03-13 12:00', 0, 0),
(238, 'dwf', 'mnnm', '2024-03-02 12:00', '2024-03-07 12:00', 0, 0),
(239, 'dd', 'njn', '2024-03-02 12:00', '2024-03-08 12:00', 0, 0),
(240, 'ggh', 'jjj', '2024-03-02 12:00', '2024-03-13 12:00', 0, 0),
(241, 'hghg', 'ghh', '2024-03-02 12:00', '2024-03-12 12:00', 0, 0),
(242, 'nmnmnm', 'jhjhjhj', '2024-03-02 12:00', '2024-03-04 12:00', 30, 0),
(243, 'nmnmnm', 'jhjhjhj', '2024-03-02 12:00', '2024-03-04 12:00', 29, 0),
(244, 'nmnmnm', 'jhjhjhj', '2024-03-02 12:00', '2024-03-04 12:00', 28, 1),
(245, 'write a php', 'jdkjd', '2024-03-03 12:00', '2024-03-05 12:00', 30, 0),
(246, 'write a php', 'jdkjd', '2024-03-03 12:00', '2024-03-05 12:00', 29, 0),
(247, 'write a php', 'jdkjd', '2024-03-03 12:00', '2024-03-05 12:00', 28, 0),
(248, 'write a php', 'jdkjd', '2024-03-03 12:00', '2024-03-05 12:00', 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', 'cac29d7a34687eb14b37068ee4708e7b', NULL, 1),
(30, 'Bhushan Rajput', 'bhushan', 'b@gmail.com', 'cf1852c25f0fad4d1c0eb5f71e3fe5cb', '', 2),
(29, 'Paresh Rajput', 'paresh', 'p@gmail.com', 'c1bf48a0732a5ae1159ae99b33849616', '8430539', 2),
(28, 'Kalyani patil', 'kalyani', 'kalyani@gmail.com', 'c9c43593e47d6ebaae731b5957ea1ddf', '', 2),
(27, 'Vaishali', 'vaishali', 'v@gmail.com', '071cfab05193cfb288c460a121a2a9bb', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
