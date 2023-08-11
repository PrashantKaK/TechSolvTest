-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 08:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techsolvdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `Name` varchar(20) DEFAULT NULL,
  `PhoneNo` int(10) DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Subject` text DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `UserIp` int(100) DEFAULT NULL,
  `TimeStamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`Name`, `PhoneNo`, `Email`, `Subject`, `Message`, `UserIp`, `TimeStamp`) VALUES
('Prashant Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'null', 0, '2023-08-11 02:41:02.000000'),
('Prashant Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'null', 0, '2023-08-11 02:41:04.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 02:42:49.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 02:48:50.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 02:51:32.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 02:53:19.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 02:53:51.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 03:00:59.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 03:08:15.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 03:11:58.000000'),
('Prashant', 2147483647, 'kakprashant@gmail.com', 'Testing', 'Null', 0, '2023-08-11 03:13:26.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
