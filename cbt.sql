-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2015 at 03:13 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `answer1` varchar(250) NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_id`) VALUES
(1, 'What is meant by agent’s percept sequence? ', 'Used to perceive the environment ', 'Complete history of actuator ', 'Complete history of perceived things', 'Both A & B ', '3', 1),
(2, 'An autonomous agent ', 'Manipulates it’s environment', 'Cannot be said to be intelligent', 'Is a physical object', 'Is just an algorithm', '1', 1),
(3, 'Utility-based agents seek mainly', 'Reward', 'Truth', 'Points', 'To be helpful', '1', 1),
(4, 'Exploration may be useful for environments that are', 'Fully observable ', 'Partially observable', 'Episodic ', 'Not-observable', '4', 1),
(5, 'A knowledge base contains ', 'Rules, facts and relationships', 'Only rules and relationships', 'Simulation of human thinking', 'Only facts', '1', 1),
(6, 'When a conclusion is stated as a probability rather than an\r\nexact fact, it is known as:', 'An expert system', 'A database', 'Fuzzy logic', 'Pattern recognition', '3', 1),
(7, 'The following agent program types are implemented using\r\ninternal states except _________', 'Simple reflex agents', 'Model based agents', 'Goal-based agents', 'Utility-based agents', '1', 1),
(8, 'The search algorithm that fancies a stack or a last-in-first-out\r\ndata structure is:', 'Blind Search', 'Breadth-first Search', 'Depth-first Search', 'Uniform cost Search', '3', 1),
(9, 'Different learning methods does not include:', 'Memorization', 'Analogy', 'Deduction', 'Introduction', '4', 1),
(10, 'What is the goal of artificial intelligence?', 'To solve real-world problems', 'To solve artificial problems', 'To explain various sorts of intelligence\r\n', 'To extract scientific causes\r\n', '3', 1),
(11, 'What is the number of nodes for a search tree with a depth of 4 and a branching factor of 9?', '7379', '7380', '7381', '7382', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `matric_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `department` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `matric_no`, `password`, `firstname`, `surname`, `department`, `course`, `score`, `category_id`) VALUES
(1, '12/3348', 'awesome', 'Oyegoke', 'Fadare', 'CS', 'CIS', 0, 0),
(2, '12/3369', 'ina', 'Ina', 'Oyebanji', 'CS', 'CIS', 0, 0),
(3, '12/1220', 'qwerty', 'Samuel', 'Bindas', 'CS', 'CIS', 0, 0),
(4, '12/2179', 'musicmahn', 'Olakunle', 'Emehinola', 'CS', 'CIS', 0, 0),
(5, '12/2514', 'qwerty', 'Chidera', 'Molokwu', 'CS', 'CIS', 0, 0),
(0, '12/3341', '1234', 'Tayo', 'Braimoh', 'CS', 'CIS', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
