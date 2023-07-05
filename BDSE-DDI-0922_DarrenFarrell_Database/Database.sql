-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 12:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_Email` varchar(100) NOT NULL,
  `Admin_password` varchar(50) NOT NULL,
  `Admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Admin_ID`, `Admin_Email`, `Admin_password`, `Admin_name`) VALUES
(1, 'rscandwright0@apple.com', 'CiETX70', 'Rozella Scandwright'),
(2, 'krowley1@seesaa.net', 'XgPHltQ', 'Karel Rowley'),
(3, 'ngrundy2@hubpages.com', 'uVrugjn', 'Niel Grundy'),
(4, 'mvan3@163.com', 'FsIjjL', 'Michel Van Eeden'),
(5, 'sfairs4@plala.or.jp', '7aNrlWa', 'Sammy Fairs');

-- --------------------------------------------------------

--
-- Table structure for table `bulk_email`
--

CREATE TABLE `bulk_email` (
  `Content` varchar(150) NOT NULL,
  `_recipient_email` varchar(50) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Email_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulk_email`
--

INSERT INTO `bulk_email` (`Content`, `_recipient_email`, `Subject`, `Email_ID`) VALUES
('Comedy|Horror', 'lmcfall0@friendfeed.com', 'The Horribly Slow Murderer with the Extremely Inefficient Weapon', 1),
('Comedy', 'mfobidge3@sbwire.com', 'Ultimate Accessory,The (100% cachemire)', 2),
('Comedy|Romance', 'cbowes5@acquirethisname.com', 'French Twist (Gazon maudit)', 3),
('Horror', 'hmeasures6@blogspot.com', 'Faust', 4),
('Romance', 'nbradtke7@thetimes.co.uk', 'Mating of Millie, The', 5);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_posted`
--

CREATE TABLE `jobs_posted` (
  `Job_ID` int(11) NOT NULL,
  `Job_title` varchar(50) NOT NULL,
  `Job_description` varchar(200) NOT NULL,
  `Expected_salary` int(11) NOT NULL,
  `Users_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs_posted`
--

INSERT INTO `jobs_posted` (`Job_ID`, `Job_title`, `Job_description`, `Expected_salary`, `Users_ID`) VALUES
(1, 'Software engineer', 'Software engineer for microsoft', 10000, 1),
(2, 'data scientist', 'data scientist for tesla', 9000, 2),
(3, 'UI/UX designer', 'designer for amazon', 10000, 3),
(4, 'data analyst', 'data analyst for apple', 12000, 2),
(5, 'backend developer', 'backend developer for facebook', 8500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `Users_ID` int(11) NOT NULL,
  `Admin_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`Users_ID`, `Admin_ID`) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Message_ID` int(11) NOT NULL,
  `Sender_name` varchar(50) NOT NULL,
  `Receiver_name` varchar(50) NOT NULL,
  `Content` varchar(150) NOT NULL,
  `Users_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Message_ID`, `Sender_name`, `Receiver_name`, `Content`, `Users_ID`) VALUES
(1, 'Patrick Boxer', 'Melisent Londsdale', 'hello, good to see you', 1),
(2, 'Patrick Boxer', 'Meara Bushnell', 'It\'s been so long', 1),
(3, 'Meara Bushnell', 'Patrick Boxer', 'Hi, long time no see', 2),
(4, 'Melisent Londsdale', 'Patrick Boxer', 'hello', 3),
(5, 'Meara Bushnell', 'Melisent Londsdale', 'hi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mock_data`
--

CREATE TABLE `mock_data` (
  `Users_ID` int(11) DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Country` text DEFAULT NULL,
  `Education` text DEFAULT NULL,
  `Experience` text DEFAULT NULL,
  `Certification` text DEFAULT NULL,
  `Password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mock_data`
--

INSERT INTO `mock_data` (`Users_ID`, `Email`, `Name`, `Country`, `Education`, `Experience`, `Certification`, `Password`) VALUES
(1, 'vabdy0@dell.com', 'Vina Abdy', 'Philippines', 'Xavier University', 'Graphic Designer', 'Philanthropy', 'DmmBpAid'),
(2, 'dashford1@ocn.ne.jp', 'D\'arcy Ashford', 'Philippines', 'Northwestern University of the Philippines', 'Automation Specialist III', 'NBFC', 'rAm0RXg'),
(3, 'syearby2@privacy.gov.au', 'Seka Yearby', 'Namibia', 'Polytechnic of Namibia', 'Librarian', 'VLSM', 'um7QnbcLmwn'),
(4, 'mvasnetsov3@wp.com', 'Miguela Vasnetsov', 'Canada', 'University of Saskatchewan', 'Food Chemist', 'PyGTK', 'SiVjzE8A2YaV'),
(5, 'hfiloniere4@youku.com', 'Hayes Filoniere', 'Brazil', 'Universidade Estadual do PiauÃ­', 'Biostatistician II', 'NCSS', 'sp1h2zJQ');

-- --------------------------------------------------------

--
-- Table structure for table `post_reply`
--

CREATE TABLE `post_reply` (
  `Users_ID` int(11) NOT NULL,
  `Thread_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_reply`
--

INSERT INTO `post_reply` (`Users_ID`, `Thread_ID`) VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 4),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sends`
--

CREATE TABLE `sends` (
  `Admin_ID` int(11) NOT NULL,
  `Email_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sends`
--

INSERT INTO `sends` (`Admin_ID`, `Email_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `Thread_ID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Content` varchar(150) NOT NULL,
  `Reply` varchar(150) NOT NULL,
  `Poster_name` varchar(50) NOT NULL,
  `Replier_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`Thread_ID`, `Title`, `Content`, `Reply`, `Poster_name`, `Replier_name`) VALUES
(1, 'Hello', 'Hello, i\'m new here', 'me too, let\'s connect', 'Patrick Boxer', 'Meara Bushnell'),
(2, 'Job opportunity', 'Hello i\'m looking for a job', 'I have a job opportunity for you', 'Meara Bushnell', 'Alvy Spinke'),
(3, 'hello everyone', 'welcome please feel free to connect with me', 'Hello alvy', 'Alvy Spinke', 'Genni Horlick'),
(4, 'Meetups', 'I\'m hosting a meetup this weekend', 'i would love to come', 'Genni Horlick', 'Melisent Londsdale'),
(5, 'Happy holiday', 'Happy holiday from me to everyone', 'Happy holiday to you and your family too', 'Melisent Londsdale', 'Patrick Boxer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Users_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Education` varchar(80) NOT NULL,
  `Experience` varchar(80) NOT NULL,
  `Certification` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Users_ID`, `Email`, `Name`, `Country`, `Education`, `Experience`, `Certification`, `Password`) VALUES
(1, 'pboxer0@google.ca', 'Patrick Boxer', 'China', 'Hunan University', 'Software Engineer', 'Java', 'jwq8eThnLg2y'),
(2, 'mbushnell1@microsoft.com', 'Meara Bushnell', 'France', 'Université Rennes II', 'Developer II', 'Python', 'nHEivAQxI64'),
(3, 'mlondsdale2@homestead.com', 'Melisent Londsdale', 'Indonesia', 'Universitas Bakrie', 'Account Coordinator', 'C++', '9lJBzvX'),
(4, 'ghorlick3@unblog.fr', 'Genni Horlick', 'Malaysia', 'Sultan Abdul Halim Muadzam Shah Polytechnic', 'Statistician III', 'C', 'S87QEDEtGZ'),
(5, 'aspinke4@va.gov', 'Alvy Spinkle', '	Mongolia', 'Mongolian University', 'Software Engineer', 'JavaScript', '	f1MdvQyY5oX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD KEY `admin_login` (`Admin_Email`,`Admin_password`);

--
-- Indexes for table `bulk_email`
--
ALTER TABLE `bulk_email`
  ADD PRIMARY KEY (`Email_ID`);

--
-- Indexes for table `jobs_posted`
--
ALTER TABLE `jobs_posted`
  ADD PRIMARY KEY (`Job_ID`),
  ADD KEY `Users_ID` (`Users_ID`),
  ADD KEY `job_info` (`Job_title`,`Expected_salary`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`Users_ID`,`Admin_ID`),
  ADD KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Message_ID`),
  ADD KEY `Users_ID` (`Users_ID`);

--
-- Indexes for table `post_reply`
--
ALTER TABLE `post_reply`
  ADD PRIMARY KEY (`Users_ID`,`Thread_ID`),
  ADD KEY `Thread_ID` (`Thread_ID`);

--
-- Indexes for table `sends`
--
ALTER TABLE `sends`
  ADD PRIMARY KEY (`Admin_ID`,`Email_ID`),
  ADD KEY `Email_ID` (`Email_ID`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`Thread_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Users_ID`),
  ADD KEY `user_login` (`Email`,`Password`),
  ADD KEY `user_country` (`Name`,`Country`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs_posted`
--
ALTER TABLE `jobs_posted`
  ADD CONSTRAINT `jobs_posted_ibfk_1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`Users_ID`);

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`Users_ID`),
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`Admin_ID`) REFERENCES `administrator` (`Admin_ID`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`Users_ID`);

--
-- Constraints for table `post_reply`
--
ALTER TABLE `post_reply`
  ADD CONSTRAINT `post_reply_ibfk_1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`Users_ID`),
  ADD CONSTRAINT `post_reply_ibfk_2` FOREIGN KEY (`Thread_ID`) REFERENCES `thread` (`Thread_ID`);

--
-- Constraints for table `sends`
--
ALTER TABLE `sends`
  ADD CONSTRAINT `sends_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `administrator` (`Admin_ID`),
  ADD CONSTRAINT `sends_ibfk_2` FOREIGN KEY (`Email_ID`) REFERENCES `bulk_email` (`Email_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
