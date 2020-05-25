-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2020 at 12:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realcinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingmovie`
--

CREATE TABLE `bookingmovie` (
  `bookingMovieID` int(20) NOT NULL,
  `bookDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `memberID` int(20) NOT NULL,
  `movieShowtimeID` int(20) NOT NULL,
  `paymentMethodID` int(20) NOT NULL,
  `promotionID` int(20) NOT NULL,
  `amount` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookingmovie`
--

INSERT INTO `bookingmovie` (`bookingMovieID`, `bookDate`, `memberID`, `movieShowtimeID`, `paymentMethodID`, `promotionID`, `amount`) VALUES
(37, '2020-05-11 12:29:11', 2, 79, 1, 4, '660'),
(38, '2020-05-11 12:29:52', 2, 79, 1, 4, '660'),
(39, '2020-05-11 12:36:28', 2, 79, 1, 4, '1320'),
(40, '2020-05-15 13:25:39', 2, 79, 1, 4, '220'),
(41, '2020-05-15 13:27:37', 2, 79, 1, 4, '220'),
(42, '2020-05-15 13:29:46', 2, 79, 1, 4, '220'),
(43, '2020-05-15 13:30:18', 2, 79, 1, 4, '220'),
(44, '2020-05-15 13:31:44', 2, 79, 1, 4, '220'),
(45, '2020-05-15 13:33:15', 2, 79, 1, 4, '220'),
(46, '2020-05-15 13:33:57', 2, 79, 1, 4, '220'),
(47, '2020-05-15 13:34:35', 2, 79, 1, 4, '220'),
(48, '2020-05-15 13:35:01', 2, 79, 1, 4, '220'),
(49, '2020-05-15 13:35:18', 2, 79, 1, 4, '220'),
(50, '2020-05-15 13:37:41', 2, 79, 1, 4, '220'),
(51, '2020-05-15 13:38:04', 2, 79, 1, 4, '220'),
(52, '2020-05-15 13:38:16', 2, 79, 1, 4, '220'),
(53, '2020-05-15 13:38:29', 2, 79, 1, 4, '220'),
(54, '2020-05-15 13:40:28', 2, 79, 1, 4, '220'),
(55, '2020-05-15 13:41:32', 2, 79, 1, 4, '220'),
(56, '2020-05-15 13:42:14', 2, 79, 1, 4, '220'),
(57, '2020-05-15 13:45:01', 2, 79, 1, 4, '220'),
(58, '2020-05-15 13:47:40', 2, 79, 1, 4, '220'),
(59, '2020-05-15 13:49:37', 2, 79, 1, 4, '220'),
(60, '2020-05-15 13:50:19', 2, 81, 1, 4, '220'),
(61, '2020-05-15 13:50:53', 2, 80, 1, 4, '220'),
(62, '2020-05-15 13:51:04', 2, 79, 1, 4, '220'),
(63, '2020-05-15 13:51:24', 2, 79, 1, 4, '220'),
(64, '2020-05-15 13:53:39', 2, 79, 1, 4, '220'),
(65, '2020-05-15 13:54:30', 2, 79, 1, 4, '220'),
(66, '2020-05-15 13:54:43', 2, 79, 1, 4, '220'),
(67, '2020-05-15 13:55:00', 2, 79, 1, 4, '220'),
(68, '2020-05-15 13:55:29', 2, 79, 1, 4, '220'),
(69, '2020-05-15 13:55:52', 2, 79, 1, 4, '220'),
(70, '2020-05-15 13:56:24', 2, 79, 1, 4, '220'),
(71, '2020-05-15 13:56:48', 2, 79, 1, 4, '220'),
(72, '2020-05-16 11:47:08', 2, 79, 1, 4, '220'),
(73, '2020-05-16 11:52:25', 2, 79, 1, 4, '220'),
(74, '2020-05-16 11:52:41', 2, 79, 1, 4, '220'),
(75, '2020-05-16 11:52:53', 2, 79, 1, 4, '220'),
(76, '2020-05-16 11:53:15', 2, 79, 1, 4, '220'),
(77, '2020-05-16 11:53:46', 2, 79, 1, 4, '220'),
(78, '2020-05-16 11:54:29', 2, 79, 1, 4, '220'),
(79, '2020-05-16 11:55:33', 2, 79, 1, 4, '220'),
(80, '2020-05-16 11:55:47', 2, 79, 1, 4, '220'),
(81, '2020-05-16 11:55:55', 2, 79, 1, 4, '220'),
(82, '2020-05-16 11:57:31', 2, 79, 1, 4, '220'),
(83, '2020-05-16 12:02:16', 2, 79, 1, 4, '220'),
(84, '2020-05-16 12:02:29', 2, 79, 1, 4, '220'),
(85, '2020-05-16 12:03:09', 2, 79, 1, 4, '220'),
(86, '2020-05-16 12:03:23', 2, 79, 1, 4, '220'),
(87, '2020-05-16 12:03:36', 2, 79, 1, 4, '220'),
(88, '2020-05-16 12:04:08', 2, 79, 1, 4, '220'),
(89, '2020-05-16 12:04:41', 2, 79, 1, 4, '220'),
(90, '2020-05-16 12:04:45', 2, 79, 1, 4, '220'),
(91, '2020-05-16 12:05:47', 2, 79, 1, 4, '220'),
(92, '2020-05-16 12:05:59', 2, 79, 1, 4, '220'),
(93, '2020-05-16 12:07:32', 2, 79, 1, 4, '220'),
(94, '2020-05-16 12:08:51', 2, 79, 1, 4, '220'),
(95, '2020-05-16 12:09:16', 2, 79, 1, 4, '220'),
(96, '2020-05-16 12:09:29', 2, 79, 1, 4, '220'),
(97, '2020-05-16 12:09:49', 2, 79, 1, 4, '220'),
(98, '2020-05-16 12:10:04', 2, 79, 1, 4, '220'),
(99, '2020-05-16 12:10:17', 2, 79, 1, 4, '220'),
(100, '2020-05-16 12:10:33', 2, 79, 1, 4, '220');

-- --------------------------------------------------------

--
-- Table structure for table `bookingseat`
--

CREATE TABLE `bookingseat` (
  `bookingSeatID` int(20) NOT NULL,
  `bookingMovieID` int(20) NOT NULL,
  `seat` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookingseat`
--

INSERT INTO `bookingseat` (`bookingSeatID`, `bookingMovieID`, `seat`) VALUES
(28, 37, 'F7,F8,F9'),
(29, 38, 'I7,I8,I9'),
(30, 39, 'D8,E6,E7,E8,E9,E10'),
(31, 40, 'F9'),
(32, 41, 'F9'),
(33, 42, 'F9'),
(34, 43, 'F9'),
(35, 44, 'F9'),
(36, 45, 'F9'),
(37, 46, 'F9'),
(38, 47, 'F9'),
(39, 48, 'F9'),
(40, 49, 'F9'),
(41, 50, 'F9'),
(42, 51, 'F9'),
(43, 52, 'F9'),
(44, 53, 'F9'),
(45, 54, 'F9'),
(46, 55, 'F9'),
(47, 56, 'F9'),
(48, 57, 'F9'),
(49, 58, 'G7'),
(50, 59, 'G7'),
(51, 60, 'G7'),
(52, 61, 'G7'),
(53, 62, 'G7'),
(54, 63, 'G7'),
(55, 64, 'G7'),
(56, 65, 'G7'),
(57, 66, 'G7'),
(58, 67, 'G7'),
(59, 68, 'G7'),
(60, 69, 'G7'),
(61, 70, 'G7'),
(62, 71, 'G7'),
(63, 72, 'B5'),
(64, 73, 'D7'),
(65, 74, 'D7'),
(66, 75, 'D7'),
(67, 76, 'D7'),
(68, 77, 'D7'),
(69, 78, 'D7'),
(70, 79, 'D7'),
(71, 80, 'D7'),
(72, 81, 'D7'),
(73, 82, 'G9'),
(74, 83, 'G9'),
(75, 84, 'G9'),
(76, 85, 'G9'),
(77, 86, 'G9'),
(78, 87, 'G9'),
(79, 88, 'G9'),
(80, 89, 'G9'),
(81, 90, 'G9'),
(82, 91, 'G9'),
(83, 92, 'G9'),
(84, 93, 'G9'),
(85, 94, 'G9'),
(86, 95, 'G9'),
(87, 96, 'G9'),
(88, 97, 'G9'),
(89, 98, 'G9'),
(90, 99, 'G9'),
(91, 100, 'G9');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` int(100) NOT NULL,
  `branchName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `branchAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `phoneNo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchName`, `branchAddress`, `phoneNo`, `Logo`) VALUES
(1, 'Quartier CineArt', 'Quartier CineArt4/F, Emquatier, Sukhumvit Road, Bangkok, Thailand', '02-261-0199', 'https://sv1.picz.in.th/images/2020/04/15/UzVAm9.jpg'),
(2, 'Paragon Cineplex', '991 Siam paragon 4th floor Param 1 Road, Pathumwan Bangkok Thailand', '02-129-4365', 'https://sv1.picz.in.th/images/2020/04/15/Uzv2F8.png'),
(3, 'Krungsri IMAX Paragon Cineplex', '991 Siam paragon 4th floor Param 1 Road, Pathumwan Bangkok Thailand', '02-515-5555', 'https://sv1.picz.in.th/images/2020/04/15/Uzv2F8.png'),
(4, 'ICON CINECONIC', '1101 cineconic, 6-8/F, Icon Siam , 299 Road, Bangkok,Thailand', '02-288-0228', 'https://sv1.picz.in.th/images/2020/04/15/UzIKr9.png'),
(5, 'Major Cineplex Rama 2 ', '128 Central Plaza Rama 2 Param 2 Road Bangkhuntain Bangkok', '02-415-7711', 'https://sv1.picz.in.th/images/2020/04/15/UzvxgW.png'),
(18, 'Major Cineplex Pinklao', '554-554/12 Road Borom Road, Bang Phlat, Bangbamru, Bangkok 10700', '02-435-3750', 'https://sv1.picz.in.th/images/2020/04/15/UzvxgW.png'),
(19, 'Major Cineplex Sukhumvit', '1221/39 Sukhumvit Rd., North Klongtan ,Wattana, Bangkok 10110', '02-381-4855', 'https://sv1.picz.in.th/images/2020/04/15/UzvxgW.png');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `directorID` int(10) NOT NULL,
  `fName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`directorID`, `fName`, `lName`, `nationality`, `education`) VALUES
(1, 'Jeff', ' Fowler', 'American', ''),
(2, 'Cathy', ' Yan', 'Chinese-born American', 'Tisch School Of The Arts'),
(3, 'Autumn de', 'Wilde', 'American', ''),
(4, 'Stephen ', 'Gaghan', 'American', 'Babson College'),
(41, 'Patty', 'Jenkins', NULL, NULL),
(42, 'Van', 'christ', NULL, NULL),
(43, 'John', 'son', NULL, NULL),
(44, 'Bam', 'Bam', NULL, NULL),
(58, 'Joonho', 'Bong ', NULL, NULL),
(59, 'Sam', 'Mendes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discountID` int(100) NOT NULL,
  `discountType` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discountID`, `discountType`) VALUES
(1, 'discount 99'),
(2, 'discount 80');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(20) NOT NULL,
  `branchID` int(100) NOT NULL,
  `positionID` int(100) NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `citizen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dd` int(5) NOT NULL,
  `mm` int(5) NOT NULL,
  `yyyy` int(5) NOT NULL,
  `foodID` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `branchID`, `positionID`, `gender`, `citizen`, `fName`, `LName`, `email`, `password`, `phoneNo`, `dd`, `mm`, `yyyy`, `foodID`) VALUES
(1, 5, 92, 'Male', '1232', 'b', 'b', 'b@b.com', 'b', '13114', 3, 3, 2020, 1),
(2, 1, 90, 'Female', '213', 'p', 'p', 'p@p.com', 'p', '23213', 3, 3, 2019, 1),
(3, 2, 90, 'Male', '123', 'again', 'again', 'wutthidech@hotmail.com', '3', '0619145754', 2, 4, 2018, 1),
(4, 1, 90, 'Male', '12', 'test', 'test', 'test@gmail.com', '1', '44', 3, 3, 2019, 1),
(6, 1, 92, 'Female', '123', 'adminbam', 'adminbam', 'adminbam@gmail.com', 'adminbam', '123', 1, 1, 2020, 0),
(7, 3, 90, 'Female', '123', 'empbam', 'empbam', 'empbam@gmail.con', 'empbam', '123', 1, 3, 2020, 0),
(8, 1, 90, 'Female', '123', 'empbam', 'empbam', 'empbam@gmail.com', 'adminbam', '123', 1, 1, 2020, NULL),
(9, 1, 92, 'Female', '31', 'adminadminbam', 'adminadminbam', 'adminadminbam@gmail.com', 'adminadminbam', '12', 1, 1, 2019, 1),
(10, 2, 92, 'Female', '1', 'ad', 'ad', 'ad@gmail.com', 'ad', '1', 2, 1, 2020, 2),
(11, 18, 92, 'Female', '1', 'embam', 'embam', 'embam@gmail.com', 'ad', '1', 2, 1, 2020, 2),
(12, 5, 90, 'Female', '123', 'adminbam', 'adminbam', 'adminbam@gmail.com', 'adminbam', '0619145754', 31, 5, 2020, 1),
(13, 1, 90, 'Female', '123', 'adminnui', 'adminnui', 'adminnui@gmail.com', 'adminnui', '123', 2, 1, 2020, 3);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodID` int(10) NOT NULL,
  `foodName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodID`, `foodName`) VALUES
(1, 'Shrimp'),
(2, 'หอย'),
(3, 'ปลา');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(20) NOT NULL,
  `fName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `memberStatusID` int(20) NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `citizenID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `point` int(20) NOT NULL,
  `dd` int(5) NOT NULL,
  `mm` int(5) NOT NULL,
  `yyyy` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `fName`, `LName`, `memberStatusID`, `gender`, `citizenID`, `address`, `phone`, `email`, `password`, `point`, `dd`, `mm`, `yyyy`) VALUES
(2, 'bam', 'ISAS', 1, 'Male', '22', '', '32', 'b@b.com', 'b', 0, 2, 4, 2019),
(3, 'f', 'f', 1, '- Gender -', '123', '', '12331', 'f@f.com', 'f', 0, 0, 0, 0),
(4, 'c', 'c', 1, '- Gender -', '12', '', '1312', 'c@c.com', 'c', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberstatus`
--

CREATE TABLE `memberstatus` (
  `memberstatusID` int(20) NOT NULL,
  `statusType` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `memberstatus`
--

INSERT INTO `memberstatus` (`memberstatusID`, `statusType`) VALUES
(1, 'premium');

-- --------------------------------------------------------

--
-- Table structure for table `moviedata`
--

CREATE TABLE `moviedata` (
  `movieID` int(100) NOT NULL,
  `movieName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `genreTypeID` int(100) NOT NULL,
  `movieDetail` text COLLATE utf8_unicode_ci NOT NULL,
  `movieLenght` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `starring` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `directorID` int(10) DEFAULT NULL,
  `rate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ReleaseDay` int(20) DEFAULT NULL,
  `ReleaseMonth` int(20) DEFAULT NULL,
  `ReleaseYear` int(20) DEFAULT NULL,
  `OutDay` int(20) DEFAULT NULL,
  `OutMonth` int(20) DEFAULT NULL,
  `OutYear` int(20) DEFAULT NULL,
  `audio` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `imageLink` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `theaterTypeID` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `moviedata`
--

INSERT INTO `moviedata` (`movieID`, `movieName`, `genreTypeID`, `movieDetail`, `movieLenght`, `starring`, `directorID`, `rate`, `ReleaseDay`, `ReleaseMonth`, `ReleaseYear`, `OutDay`, `OutMonth`, `OutYear`, `audio`, `imageLink`, `theaterTypeID`) VALUES
(1, 'Sonic', 1, 'done database\r\nSonic the Hedgehog[b] is a 2020 action-adventure comedy film based on the video game franchise published by Sega. The film is directed by Jeff Fowler in his feature directorial debut and written by Pat Casey and Josh Miller. It stars Ben Schwartz as the voice of Sonic the Hedgehog and Jim Carrey as Doctor Robotnik, as well as James Marsden, Tika Sumpter, Natasha Rothwell, Adam Pally, and Neal McDonough. In the film, Sonic teams up with local town sheriff Tom Wachowski to find his lost rings and escape Dr. Robotnik.', '99 minute', 'James Marsden\r\nBen Schwartz\r\nTika Sumpter\r\nJim Carrey', 1, '20+', 1, 5, 2020, 30, 5, 2020, 'EN', 'https://sv1.picz.in.th/images/2020/04/07/QL1HAg.jpg', 2),
(2, 'Emma', 3, 'Emma.[a] is a 2020 British comedy-drama film directed by Autumn de Wilde, from a screenplay by Eleanor Catton and is based on Jane Austen s 1815 novel of the same name. Its story follows Emma Woodhouse, a young woman who interferes in the love lives of her friends. It stars Anya Taylor-Joy, Johnny Flynn, Josh O Connor, Callum Turner, Mia Goth, Miranda Hart, and Bill Nighy.', '124 minute', 'Anya Taylor-Joy\r\nJohnny Flynn\r\nJosh O Connor\r\nCallum Turner\r\nMia Goth\r\nMiranda Hart\r\nBill Nighy', 3, '20+', 20, 5, 2020, 30, 5, 2020, 'EN', 'https://sv1.picz.in.th/images/2020/04/07/QL1TY9.jpg', 2),
(3, 'Dolittle', 5, 'done database\r\nDolittle (also referred to as The Voyage of Doctor Dolittle) is a 2020 American fantasy comedy adventure film directed by Stephen Gaghan from a screenplay by Gaghan, Dan Gregor, and Doug Mand, based on a story by Thomas Shepherd. A reboot of the original Doctor Dolittle film and its modern comedy counterparts, the film is based on the titular character created by Hugh Lofting and is primarily inspired by the author\'s second Doctor Dolittle book, The Voyages of Doctor Dolittle. Robert Downey Jr. stars as the title character, alongside Antonio Banderas and Michael Sheen in live-action roles, with Emma Thompson, Rami Malek, John Cena, Kumail Nanjiani, Octavia Spencer, Tom Holland, Craig Robinson, Ralph Fiennes, Selena Gomez, and Marion Cotillard voicing a diverse array of creatures.', '101 minute', 'Robert Downey Jr.\r\nAntonio Banderas\r\nMichael Sheen\r\nEmma Thompson\r\nRami Malek\r\nJohn Cena\r\nKumail Nanjiani\r\nOctavia Spencer\r\nTom Holland\r\nCraig Robinson\r\nRalph Fiennes\r\nSelena Gomez\r\nMarion Cotillard', 4, '16+', 1, 5, 2020, 30, 5, 2020, 'en', 'https://sv1.picz.in.th/images/2020/04/07/QLKO4y.jpg', 1),
(4, 'Harley Quinn:Birds of Prey', 7, 'done database\r\nBirds of Prey (and the Fantabulous Emancipation of One Harley Quinn)[a] is a 2020 American superhero film based on the DC Comics team Birds of Prey. It is the eighth installment in the DC Extended Universe and a follow-up to Suicide Squad (2016).', '109 minute', 'Margot Robbie\r\nMary Elizabeth Winstead\r\nJurnee Smollett-Bell\r\nRosie Perez\r\nChris Messina\r\nElla Jay Basco\r\nAli Wong\r\nEwan McGregor', 2, '18+', 1, 5, 2020, 30, 5, 2020, 'en', 'https://sv1.picz.in.th/images/2020/04/07/QLKjr9.jpg', 1),
(119, 'Harry potter', 4, 'done database Harry Potter and the Philosopher\'s Stone (released in the United States as Harry Potter and the Sorcerer\'s Stone) is a 2001 fantasy film directed by Chris Columbus and distributed by Warner Bros. Pictures. It is based on J. K. Rowling\'s 1997 novel of the same name. The film is the first instalment of the Harry Potter film series and was written by Steve Kloves and produced by David Heyman. Its story follows Harry Potter\'s first year ', '123 minutes', '1', 42, '18+', 1, 8, 6, 2020, 5, 2020, 'English', 'https://sv1.picz.in.th/images/2020/05/10/UXRPlZ.png', 1),
(120, 'Bad boys for life', 7, '\r\nDone database Bad Boys for Life is a 2020 American action comedy film directed by Adil El Arbi and Bilall Fallah and written by Chris Bremner, Peter Craig and Joe Carnahan. The sequel to Bad Boys II (2003), it is the third installment in the Bad Boys trilogy and is based on a story by Craig and Carnahan. The film stars Will Smith, Martin Lawrence, Paola Núñez, Vanessa Hudgens, Alexander Ludwig, Charles Melton, Kate del Castillo, Nicky Jam,Thomas Brag and Joe Pantoliano. Smith co-produced the film with Jerry Bruckheimer and Doug Belgrad. In Bad Boys for Life, Miami detectives Mike Lowrey and Marcus Burnett investigate a string of murders tied to Lowrey\'s troubled past.', '1', 'John wick', 41, '18+', 3, 4, 5, 2020, 5, 2020, 'English', 'https://sv1.picz.in.th/images/2020/05/15/UICien.jpg', 1),
(121, 'Bloodshoot', 2, 'Done database Bloodshot is a 2020 American superhero film based on the Valiant Comics character of the same name. It is intended to be the first installment in a series of films set within a Valiant Comics shared cinematic universe.[3] Directed by David S. F. Wilson (in his feature directorial debut) from a screenplay by Jeff Wadlow and Eric Heisserer and a story by Wadlow,[4] the film stars Vin Diesel, Eiza González, Sam Heughan, Toby Kebbell, and Guy Pearce. It follows a Marine who was killed in action, only to be brought back to life with superpowers by an organization that wants to use him as a weapon.', '2 hr. 15 mins', 'Valiant ', 43, '18+', 1, 30, 5, 2020, 5, 2020, 'en', 'https://sv1.picz.in.th/images/2020/05/15/UI2jJe.jpg', 1),
(122, 'The Invisible Man', 9, 'Done database The Invisible Man is a 2020 science fiction horror film written and directed by Leigh Whannell. It follows a woman who believes she is being stalked by her abusive and wealthy boyfriend even after his apparent suicide.[3] She ultimately deduces that he has acquired the ability to become invisible.[4] The film stars Elisabeth Moss, Aldis Hodge, Storm Reid, Harriet Dyer, Michael Dorman, and Oliver Jackson-Cohen. It is an international co-production of the United States and Australia.', '128 minutes', 'nvisible Man', 2, '18+', 1, 31, 5, 2020, 5, 2020, 'en', 'https://sv1.picz.in.th/images/2020/05/15/UI2Mkq.jpg', 3),
(123, 'Adventures End game', 5, 'Done database Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). It was directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, ', '3 hours', 'John', 44, '18+', 1, 1, 5, 2020, 6, 2020, 'en', 'https://sv1.picz.in.th/images/2020/05/15/UICZWV.jpg', 3),
(129, 'Parasite', 11, 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', '2h 12m', '	\r\nSong Kang-ho\r\nLee Sun-kyun\r\nCho Yeo-jeong\r\nChoi Woo-shik\r\nPark So-dam\r\nLee Jung-eun\r\nJang Hye-jin', 58, 'R', 30, 5, 2020, 13, 8, 2020, 'KOR', 'https://sv1.picz.in.th/images/2020/05/01/Uluqhg.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `moviegenre`
--

CREATE TABLE `moviegenre` (
  `genreTypeID` int(100) NOT NULL,
  `genreTypeName` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `moviegenre`
--

INSERT INTO `moviegenre` (`genreTypeID`, `genreTypeName`) VALUES
(1, 'Adventure'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Molodrama'),
(5, 'Fantasy'),
(6, 'Familly'),
(7, 'Action'),
(8, 'Horror'),
(9, 'Thriler'),
(10, 'Romance eritic eiei'),
(11, 'Thriler/comedy'),
(12, 'Romance'),
(13, 'Crime');

-- --------------------------------------------------------

--
-- Table structure for table `movieshowtime`
--

CREATE TABLE `movieshowtime` (
  `movieShowtimeID` int(20) NOT NULL,
  `theaterID` int(20) NOT NULL,
  `showtime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `movieID` int(20) NOT NULL,
  `audio` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movieshowtime`
--

INSERT INTO `movieshowtime` (`movieShowtimeID`, `theaterID`, `showtime`, `movieID`, `audio`) VALUES
(79, 1, '2020-05-09 14:30:00.000000', 1, 'TH'),
(80, 1, '2020-05-09 09:00:00.000000', 1, 'ENG'),
(81, 1, '2020-05-18 15:49:38.964236', 2, 'TH');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentMethodID` int(20) NOT NULL,
  `method` int(20) NOT NULL,
  `payerName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `paidTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentMethodID`, `method`, `payerName`, `paidTime`) VALUES
(1, 1, 'Bam', '2020-04-21 22:30:15.632515');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` int(100) NOT NULL,
  `JobPosition` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `JobPosition`) VALUES
(90, 'Employee'),
(92, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotionID` int(20) NOT NULL,
  `promotionName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `discountID` int(100) NOT NULL,
  `promotionDetail` text COLLATE utf8_unicode_ci NOT NULL,
  `point` int(20) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `discountAmount` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotionID`, `promotionName`, `discountID`, `promotionDetail`, `point`, `startDate`, `endDate`, `discountAmount`) VALUES
(4, 'SCB', 1, 'have fun eiei ', 1, '2020-01-26', '2020-06-07', '1'),
(5, 'Krungsri', 2, 'happy with krungsri', 3, '2020-01-26', '2020-04-13', '1');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatID` int(20) NOT NULL,
  `position` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seatRow` int(20) NOT NULL,
  `seatNumber` int(20) NOT NULL,
  `seatType` int(20) NOT NULL,
  `price` int(8) NOT NULL,
  `theaterID` int(20) NOT NULL,
  `movieShowtimeID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seatID`, `position`, `seatRow`, `seatNumber`, `seatType`, `price`, `theaterID`, `movieShowtimeID`) VALUES
(20, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 14, 15, 1, 150, 1, 80),
(21, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0', 14, 12, 1, 220, 1, 79);

-- --------------------------------------------------------

--
-- Table structure for table `seat_row`
--

CREATE TABLE `seat_row` (
  `row_id` int(20) NOT NULL,
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat_row`
--

INSERT INTO `seat_row` (`row_id`, `name`) VALUES
(1, 'A'),
(2, 'B'),
(3, '15'),
(4, '15'),
(5, 'F'),
(6, 'F'),
(7, '23'),
(8, 'F'),
(9, '213'),
(10, '15'),
(11, 'D'),
(12, 'F'),
(13, 'G'),
(14, 'E'),
(15, 'J'),
(16, 'X'),
(17, 'Z'),
(18, 'E'),
(19, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `seat_type`
--

CREATE TABLE `seat_type` (
  `type_id` int(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat_type`
--

INSERT INTO `seat_type` (`type_id`, `name`) VALUES
(1, 'Honeymoons'),
(2, 'VIP'),
(3, 'REGULAR');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterID` int(100) NOT NULL,
  `theaterTypeID` int(100) NOT NULL,
  `theaterNo` int(100) NOT NULL,
  `branchID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterID`, `theaterTypeID`, `theaterNo`, `branchID`) VALUES
(1, 1, 1, 1),
(2, 8, 2, 1),
(3, 3, 3, 1),
(4, 3, 1, 2),
(6, 2, 1, 3),
(7, 4, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `theatertype`
--

CREATE TABLE `theatertype` (
  `theaterTypeID` int(100) NOT NULL,
  `TheaterTypeName` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theatertype`
--

INSERT INTO `theatertype` (`theaterTypeID`, `TheaterTypeName`) VALUES
(1, '2D'),
(2, '3D'),
(3, '4DX'),
(4, 'IMAX'),
(8, 'Ultra Screen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingmovie`
--
ALTER TABLE `bookingmovie`
  ADD PRIMARY KEY (`bookingMovieID`),
  ADD KEY `fk10` (`paymentMethodID`),
  ADD KEY `fk12` (`movieShowtimeID`),
  ADD KEY `fk18` (`promotionID`),
  ADD KEY `f93` (`memberID`);

--
-- Indexes for table `bookingseat`
--
ALTER TABLE `bookingseat`
  ADD PRIMARY KEY (`bookingSeatID`),
  ADD KEY `fk16` (`bookingMovieID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`directorID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discountID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `fk1` (`branchID`),
  ADD KEY `fk2` (`positionID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `fk15` (`memberStatusID`);

--
-- Indexes for table `memberstatus`
--
ALTER TABLE `memberstatus`
  ADD PRIMARY KEY (`memberstatusID`);

--
-- Indexes for table `moviedata`
--
ALTER TABLE `moviedata`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `fk13` (`genreTypeID`),
  ADD KEY `fk21` (`directorID`),
  ADD KEY `fk20` (`theaterTypeID`);

--
-- Indexes for table `moviegenre`
--
ALTER TABLE `moviegenre`
  ADD PRIMARY KEY (`genreTypeID`);

--
-- Indexes for table `movieshowtime`
--
ALTER TABLE `movieshowtime`
  ADD PRIMARY KEY (`movieShowtimeID`),
  ADD KEY `fk9` (`movieID`),
  ADD KEY `fk19` (`theaterID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentMethodID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotionID`),
  ADD KEY `fk14` (`discountID`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatID`),
  ADD KEY `fk50` (`seatType`),
  ADD KEY `fk51` (`theaterID`),
  ADD KEY `fk52` (`seatRow`),
  ADD KEY `f123` (`movieShowtimeID`);

--
-- Indexes for table `seat_row`
--
ALTER TABLE `seat_row`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `seat_type`
--
ALTER TABLE `seat_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterID`),
  ADD KEY `fk3` (`theaterTypeID`),
  ADD KEY `fk4` (`branchID`);

--
-- Indexes for table `theatertype`
--
ALTER TABLE `theatertype`
  ADD PRIMARY KEY (`theaterTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingmovie`
--
ALTER TABLE `bookingmovie`
  MODIFY `bookingMovieID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `bookingseat`
--
ALTER TABLE `bookingseat`
  MODIFY `bookingSeatID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `directorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discountID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `memberstatus`
--
ALTER TABLE `memberstatus`
  MODIFY `memberstatusID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `moviedata`
--
ALTER TABLE `moviedata`
  MODIFY `movieID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `moviegenre`
--
ALTER TABLE `moviegenre`
  MODIFY `genreTypeID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `movieshowtime`
--
ALTER TABLE `movieshowtime`
  MODIFY `movieShowtimeID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentMethodID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotionID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seatID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seat_row`
--
ALTER TABLE `seat_row`
  MODIFY `row_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seat_type`
--
ALTER TABLE `seat_type`
  MODIFY `type_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theatertype`
--
ALTER TABLE `theatertype`
  MODIFY `theaterTypeID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingmovie`
--
ALTER TABLE `bookingmovie`
  ADD CONSTRAINT `f93` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk10` FOREIGN KEY (`paymentMethodID`) REFERENCES `payment` (`paymentMethodID`),
  ADD CONSTRAINT `fk11` FOREIGN KEY (`promotionID`) REFERENCES `promotion` (`promotionID`),
  ADD CONSTRAINT `fk12` FOREIGN KEY (`movieShowtimeID`) REFERENCES `movieshowtime` (`movieShowtimeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk18` FOREIGN KEY (`promotionID`) REFERENCES `promotion` (`promotionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookingseat`
--
ALTER TABLE `bookingseat`
  ADD CONSTRAINT `fk16` FOREIGN KEY (`bookingMovieID`) REFERENCES `bookingmovie` (`bookingMovieID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk15` FOREIGN KEY (`memberStatusID`) REFERENCES `memberstatus` (`memberstatusID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moviedata`
--
ALTER TABLE `moviedata`
  ADD CONSTRAINT `fk13` FOREIGN KEY (`genreTypeID`) REFERENCES `moviegenre` (`genreTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk20` FOREIGN KEY (`theaterTypeID`) REFERENCES `theatertype` (`theaterTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk21` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movieshowtime`
--
ALTER TABLE `movieshowtime`
  ADD CONSTRAINT `fk19` FOREIGN KEY (`theaterID`) REFERENCES `theater` (`theaterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk9` FOREIGN KEY (`movieID`) REFERENCES `moviedata` (`movieID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `fk14` FOREIGN KEY (`discountID`) REFERENCES `discount` (`discountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `f123` FOREIGN KEY (`movieShowtimeID`) REFERENCES `movieshowtime` (`movieShowtimeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk50` FOREIGN KEY (`seatType`) REFERENCES `seat_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk51` FOREIGN KEY (`theaterID`) REFERENCES `theater` (`theaterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk52` FOREIGN KEY (`seatRow`) REFERENCES `seat_row` (`row_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`theaterTypeID`) REFERENCES `theatertype` (`theaterTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
