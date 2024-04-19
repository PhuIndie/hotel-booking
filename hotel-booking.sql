-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 07:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'Dang Phu', 'callmefudang@gmail.com', '$2y$10$Uz7Xr02jGGHsFcSIOeLlGuXTcItBNKVZ/2oJGtWPjGiKSfCxo8I/.', '2024-04-19 23:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(5) NOT NULL,
  `check_in` varchar(200) NOT NULL,
  `check_out` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(40) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment` int(10) NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `check_in`, `check_out`, `email`, `phone_number`, `full_name`, `hotel_name`, `room_name`, `status`, `payment`, `user_id`, `created_at`) VALUES
(3, '5/8/2024', '5/10/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', 'pending', 100, 1, '2024-04-19 21:28:24'),
(4, '5/1/2024', '5/3/2024', 'callmefudang@gmail.com', 792472529, 'Dang Gia Phu', 'testtt', 'test1', 'pending', 300, 1, '2024-04-19 21:46:13'),
(5, '5/2/2024', '5/10/2024', 'callmefudang@gmail.com', 792472529, 'Dang Gia Phu', 'testtt', 'test1', 'pending', 1200, 1, '2024-04-19 21:46:25'),
(6, '5/1/2024', '5/10/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', 'pending', 900, 1, '2024-04-19 23:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `location`, `status`, `created_at`) VALUES
(1, 'Hung Vuong', 'image_2.jpg', 'Plazaaa', 'Vietnam', 1, '2024-04-19 06:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `num_person` int(5) NOT NULL,
  `size` int(5) NOT NULL,
  `view` varchar(200) NOT NULL,
  `num_beds` int(5) NOT NULL,
  `hotel_id` int(5) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `price`, `num_person`, `size`, `view`, `num_beds`, `hotel_id`, `hotel_name`, `status`, `created_at`) VALUES
(1, 'test', 'image_4.jpg', 100, 4, 5, 'test1 ', 2, 1, 'test', 1, '2024-04-19 06:59:39'),
(2, 'test1', 'person-1.jpg', 150, 5, 5, 'test', 1, 1, 'testtt', 1, '2024-04-19 06:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `create_at`) VALUES
(1, 'lamdongso', 'lamdongso@gmail.com', '$2y$10$Uz7Xr02jGGHsFcSIOeLlGuXTcItBNKVZ/2oJGtWPjGiKSfCxo8I/.', '2024-04-18 05:24:35'),
(2, 'lamdongso', 'lamdongso@gmail.com', '$2y$10$DGXiOkscz4FNkRDyDk8NjOgauG5LRLK2gh0NfP.5AJM.3IGjyoUky', '2024-04-18 05:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `room_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `description`, `room_id`, `created_at`) VALUES
(1, 'Tea Coffee', 'flaticon-diet', 'test', 1, '2024-04-19 12:19:54'),
(2, 'Hot Showers', 'flaticon-workout', 'test', 2, '2024-04-19 12:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
