-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2018 at 08:42 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmodel`
--

CREATE TABLE `cmodel` (
  `id` int(100) NOT NULL,
  `manufacturer_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` text NOT NULL,
  `year` int(10) NOT NULL,
  `regno` varchar(100) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `pic1` varchar(10000) NOT NULL,
  `pic2` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmodel`
--

INSERT INTO `cmodel` (`id`, `manufacturer_id`, `name`, `color`, `year`, `regno`, `note`, `pic1`, `pic2`) VALUES
(1, 1, '3 Series', 'black', 2015, '12345', 'welcome for test drive', 'https://auto.ndtvimg.com/car-images/big/bmw/3-series/bmw-3-series.jpg?v=6', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThLNCMPyCG9DGZtjDC61feN6tI1rXcA4mk-lMzC2oFyUiZaITHHg'),
(2, 23, 'qweasd', 'black', 2000, '56481', 'hi test', 'qwe.jpg', 'adsad.jpg'),
(3, 2, 'FuzioTracking', 'blue', 2003, '124568', 'hi app', 'asd.jpg', 'asd.jpg'),
(4, 1, 'Z 300', 'black', 2014, '532146', '', '', ''),
(5, 1, 'FuzioTracking 123', 'black', 2015, '546321', '', '', ''),
(6, 23, 'sad', 'black', 2015, '3256', '', '', ''),
(7, 1, 'sadqwe', 'black', 2016, '58965', '', '', ''),
(8, 2, 'nmb', 'blue', 2009, '633215', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `finly`
--

CREATE TABLE `finly` (
  `id` int(100) NOT NULL,
  `domainname` varchar(100) NOT NULL,
  `emails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finly`
--

INSERT INTO `finly` (`id`, `domainname`, `emails`) VALUES
(2, 'flipkart.com', 'n.niranjan.v@gmail.com,wed@gmail.com'),
(3, 'mail.google.com', 'n.niranjan.v@gmail.com,care@feedback.exidelife.in,quincy@freecodecamp.org,info@mails.rummycircle.com,noreply@medium.com,informations@hdfcbank.net,store-news@amazon.in,newsletters@angel.co,campaign@cpc.gov.in,no-reply@swiggy.in,noreply@swiggy.in,noreply@lazypay.in,joel@egghead.io,feedback@litmusworld.net,ankur.aggarwal@favcy.in,ankur.aggarwal@favcy.in-,no-reply@hasgeek.com,aws-marketing-email-replies@amazon.com,no-reply@sns.amazonaws.com,kumar.abinash@finly.io,prime@amazon.in,no-reply@alerts.swiggy.in,calendar-notification@google.com,ashok.bangalore@gmail.com,order-update@amazon.in,alerts@hdfcbank.net,natasha.puri@cdmx.in,rajnishkumar9250@gmail.com,Payments-update@amazon.in,AmazonPay-balance@amazon.in,moneyclick@ktkbank.com,communications@news.neteller.com,prernna.barla@finly.io,customer.services@exidelife.in,emailalerts@doorstep.quikr.com,relay@apollomunichinsurance.com,buyonline@apollomunichinsurance.com'),
(6, 'amazon.com', 'qwe@gmail.com'),
(7, 'stackoverflow.com', 'hello@user.com'),
(8, 'mail.google.com', 'n.niranjan.v@gmail.com'),
(10, 'localhost', 'n.niranjan.v@gmail.com'),
(11, 'news.google.com', 'n.niranjan.v@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(100) NOT NULL,
  `posts_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `posts_id`, `user_id`, `lat`, `lon`) VALUES
(5, 5, 4, '12.9646592', '77.5995392'),
(7, 7, 5, '12.915730', '77.582150'),
(8, 8, 6, '12.917327', '77.577701'),
(9, 9, 7, '12.917392', '77.631593'),
(10, 10, 8, '12.926354', '77.625146'),
(11, 11, 9, '12.955136', '77.695828'),
(12, 12, 10, '12.960252', '77.702034'),
(13, 13, 11, '13.003224', '77.684692');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`) VALUES
(1, 'BMW'),
(2, 'mercedes'),
(23, 'maruti');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `user_id` int(100) NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post`, `user_id`, `created_date`) VALUES
(5, 'test', 4, NULL),
(7, 'asdkhkj', 5, NULL),
(8, 'lkjkljasdpj', 6, NULL),
(9, 'farwasyasd', 7, NULL),
(10, 'kormagakaqwe', 8, NULL),
(11, 'marathaliiii', 9, NULL),
(12, 'kalamandir', 10, NULL),
(13, 'krpuram', 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `password_reset_token` varchar(1000) NOT NULL DEFAULT 'qwerty',
  `email` varchar(1000) NOT NULL,
  `account_activation_token` varchar(1000) NOT NULL DEFAULT 'qwerty',
  `auth_key` varchar(1000) NOT NULL,
  `status` int(100) NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `item_name` varchar(10) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password_hash`, `password_reset_token`, `email`, `account_activation_token`, `auth_key`, `status`, `created_at`, `updated_at`, `item_name`) VALUES
(4, 'nishu', '$2y$13$pvb0VG.E2RM.x8BqNOZQEuQbLMPDV5vpWFMo8Rz22.tpPXS3RKk1i', 'qwerty', 'n.niranjan.v@gmail.com', 'qwerty', 'BpMHWWM_7OYnxyk6cmGtV5rfjgmFi5jM', 10, 1544962606, 1544962606, '2'),
(5, 'nishu123', '$2y$13$3VKyvF1i1gKiCEU4a5zfDOXdSITxIeRGC.C.Xfd97WNEmZp9jAj.6', 'qwerty', 'n.niranjan.v+12123@gmail.com', 'qwerty', 'fJSOW55RP7S0BIg-sUGzv95XXRboBylO', 10, 1544962875, 1544962875, '2'),
(6, 'nishuqwe', '$2y$13$uB/y.upwtdtW3ufgU.kfUOCPvGOBlGTZm0Ki2LOckHNTYObPhJWOy', 'qwerty', 'n.niranjan.v+121233232@gmail.com', 'qwerty', 'UEJNjhnRX6X68OJXtdTsO9uQo1x6qeJh', 10, 1544963106, 1544963106, '2'),
(7, 'nishufar', '$2y$13$ac6nIAoSWlEuT0UitQ0JD.K/NhvKvCMigY/YUJ4SEvhucKBTRylcy', 'qwerty', 'n.niranjan.v+54512123@gmail.com', 'qwerty', 'ma0Bj2NiIXmwbZso-O401cSq7LgX-q5N', 10, 1544963236, 1544963236, '2'),
(8, 'nishuveryfar', '$2y$13$ijb0vVyFENqFzuj7BtB59e6/D77r8WkptHtvN//BgjT4XRkr3JoZ.', 'qwerty', 'n.niranjan.v+14323@gmail.com', 'qwerty', 'lQNmLiJb5hg9--kHxR2ikm02agRSgkkc', 10, 1544963494, 1544963494, '2'),
(9, 'marathali', '$2y$13$.sv3MVoPD/SmPBzJ87Zf1Ok3FsMN6jsUZyeafLbFP3r/1m49OcvVi', 'qwerty', 'n.niranjan.v+143287973@gmail.com', 'qwerty', 'H1xHtRiJWA_O4j_KvZNQVUMeMl9I5aev', 10, 1544963866, 1544963866, '2'),
(10, 'kalamandir', '$2y$13$oin8bKqyGsB3/3X1zvnqjO/oOn1MYTW6ylNme3BBSydDWmthU1bDK', 'qwerty', 'n.niranjan.v+23@gmail.com', 'qwerty', 'Iq2hgx6SWnEvSl0eqkmYlwkYTfCu458w', 10, 1544963980, 1544963980, '2'),
(11, 'krpuram', '$2y$13$sR/NclirA0SKxNgXV7Z4fOus5a48nZF5aBjE7P0nyAQdBVNN65PMy', 'qwerty', 'n.niranjan.v+2398@gmail.com', 'qwerty', 'uQBdCXKRgjpmEdmrBDuz87eIgaBjBuPK', 10, 1544964153, 1544964153, '2'),
(12, 'majestic', '$2y$13$O9Srw81h.x5XIxPE8rjLUukoHV6AmmTl8hlNd8J4u4CJY4wEaAwLi', 'qwerty', 'n.niranjan.v+1987@gmail.com', 'qwerty', '9ke5p5sNI9a8W04ya5u8Ou6Miz02D5y8', 10, 1544971178, 1544971178, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmodel`
--
ALTER TABLE `cmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `manu_name` (`manufacturer_id`);

--
-- Indexes for table `finly`
--
ALTER TABLE `finly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`,`posts_id`,`user_id`),
  ADD KEY `locpos` (`posts_id`),
  ADD KEY `locuser` (`user_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `posuser` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmodel`
--
ALTER TABLE `cmodel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `finly`
--
ALTER TABLE `finly`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cmodel`
--
ALTER TABLE `cmodel`
  ADD CONSTRAINT `manu_name` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `locpos` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `locuser` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posuser` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
