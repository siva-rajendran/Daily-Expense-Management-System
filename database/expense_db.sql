-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 06:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(20) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `expense` int(20) NOT NULL,
  `expensedate` varchar(15) NOT NULL,
  `expensecategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `user_id`, `expense`, `expensedate`, `expensecategory`) VALUES
(1, '1', 200, '2018-02-25', 'Bills & Recharges'),
(3, '1', 490, '2019-12-06', 'Others'),
(4, '1', 1200, '2019-12-06', 'Medicine'),
(5, '2', 1000, '2020-06-09', 'Medicine'),
(7, '2', 8000, '2014-06-11', 'Medicine'),
(8, '2', 5432, '2020-06-26', 'Bills & Recharges'),
(9, '2', 543, '2020-06-25', 'Food'),
(10, '2', 7654, '2020-04-09', 'Others'),
(11, '2', 5562, '2020-06-03', 'Food'),
(12, '2', 3554, '2020-04-08', 'Medicine'),
(13, '2', 1200, '2020-06-26', 'Entertainment'),
(14, '1', 1500, '2020-06-26', 'Bills & Recharges'),
(15, '1', 800, '2020-06-26', 'Food'),
(16, '3', 2000, '2020-06-26', 'Entertainment'),
(17, '3', 950, '2020-06-26', 'Bills & Recharges'),
(18, '3', 400, '2020-06-26', 'Food'),
(19, '3', 50, '2020-06-26', 'Medicine'),
(20, '3', 700, '2020-06-26', 'Food'),
(21, '3', 230, '2020-03-12', 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profile_path` varchar(50) NOT NULL DEFAULT 'default_profile.png',
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `profile_path`, `password`, `trn_date`) VALUES
(1, 'Siva', 'Rajendran', 'siva222r@gmail.com', 'profile1.jpg', '202cb962ac59075b964b07152d234b70', '2020-06-22 11:25:43'),
(2, 'Alfred', 'Jhon', 'alfredjhon23@gmail.com', 'profile1.jpg', '250cf8b51c773f3f8dc8b4be867a9a02', '2020-06-26 07:01:23'),
(3, 'Adithi', 'Sharma', 'adithi98@gmail.com', 'default_profile.png', '81dc9bdb52d04dc20036dbd8313ed055', '2020-06-26 16:20:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
