-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 09:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scale_db`
--
CREATE DATABASE IF NOT EXISTS `scale_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `scale_db`;

-- --------------------------------------------------------

--
-- Table structure for table `activities_tbl`
--

CREATE TABLE `activities_tbl` (
  `a_id` int(11) NOT NULL,
  `a_title` varchar(255) NOT NULL,
  `a_description` text NOT NULL,
  `a_strand_s` int(11) NOT NULL,
  `a_strand_c` int(11) NOT NULL,
  `a_strand_a` int(11) NOT NULL,
  `a_strand_l` int(11) NOT NULL,
  `a_type` varchar(255) NOT NULL,
  `a_start` varchar(255) NOT NULL,
  `a_end` varchar(255) NOT NULL,
  `a_submission` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_id` int(11) NOT NULL,
  `a_sa_name` varchar(255) NOT NULL,
  `a_status` varchar(255) NOT NULL,
  `a_sa_remarks` varchar(255) NOT NULL,
  `a_sa_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities_tbl`
--

INSERT INTO `activities_tbl` (`a_id`, `a_title`, `a_description`, `a_strand_s`, `a_strand_c`, `a_strand_a`, `a_strand_l`, `a_type`, `a_start`, `a_end`, `a_submission`, `u_id`, `a_sa_name`, `a_status`, `a_sa_remarks`, `a_sa_date`) VALUES
(1, 'STEMinar', '		STEMinar is a research webinar that aims to aid lower batches in their current or upcoming research subject. The presenters during the event will be research groups from batch 2023, while the target audience are\r\nbatch 2024 and batch 2025.	', 1, 1, 1, 1, 'G', '2024-04-21', '2024-05-21', '2024-05-21 01:30:53', 4, '0', 'Pending', '0', '0'),
(2, 'HAFY COOKING Show', 'Healthy and Affordable For You	', 1, 1, 0, 1, 'I', '2024-05-20', '2024-06-01', '2024-05-21 01:35:37', 4, '0', 'Pending', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sin_clubs_tbl`
--

CREATE TABLE `sin_clubs_tbl` (
  `sin_id` int(11) NOT NULL,
  `sin_name` varchar(255) NOT NULL,
  `sin_position` varchar(255) NOT NULL,
  `sin_length` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sin_clubs_tbl`
--

INSERT INTO `sin_clubs_tbl` (`sin_id`, `sin_name`, `sin_position`, `sin_length`, `u_id`) VALUES
(1, 'Japanese Culture', 'Member', 2022, 4),
(2, 'Turing', 'Member', 2023, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sout_clubs_tbl`
--

CREATE TABLE `sout_clubs_tbl` (
  `sout_id` int(11) NOT NULL,
  `sout_name` varchar(255) NOT NULL,
  `sout_position` varchar(255) NOT NULL,
  `sout_length` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sout_clubs_tbl`
--

INSERT INTO `sout_clubs_tbl` (`sout_id`, `sout_name`, `sout_position`, `sout_length`, `u_id`) VALUES
(1, 'Japanese Community', 'Member', 2022, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users_info_tbl`
--

CREATE TABLE `users_info_tbl` (
  `ui_id` int(11) NOT NULL,
  `ui_batch` varchar(255) NOT NULL,
  `ui_grade` int(11) NOT NULL,
  `ui_section` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `ui_position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_info_tbl`
--

INSERT INTO `users_info_tbl` (`ui_id`, `ui_batch`, `ui_grade`, `ui_section`, `u_id`, `ui_position`) VALUES
(1, '2025', 11, 'Pascal A', 4, 'Student'),
(2, '2025', 11, 'Pascal A', 3, 'Scale Adviser'),
(3, '2025', 11, 'Curie A', 8, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(11) NOT NULL,
  `u_lname` varchar(255) NOT NULL,
  `u_fname` varchar(255) NOT NULL,
  `u_mname` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_pword` varchar(255) NOT NULL,
  `u_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `u_lname`, `u_fname`, `u_mname`, `u_email`, `u_pword`, `u_level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com', 'admin', 0),
(2, 'pineda', 'adrian neil', 'p', 'appineda@clc.pshs.edu.ph', 'appineda', 1),
(3, 'cruz', 'mark paolo', 'm', 'mpmcruz@clc.pshs.edu.ph', 'mpmcruz', 2),
(4, 'cortez', 'adam niccol', '', 'acortez2025@clc.pshs.edu.ph', 'acortez2025', 3),
(8, 'Niro', 'Drake Joseph', 'Dizon', 'dniro2025@clc.pshs.edu.ph', 'dniro2025', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities_tbl`
--
ALTER TABLE `activities_tbl`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `sin_clubs_tbl`
--
ALTER TABLE `sin_clubs_tbl`
  ADD PRIMARY KEY (`sin_id`);

--
-- Indexes for table `sout_clubs_tbl`
--
ALTER TABLE `sout_clubs_tbl`
  ADD PRIMARY KEY (`sout_id`);

--
-- Indexes for table `users_info_tbl`
--
ALTER TABLE `users_info_tbl`
  ADD PRIMARY KEY (`ui_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities_tbl`
--
ALTER TABLE `activities_tbl`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sin_clubs_tbl`
--
ALTER TABLE `sin_clubs_tbl`
  MODIFY `sin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sout_clubs_tbl`
--
ALTER TABLE `sout_clubs_tbl`
  MODIFY `sout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_info_tbl`
--
ALTER TABLE `users_info_tbl`
  MODIFY `ui_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
