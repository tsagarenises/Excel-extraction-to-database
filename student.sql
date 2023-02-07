-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 06:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excelupload`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mark` varchar(20) NOT NULL,
  `grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `name`, `mark`, `grade`) VALUES
(36, 'kato joram', '50', '3'),
(37, 'misaga ivan', '80', '1'),
(38, 'kato joram', '50', '3'),
(39, 'misaga ivan', '80', '1'),
(40, 'kato joram', '50', '3'),
(41, 'misaga ivan', '80', '1'),
(42, 'kato joram', '50', '3'),
(43, 'misaga ivan', '80', '1'),
(44, 'kato joram', '50', '3'),
(45, 'misaga ivan', '80', '1'),
(46, 'kato joram', '50', '3'),
(47, 'misaga ivan', '80', '1'),
(48, 'kato joram', '50', '3'),
(49, 'misaga ivan', '80', '1'),
(50, 'kato joram', '50', '3'),
(51, 'misaga ivan', '80', '1'),
(52, 'kato joram', '50', '3'),
(53, 'misaga ivan', '80', '1'),
(54, 'kato joram', '50', '3'),
(55, 'misaga ivan', '80', '1'),
(56, 'kato joram', '50', '3'),
(57, 'misaga ivan', '80', '1'),
(58, 'kato joram', '50', '3'),
(59, 'misaga ivan', '80', '1'),
(60, 'kato joram', '50', '3'),
(61, 'misaga ivan', '80', '1'),
(62, 'kato joram', '50', '3'),
(63, 'misaga ivan', '80', '1'),
(64, 'kato joram', '50', '3'),
(65, 'misaga ivan', '80', '1'),
(66, 'kato joram', '50', '3'),
(67, 'misaga ivan', '80', '1'),
(68, 'kato joram', '50', '3'),
(69, 'misaga ivan', '80', '1'),
(70, 'kato joram', '50', '3'),
(71, 'misaga ivan', '80', '1'),
(72, 'kato joram', '50', '3'),
(73, 'misaga ivan', '80', '1'),
(74, 'kato joram', '50', '3'),
(75, 'misaga ivan', '80', '1'),
(76, 'kato joram', '50', '3'),
(77, 'misaga ivan', '80', '1'),
(78, 'kato joram', '50', '3'),
(79, 'misaga ivan', '80', '1'),
(80, 'kato joram', '50', '3'),
(81, 'misaga ivan', '80', '1'),
(82, 'kato joram', '50', '3'),
(83, 'misaga ivan', '80', '1'),
(84, 'kato joram', '50', '3'),
(85, 'misaga ivan', '80', '1'),
(86, 'kato joram', '50', '3'),
(87, 'misaga ivan', '80', '1'),
(88, 'kato joram', '50', '3'),
(89, 'misaga ivan', '80', '1'),
(90, 'kato joram', '50', '3'),
(91, 'misaga ivan', '80', '1'),
(92, 'kato joram', '50', '3'),
(93, 'misaga ivan', '80', '1'),
(94, 'misaga ivan', '80', '1'),
(95, 'misaga ivan', '80', '1'),
(96, 'kato joram', '50', '3'),
(97, 'misaga ivan', '80', '1'),
(98, 'kato joram', '50', '3'),
(99, 'misaga ivan', '80', '1'),
(100, 'kato joram', '50', '3'),
(101, 'misaga ivan', '80', '1'),
(102, 'kato joram', '50', '3'),
(103, 'misaga ivan', '80', '1'),
(104, 'kato joram', '50', '3'),
(105, 'misaga ivan', '80', '1'),
(106, 'misaga ivan', '80', '1'),
(107, 'misaga ivan', '80', '1'),
(108, 'kato joram', '50', '3'),
(109, '', 'WEDDING', ''),
(110, 'No', 'PARTICULAR', 'UNITS'),
(111, '1', 'DRESSING', ''),
(112, '', 'BRIDE', ''),
(113, 'misaga ivan', '80', '1'),
(114, 'kato joram', '50', '3'),
(115, 'misaga ivan', '80', '1'),
(116, 'kato joram', '50', '3'),
(117, 'misaga ivan', '80', '1'),
(118, 'kato joram', '50', '3'),
(119, 'misaga ivan', '80', '1'),
(120, 'kato joram', '50', '3'),
(121, 'misaga ivan', '80', '1'),
(122, 'kato joram', '50', '3'),
(123, 'misaga ivan', '80', '1'),
(124, 'kato joram', '50', '3'),
(125, 'misaga ivan', '80', '1'),
(126, 'kato joram', '50', '3'),
(127, 'misaga ivan', '80', '1'),
(128, 'kato joram', '50', '3'),
(129, 'misaga ivan', '80', '1'),
(130, 'kato joram', '50', '3'),
(131, 'misaga ivan', '80', '1'),
(132, 'kato joram', '50', '3'),
(133, 'misaga ivan', '80', '1'),
(134, 'kato joram', '50', '3'),
(135, 'misaga ivan', '80', '1'),
(136, 'kato joram', '50', '3'),
(137, 'misaga ivan', '80', '1'),
(138, 'kato joram', '50', '3'),
(139, 'misaga ivan', '80', '1'),
(140, 'kato joram', '50', '3'),
(141, 'misaga ivan', '80', '1'),
(142, 'kato joram', '50', '3'),
(143, 'misaga ivan', '80', '1'),
(144, 'kato joram', '50', '3'),
(145, 'misaga ivan', '80', '1'),
(146, 'kato joram', '50', '3'),
(147, 'misaga ivan', '80', '1'),
(148, 'kato joram', '50', '3'),
(149, 'misaga ivan', '80', '1'),
(150, 'kato joram', '50', '3'),
(151, 'misaga ivan', '80', '1'),
(152, 'kato joram', '50', '3'),
(153, 'misaga ivan', '80', '1'),
(154, 'kato joram', '50', '3'),
(155, 'misaga ivan', '80', '1'),
(156, 'kato joram', '50', '3'),
(157, 'misaga ivan', '80', '1'),
(158, 'kato joram', '50', '3'),
(159, 'misaga ivan', '80', '1'),
(160, 'kato joram', '50', '3'),
(161, 'misaga ivan', '80', '1'),
(162, 'kato joram', '50', '3'),
(163, 'misaga ivan', '80', '1'),
(164, 'kato joram', '50', '3'),
(165, 'misaga ivan', '80', '1'),
(166, 'kato joram', '50', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
