-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 09:05 PM
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
(1, 'Dang Phu', 'callmefudang@gmail.com', '$2y$10$Uz7Xr02jGGHsFcSIOeLlGuXTcItBNKVZ/2oJGtWPjGiKSfCxo8I/.', '2024-04-19 23:40:47'),
(2, 'Dang', 'lamdongso@gmail.com', '$2y$10$4zo3.dHwLUJjzkmMr1yE3uguFqfpmGy0sxmdz.ENZuph2zG1m1ggy', '2024-04-20 04:37:12');

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
(3, '5/8/2024', '5/10/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', '', 100, 1, '2024-04-19 21:28:24'),
(4, '5/1/2024', '5/3/2024', 'callmefudang@gmail.com', 792472529, 'Dang Gia Phu', 'testtt', 'test1', '', 300, 1, '2024-04-19 21:46:13'),
(5, '5/2/2024', '5/10/2024', 'callmefudang@gmail.com', 792472529, 'Dang Gia Phu', 'testtt', 'test1', 'pending', 1200, 1, '2024-04-19 21:46:25'),
(6, '5/1/2024', '5/10/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', 'pending', 900, 1, '2024-04-19 23:02:20'),
(7, '4/29/2024', '5/9/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', 'pending', 1000, 1, '2024-04-20 07:10:15'),
(8, '5/2/2024', '5/9/2024', 'lamdongso@gmail.com', 792472529, 'Dang Gia Phu', 'test', 'test', '', 700, 1, '2024-04-20 07:48:51'),
(9, '5/7/2024', '5/12/2024', 'lamdongso123@gmail.com', 792472529, 'Dang Gia Phu', 'Dang Phu', 'Dang Phu', 'pending', 615, 1, '2024-05-07 15:02:54');

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
(1, 'Sheraton', 'services-1.jpg', '                    Tọa lạc tại vị trí đắc địa trên đường Đồng Khởi, chỉ cách các địa điểm tham quan nổi tiếng, trung tâm hành chính, tòa nhà văn phòng và khu mua sắm giải trí vài phút di chuyển, Sheraton Saigon Grand Opera Hotel là điểm dừng chân lý tưởng giúp du khách hòa mình vào nhịp sống sôi động của thành phố với trải nghiệm sang trọng, cơ sở vật chất hiện đại và dịch vụ chuyên nghiệp.\r\n\r\n                  ', 'Vietnam', 1, '2024-05-10 18:02:07'),
(2, 'The Plaza Hotel', 'image_4.jpg', 'The Plaza Hotel is a luxury hotel and condominium apartment building in Midtown Manhattan in New York City. It is located on the western side of Grand Army Plaza, after which it is named, just west of Fifth Avenue, and is between 58th Street and Central Park South, at the southeastern corner of Central Park.', 'New York', 1, '2024-05-10 18:03:13'),
(3, 'The Ritz ', 'image_4.jpg', 'The Ritz London is a 5-star luxury hotel at 150 Piccadilly in London, England. A symbol of high society and luxury, the hotel is one of the world\'s most prestigious and best known.', 'Lon Don', 1, '2024-05-10 18:04:07'),
(4, 'Dang Phu', 'room-1.jpg', 'test', 'test', 0, '2024-04-19 22:06:52'),
(8, 'dasdaf', 'room-5.jpg', 'fsafa', 'dadas', 0, '2024-04-20 00:13:26'),
(999, 'Hung Vuong111111', 'image_2.jpg', '                                                                                                                                            Plazaaa22222223333                                                                                        ', 'Vietnam', 0, '2024-04-19 06:49:51');

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
(1, 'Suite Room', 'room-1.jpg', 50, 3, 50, 'Sea View', 2, 1, 'Sheraton', 1, '2024-05-10 18:08:28'),
(2, 'Standard Room', 'room-2.jpg', 70, 4, 60, 'Sea View', 2, 2, 'The Plaza Hotel', 1, '2024-05-10 18:08:28'),
(3, 'Family Room', 'room-4.jpg', 100, 5, 45, 'Sea View', 2, 3, 'The Ritz', 1, '2024-05-10 18:10:03'),
(4, 'Deluxe Room', 'room-4.jpg', 70, 5, 55, 'Sea View', 1, 1, 'Sheraton', 1, '2024-05-10 18:10:03'),
(996, 'Dang Phu', 'Screenshot (1).png', 123, 23, 23, 'fasfa', 1, 4, 'Dang Phu', 0, '2024-05-03 17:55:58'),
(3997, 'Phu', 'Screenshot (2).png', 123, 1, 2, 'dasd', 2, 4, 'Dang Phu', 0, '2024-05-03 17:54:45');

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
(2, 'lamdongso', 'lamdongso@gmail.com', '$2y$10$DGXiOkscz4FNkRDyDk8NjOgauG5LRLK2gh0NfP.5AJM.3IGjyoUky', '2024-04-18 05:49:02'),
(3, 'callmefudang', 'callmefudang@gmail.com', '$2y$10$juLRJxmOCY24I9iM4NVwBeznzy3E6WNxKB8NaxCOvKoLpMc4gYF2a', '2024-05-10 09:05:37');

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
(1, 'Tea Coffee', 'flaticon-diet', 'This can be a nice touch for guests who want a hot beverage outside of their rooms or who prefer to socialize in communal spaces.', 1, '2024-04-19 12:19:54'),
(2, 'Hot Showers', 'flaticon-workout', 'Hot showers are an essential amenity provided by nearly all hotels. Guests expect to have access to clean and reliable hot water for showering during their stay.', 2, '2024-04-19 12:19:54'),
(3, 'Laundry', 'flaticon-diet-1', 'Laundry services are commonly offered by hotels to cater to the needs of guests who may require cleaning of their clothes during their stay', 3, '2024-05-10 18:15:07'),
(4, 'Air Conditioning', 'flaticon-first', 'Air conditioning is a crucial amenity provided by hotels, especially in regions with hot or humid climates. It ensures that guests can maintain a comfortable indoor temperature in their rooms regardless of external weather conditions.', 1, '2024-05-10 18:15:07');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3998;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
