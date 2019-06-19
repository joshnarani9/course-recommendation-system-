-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2019 at 07:48 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicantcertificates`
--

DROP TABLE IF EXISTS `applicantcertificates`;
CREATE TABLE IF NOT EXISTS `applicantcertificates` (
  `intern_certificate_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id of the certificate',
  `applicant_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `internship_role_title` varchar(255) NOT NULL COMMENT 'Role of the user in the internship',
  `internship_category` varchar(255) NOT NULL COMMENT 'Dpartment name for the internship',
  PRIMARY KEY (`intern_certificate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table keeps the record of the certificates of the interns';

-- --------------------------------------------------------

--
-- Table structure for table `assessmentdetails`
--

DROP TABLE IF EXISTS `assessmentdetails`;
CREATE TABLE IF NOT EXISTS `assessmentdetails` (
  `assessment_details_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the assessment',
  `topics` varchar(1000) NOT NULL COMMENT 'Lecture id of the different modules in a particular Section from lecture table',
  `trainer_id` int(100) NOT NULL COMMENT 'FK, It is Instructor User id ',
  `duration_of_assessment` varchar(1000) NOT NULL COMMENT 'Timings for the assessment (hour-min) ',
  `validity_period` varchar(1000) NOT NULL COMMENT 'number of days for which assessment is valid',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK,course id of a course',
  `assessment_name` varchar(500) NOT NULL COMMENT 'Assessment name is stored',
  `publish_status` int(10) NOT NULL COMMENT 'Status of the assessment whether it is publish(1) or not (0) ',
  `publish_date` varchar(40) NOT NULL COMMENT 'Publish Date of Assessment',
  `course_batch_id` int(255) NOT NULL COMMENT 'FK, batch id of a batch of a course',
  PRIMARY KEY (`assessment_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='description for the assesment is maintained here';

-- --------------------------------------------------------

--
-- Table structure for table `assessmentquestionandanswer`
--

DROP TABLE IF EXISTS `assessmentquestionandanswer`;
CREATE TABLE IF NOT EXISTS `assessmentquestionandanswer` (
  `assessment_question_answer_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the answers of the question (Auto Increament) ',
  `assessment_details_id` int(100) NOT NULL COMMENT 'FK, id of the assessment this question belongs to',
  `question_sequence_number` int(10) NOT NULL COMMENT 'It sores the Sequence number in which the question should appear',
  `question` varchar(1000) NOT NULL COMMENT 'Question Text',
  `option1` varchar(1000) NOT NULL COMMENT 'Option 1 For the question',
  `option2` varchar(1000) NOT NULL COMMENT 'Option 2 For the question',
  `option3` varchar(1000) NOT NULL COMMENT 'Option 3 For the question',
  `option4` varchar(1000) NOT NULL COMMENT 'Option 4 For the question',
  `answer` int(10) NOT NULL COMMENT 'Answer of the question from 4 options',
  PRIMARY KEY (`assessment_question_answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='questions answers for the assesment are stored here';

-- --------------------------------------------------------

--
-- Table structure for table `browserpagelinks`
--

DROP TABLE IF EXISTS `browserpagelinks`;
CREATE TABLE IF NOT EXISTS `browserpagelinks` (
  `browser_pagelinks_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for browser pagelinks recorded ',
  `user_id` varchar(1000) NOT NULL COMMENT 'FK, id of an user whose navigation browser links are tracked',
  `browser_name` varchar(1000) NOT NULL COMMENT 'browser on which the user is accessing the site',
  `current_page_link` varchar(1000) NOT NULL COMMENT 'link or url of the current web page',
  `previous_page_link` varchar(100) NOT NULL COMMENT 'link or url of the previous web page',
  `user_session_id` varchar(1000) NOT NULL COMMENT 'session id of the user',
  `page_visit_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the time at which user visited the page',
  PRIMARY KEY (`browser_pagelinks_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1266 DEFAULT CHARSET=latin1 COMMENT='this table tracks the user about his browser navination insite';

--
-- Dumping data for table `browserpagelinks`
--

INSERT INTO `browserpagelinks` (`browser_pagelinks_id`, `user_id`, `browser_name`, `current_page_link`, `previous_page_link`, `user_session_id`, `page_visit_timestamp`) VALUES
(1, '10000037', 'Chrome', '', '', 'nm4e9k929pm06o4vtrn6979sii', '2019-04-24 19:34:23'),
(2, '10000037', 'Chrome', '', '', 'nm4e9k929pm06o4vtrn6979sii', '2019-04-24 19:41:15'),
(3, '10000037', 'Chrome', '', '', 'nm4e9k929pm06o4vtrn6979sii', '2019-04-24 19:41:27'),
(4, '10000000', 'Chrome', '', '', 'qn2e3knbmddeiv79edve46hkhd', '2019-04-24 19:42:05'),
(5, '10000066', 'Chrome', 'https://www.olcademy.in/', '', 'm7nbtcl81p0tlba88ko00u0vf2', '2019-04-24 20:43:55'),
(6, '10000000', 'Firefox', '', '', 'mbu85he4bvqpt1n8gpal998ff9', '2019-04-25 02:47:03'),
(7, '10000000', 'Firefox', '', '', 'mbu85he4bvqpt1n8gpal998ff9', '2019-04-25 02:47:19'),
(8, '10000000', 'Firefox', '', '', 'mbu85he4bvqpt1n8gpal998ff9', '2019-04-25 02:47:54'),
(9, '5cc0a1f04c198', 'Chrome', '', '', 'h3f782182mabqt1md24gfvunrb', '2019-04-25 08:30:58'),
(10, '10000067', 'Chrome', '', '', 'h3f782182mabqt1md24gfvunrb', '2019-04-25 08:30:58'),
(11, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:55:39'),
(12, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:55:53'),
(13, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:55:57'),
(14, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:56:02'),
(15, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:56:07'),
(16, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/dashboard/instructor', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 09:57:22'),
(17, '10000000', 'Chrome', '', '', '2dhcjg2t5srv90gutlfuh4gtk8', '2019-04-25 11:03:29'),
(18, '10000000', 'Chrome', '', '', '2dhcjg2t5srv90gutlfuh4gtk8', '2019-04-25 11:03:56'),
(19, '10000000', 'Chrome', '', '', '2dhcjg2t5srv90gutlfuh4gtk8', '2019-04-25 11:04:29'),
(20, '10000000', 'Chrome', '', '', '2dhcjg2t5srv90gutlfuh4gtk8', '2019-04-25 11:04:46'),
(21, '10000000', 'Chrome', '', '', '2dhcjg2t5srv90gutlfuh4gtk8', '2019-04-25 11:04:56'),
(22, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/dashboard/instructor', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 11:05:44'),
(23, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 11:05:47'),
(24, '10000001', 'Chrome', '', '', '1ghqbacsc2dbm29mcilp5vsd2i', '2019-04-25 11:06:19'),
(25, '10000001', 'Chrome', '', '', '1ghqbacsc2dbm29mcilp5vsd2i', '2019-04-25 11:06:30'),
(26, '10000001', 'Chrome', '', '', '1ghqbacsc2dbm29mcilp5vsd2i', '2019-04-25 11:06:43'),
(27, '10000001', 'Microsoft Edge', '', '', '03de3ur9gg8asj1qsd6p23r78s', '2019-04-25 11:08:58'),
(28, '10000001', 'Microsoft Edge', '', '', '03de3ur9gg8asj1qsd6p23r78s', '2019-04-25 11:09:12'),
(29, '10000038', 'Chrome', '', '', 'hcpfh1bc0l3pa9m51vqhvb5u5m', '2019-04-25 11:10:43'),
(30, '10000038', 'Chrome', '', '', 'hcpfh1bc0l3pa9m51vqhvb5u5m', '2019-04-25 11:11:00'),
(31, '10000038', 'Chrome', '', '', 'hcpfh1bc0l3pa9m51vqhvb5u5m', '2019-04-25 11:11:36'),
(32, '10000038', 'Chrome', '', '', 'hcpfh1bc0l3pa9m51vqhvb5u5m', '2019-04-25 11:16:16'),
(33, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-25 11:57:52'),
(34, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-25 11:58:08'),
(35, '10000038', 'Chrome', '', '', 'hcpfh1bc0l3pa9m51vqhvb5u5m', '2019-04-25 12:06:14'),
(36, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-25 12:09:10'),
(37, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-25 12:09:16'),
(38, '10000068', 'Chrome', '', '', '75lcogm4h5i36jpp7iur7h7civ', '2019-04-25 12:09:45'),
(39, '10000068', 'Chrome', '', '', 'n78oo2jch7rg4piq9gi4jaqt19', '2019-04-25 12:10:17'),
(40, '10000068', 'Chrome', '', '', 'n78oo2jch7rg4piq9gi4jaqt19', '2019-04-25 12:10:43'),
(41, '10000068', 'Chrome', '', '', 'n78oo2jch7rg4piq9gi4jaqt19', '2019-04-25 12:11:16'),
(42, '10000068', 'Chrome', '', '', 'n78oo2jch7rg4piq9gi4jaqt19', '2019-04-25 12:11:27'),
(43, '10000000', 'Chrome', '', '', 'deqaaa20ni3ks5srum0tbr0l46', '2019-04-25 12:13:54'),
(44, '10000000', 'Chrome', '', '', 'deqaaa20ni3ks5srum0tbr0l46', '2019-04-25 12:14:09'),
(45, '10000000', 'Chrome', '', '', 'deqaaa20ni3ks5srum0tbr0l46', '2019-04-25 12:14:14'),
(46, '10000000', 'Chrome', '', '', 'deqaaa20ni3ks5srum0tbr0l46', '2019-04-25 12:14:28'),
(47, '10000038', 'Chrome', '', '', 'r777irgbm526fr0tt2le7cu5k9', '2019-04-25 12:15:27'),
(48, '10000038', 'Chrome', '', '', 'r777irgbm526fr0tt2le7cu5k9', '2019-04-25 12:15:38'),
(49, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 12:50:51'),
(50, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'opbcrdf9729185cteiu8kav4ef', '2019-04-25 13:48:06'),
(51, '10000000', 'Firefox', '', '', 'c95ltdeg6i69cpaipimulm0r0b', '2019-04-25 17:10:21'),
(52, '10000000', 'Firefox', '', '', 'c95ltdeg6i69cpaipimulm0r0b', '2019-04-25 17:10:42'),
(53, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:19:33'),
(54, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:19:42'),
(55, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:20:07'),
(56, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:22:01'),
(57, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:22:13'),
(58, '10000000', 'Chrome', '', '', 'moriktl8597mtje09d8011uu09', '2019-04-25 17:22:24'),
(59, '10000000', 'Firefox', '', '', 'c95ltdeg6i69cpaipimulm0r0b', '2019-04-25 17:37:08'),
(60, '10000066', 'Chrome', 'https://www.olcademy.in/', '', '2i973tj64l4i2uc4u0783otc3l', '2019-04-25 20:55:05'),
(61, '10000038', 'Chrome', '', '', 'r777irgbm526fr0tt2le7cu5k9', '2019-04-25 21:08:31'),
(62, '10000000', 'Chrome', '', '', 'dapis7p2kl9hfmsa1dfamqk21j', '2019-04-26 04:26:26'),
(63, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 04:32:35'),
(64, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 04:32:52'),
(65, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 04:33:13'),
(66, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 04:34:38'),
(67, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 05:03:13'),
(68, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 05:29:16'),
(69, '10000037', 'Chrome', '', '', 'jdeqla21ntfkh90kilrgo1uldd', '2019-04-26 05:29:31'),
(70, '10000000', 'Chrome', '', '', 'plls438qgjb2jeb6ej54mn2mqg', '2019-04-26 05:35:34'),
(71, '10000000', 'Chrome', '', '', 'plls438qgjb2jeb6ej54mn2mqg', '2019-04-26 05:35:52'),
(72, '10000000', 'Chrome', '', '', 'plls438qgjb2jeb6ej54mn2mqg', '2019-04-26 05:36:25'),
(73, '10000000', 'Chrome', '', '', 'plls438qgjb2jeb6ej54mn2mqg', '2019-04-26 05:36:46'),
(74, '10000000', 'Chrome', '', '', 'plls438qgjb2jeb6ej54mn2mqg', '2019-04-26 05:37:53'),
(75, '10000001', 'Chrome', '', '', '9keebmm71b5kvf8a5s843g0a2k', '2019-04-26 05:38:26'),
(76, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 12:53:05'),
(77, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 12:53:45'),
(78, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 12:54:08'),
(79, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 12:55:53'),
(80, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 12:56:47'),
(81, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:09:02'),
(82, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:10:15'),
(83, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:27:30'),
(84, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:29:01'),
(85, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:29:14'),
(86, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:30:16'),
(87, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:30:29'),
(88, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:32:26'),
(89, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'opbcrdf9729185cteiu8kav4ef', '2019-04-26 13:37:46'),
(90, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'opbcrdf9729185cteiu8kav4ef', '2019-04-26 13:37:53'),
(91, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'opbcrdf9729185cteiu8kav4ef', '2019-04-26 13:37:59'),
(92, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'opbcrdf9729185cteiu8kav4ef', '2019-04-26 13:38:08'),
(93, '10000068', 'Chrome', '', '', 'dr6fc2g7ggc1h19fbqml66cvui', '2019-04-26 13:51:26'),
(94, '10000000', 'Chrome', '', '', 'fnvumnbg0uo17th9mtsfhh7e0p', '2019-04-26 13:52:01'),
(95, '10000000', 'Chrome', '', '', 'fnvumnbg0uo17th9mtsfhh7e0p', '2019-04-26 13:52:07'),
(96, '10000000', 'Chrome', '', '', 'fnvumnbg0uo17th9mtsfhh7e0p', '2019-04-26 13:52:10'),
(97, '10000000', 'Chrome', '', '', 'fnvumnbg0uo17th9mtsfhh7e0p', '2019-04-26 13:53:43'),
(98, '10000000', 'Chrome', '', '', 'fnvumnbg0uo17th9mtsfhh7e0p', '2019-04-26 13:54:38'),
(99, '10000068', 'Chrome', '', '', '06i2cp4ba5rerjvpd44a4hdube', '2019-04-26 13:55:13'),
(100, '10000068', 'Chrome', '', '', '06i2cp4ba5rerjvpd44a4hdube', '2019-04-26 13:55:23'),
(101, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:55:34'),
(102, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/index.php', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:55:42'),
(103, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:55:56'),
(104, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/homepage', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:56:07'),
(105, '10000000', 'Chrome', '', '', '2rou5rf66rga2f754hbj5t06i5', '2019-04-26 13:56:13'),
(106, '10000000', 'Chrome', '', '', '2rou5rf66rga2f754hbj5t06i5', '2019-04-26 13:56:18'),
(107, '10000000', 'Chrome', '', '', '2rou5rf66rga2f754hbj5t06i5', '2019-04-26 13:56:24'),
(108, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=3', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:56:29'),
(109, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:57:04'),
(110, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/homepage', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:57:09'),
(111, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 13:57:22'),
(112, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 13:57:27'),
(113, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 13:58:01'),
(114, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 13:58:21'),
(115, '10000000', 'Chrome', 'https://olcademy.in/result.php?search_query=Software%20Manual%20Testing', 'https://olcademy.in/homepage', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:58:41'),
(116, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/result.php?search_query=Software%20Manual%20Testing', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:59:17'),
(117, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', '1aqtpacl2br535t7kril9mc0gl', '2019-04-26 13:59:21'),
(118, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 13:59:35'),
(119, '10000000', 'Chrome', 'https://olcademy.in/', '', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:13:59'),
(120, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:14:24'),
(121, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:15:41'),
(122, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:16:00'),
(123, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:16:38'),
(124, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=3', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:16:43'),
(125, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:16:48'),
(126, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=3', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:16:54'),
(127, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:17:19'),
(128, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/newNotification.php?data=3', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:17:44'),
(129, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:18:16'),
(130, '10000000', 'Chrome', 'https://olcademy.in/editcourse/925155628891110000000', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 14:28:34'),
(131, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'bp62frra3ihrv8r2q2p64edg61', '2019-04-26 14:56:39'),
(132, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'bp62frra3ihrv8r2q2p64edg61', '2019-04-26 14:56:50'),
(133, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 15:26:37'),
(134, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 15:26:42'),
(135, '10000068', 'Chrome', '', '', '6mi23620v8f208671es793t4i2', '2019-04-26 15:27:03'),
(136, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=925155628891110000000', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:45:56'),
(137, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:46:14'),
(138, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:46:36'),
(139, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:46:53'),
(140, '10000000', 'Chrome', 'https://olcademy.in/description-moderator/925155628891110000000', 'https://olcademy.in/dashboard/moderator', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:48:38'),
(141, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/description-moderator/925155628891110000000', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:50:37'),
(142, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'dt7quvlp6ttgmg0fr9g03o87cv', '2019-04-26 15:50:55'),
(143, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 15:57:43'),
(144, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 15:57:49'),
(145, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 15:59:42'),
(146, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 15:59:59'),
(147, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 16:00:50'),
(148, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 16:01:16'),
(149, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-26 16:02:48'),
(150, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-26 16:39:31'),
(151, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-26 16:39:43'),
(152, '10000000', 'Firefox', '', '', 'hguh0lc2ok2v6c2j44omksd7tu', '2019-04-26 18:59:52'),
(153, '10000000', 'Firefox', '', '', 'hguh0lc2ok2v6c2j44omksd7tu', '2019-04-26 19:00:05'),
(154, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:02:04'),
(155, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:02:16'),
(156, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:03:09'),
(157, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:03:33'),
(158, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:03:51'),
(159, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:04:28'),
(160, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:04:48'),
(161, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:05:45'),
(162, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:05:56'),
(163, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:10:29'),
(164, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:10:53'),
(165, '10000000', 'Chrome', '', '', 'eqnp1d0tgsdbn92uik96tnic9d', '2019-04-26 20:11:22'),
(166, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:14:52'),
(167, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:14:57'),
(168, '10000037', 'Chrome', '', '', '32tvcpqngcgftiojq4r59rdrb8', '2019-04-26 20:15:31'),
(169, '10000038', 'Chrome', '', '', 'if0ve8tre53d22og2r0bjkktj2', '2019-04-26 20:24:32'),
(170, '10000038', 'Chrome', '', '', 'if0ve8tre53d22og2r0bjkktj2', '2019-04-26 20:27:05'),
(171, '10000038', 'Chrome', '', '', 'if0ve8tre53d22og2r0bjkktj2', '2019-04-26 20:41:56'),
(172, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:08:39'),
(173, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/homepage', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:08:50'),
(174, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/moderator', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:09:43'),
(175, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=1', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:10:15'),
(176, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/moderator', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:10:26'),
(177, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=1', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:10:41'),
(178, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:10:46'),
(179, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/homepage', 'kkaklhebfp0d0afn1iimvhftla', '2019-04-27 00:10:51'),
(180, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:11:28'),
(181, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/index.php', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:11:56'),
(182, '10000013', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/842155625327610000037', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:16:05'),
(183, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/olcademy-chat', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:16:37'),
(184, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/dashboard/instructor', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:34:25'),
(185, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:37:41'),
(186, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/homepage', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:37:46'),
(187, '10000013', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/842155625327610000037', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:46:01'),
(188, '10000013', 'Chrome', 'https://olcademy.in/settings', 'https://olcademy.in/olcademy-chat', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:46:13'),
(189, '10000013', 'Chrome', 'https://olcademy.in/settings', 'https://olcademy.in/settings', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:48:00'),
(190, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/viewbucket', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:48:48'),
(191, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/homepage', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:48:55'),
(192, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/viewbucket', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:57:24'),
(193, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/viewbucket', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 00:58:00'),
(194, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/appComingSoon.php', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:05:08'),
(195, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/index.php', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:05:16'),
(196, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/fastcheckout/course/842155625327610000037', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:30:15'),
(197, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/fastcheckout/course/842155625327610000037', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:30:23'),
(198, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/viewbucket', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:31:14'),
(199, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:34:35'),
(200, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/dashboard/student', '0flg2ptqndd6ipo8fscgb8k87e', '2019-04-27 01:36:05'),
(201, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-27 09:06:08'),
(202, '10000000', 'Chrome', '', '', 'qhh0vt7ro080ngu5dqhblbsk6k', '2019-04-27 09:06:12'),
(203, '10000000', 'Chrome', '', '', 'drmfhuda3u5d7a8r2s59igmkqj', '2019-04-27 09:49:48'),
(204, '10000000', 'Chrome', '', '', 'drmfhuda3u5d7a8r2s59igmkqj', '2019-04-27 09:51:48'),
(205, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 13:58:50'),
(206, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 13:58:58'),
(207, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 13:59:15'),
(208, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 13:59:45'),
(209, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 14:00:15'),
(210, '10000000', 'Firefox', '', '', 'r3ng9vummgpi4h0dduok5be8k6', '2019-04-27 14:00:34'),
(211, '10000038', 'Chrome', '', '', '2vsaierv684k7efgqvs5lbca05', '2019-04-27 14:52:39'),
(212, '10000038', 'Chrome', '', '', '2vsaierv684k7efgqvs5lbca05', '2019-04-27 14:52:52'),
(213, '10000000', 'Chrome', 'https://olcademy.in/', '', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:55:34'),
(214, '10000068', 'Chrome', '', '', '56m6udk6bc995i0sosjiit6kg6', '2019-04-27 14:56:00'),
(215, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:56:03'),
(216, '10000068', 'Chrome', '', '', '56m6udk6bc995i0sosjiit6kg6', '2019-04-27 14:56:06'),
(217, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/instructor', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:57:09'),
(218, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=1', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:57:16'),
(219, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:57:33'),
(220, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=1', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 14:57:48'),
(221, '10000068', 'Chrome', '', '', '56m6udk6bc995i0sosjiit6kg6', '2019-04-27 14:57:56'),
(222, '10000068', 'Chrome', '', '', '56m6udk6bc995i0sosjiit6kg6', '2019-04-27 15:00:54'),
(223, '10000000', 'Chrome', 'https://olcademy.in/editcourse/925155628891110000000', 'https://olcademy.in/dashboard/instructor', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 15:02:25'),
(224, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/afterpub.php?course=925155628891110000000', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 15:04:22'),
(225, '10000000', 'Chrome', 'https://olcademy.in/description-moderator/925155628891110000000', 'https://olcademy.in/dashboard/moderator', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 15:05:50'),
(226, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'b13ksbtciip2riejnfeng6mvo6', '2019-04-27 15:05:54'),
(227, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/index.php', 'b13ksbtciip2riejnfeng6mvo6', '2019-04-27 15:06:41'),
(228, '10000000', 'Chrome', '', '', 'll341g0km7r561t62fr0u1cvid', '2019-04-27 15:06:44'),
(229, '10000000', 'Chrome', '', '', 'll341g0km7r561t62fr0u1cvid', '2019-04-27 15:06:50'),
(230, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/description-moderator/925155628891110000000', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 15:06:52'),
(231, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'globj6ju6qcrrp2dn012eb1evp', '2019-04-27 15:07:44'),
(232, '10000000', 'Chrome', '', '', 'll341g0km7r561t62fr0u1cvid', '2019-04-27 15:07:55'),
(233, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'lt106trlkvngqq5mrsi296comr', '2019-04-27 15:08:41'),
(234, '10000068', 'Chrome', '', '', 'er9g2taie3pvkqj590srl0g3oi', '2019-04-27 15:09:09'),
(235, '10000047', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/index.php', 'lt106trlkvngqq5mrsi296comr', '2019-04-27 15:09:14'),
(236, '10000068', 'Chrome', '', '', 'er9g2taie3pvkqj590srl0g3oi', '2019-04-27 15:09:16'),
(237, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'fku4mi44mof610pvv46f2be1be', '2019-04-27 15:09:42'),
(238, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'fku4mi44mof610pvv46f2be1be', '2019-04-27 15:09:57'),
(239, '10000068', 'Chrome', '', '', 'er9g2taie3pvkqj590srl0g3oi', '2019-04-27 15:10:39'),
(240, '10000068', 'Chrome', '', '', 'er9g2taie3pvkqj590srl0g3oi', '2019-04-27 15:11:30'),
(241, '10000068', 'Chrome', '', '', 'er9g2taie3pvkqj590srl0g3oi', '2019-04-27 15:12:14'),
(242, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '2h7st9ls4fmn470jgvkgr7ddfk', '2019-04-27 15:35:46'),
(243, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '2h7st9ls4fmn470jgvkgr7ddfk', '2019-04-27 15:35:55'),
(244, '10000000', 'Chrome', 'https://olcademy.in/editcourse/861155637969010000000', 'https://olcademy.in/dashboard/instructor', '2h7st9ls4fmn470jgvkgr7ddfk', '2019-04-27 15:41:32'),
(245, '10000000', 'Firefox', '', '', 'p8bgu7ija0dd737vqltpbesef6', '2019-04-27 16:17:41'),
(246, '10000000', 'Firefox', '', '', 'p8bgu7ija0dd737vqltpbesef6', '2019-04-27 16:19:00'),
(247, '10000000', 'Chrome', 'https://olcademy.in/', '', 'r793hd17k5v1lhug299mpbq4nv', '2019-04-27 19:58:49'),
(248, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'r793hd17k5v1lhug299mpbq4nv', '2019-04-27 19:59:04'),
(249, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'r793hd17k5v1lhug299mpbq4nv', '2019-04-27 20:01:21'),
(250, '10000038', 'Chrome', '', '', '57ihd5616qkb271km1ifhk5ido', '2019-04-27 20:02:47'),
(251, '10000000', 'Chrome', '', '', 'r87mdh83qubvm60et5cl21uhvh', '2019-04-27 20:09:42'),
(252, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:10:45'),
(253, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:11:12'),
(254, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:15:18'),
(255, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:15:28'),
(256, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:19:25'),
(257, '10000037', 'Chrome', '', '', '87f34tlt3hpiq0ft1v3pi1ckkf', '2019-04-27 20:21:43'),
(258, '10000038', 'Chrome', '', '', 'tka091iprm7f403q1d7kjm91bb', '2019-04-27 20:23:27'),
(259, '10000000', 'Chrome', '', '', 'unsgk57o6nalomsaevio9p3jod', '2019-04-27 20:24:07'),
(260, '10000000', 'Chrome', '', '', 'unsgk57o6nalomsaevio9p3jod', '2019-04-27 20:24:34'),
(261, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 00:18:12'),
(262, '10000000', 'Chrome', 'https://olcademy.in/editcourse/861155637969010000000', 'https://olcademy.in/preview/861155637969010000000', '2h7st9ls4fmn470jgvkgr7ddfk', '2019-04-28 03:52:34'),
(263, '10000020', 'Opera', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 05:51:40'),
(264, '10000020', 'Opera', 'https://olcademy.in/Profile', 'https://olcademy.in/index.php', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 05:59:43'),
(265, '10000020', 'Opera', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/Profile', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:00:08'),
(266, '10000020', 'Opera', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:00:47'),
(267, '10000020', 'Opera', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:00:57'),
(268, '10000020', 'Opera', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/homepage', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:01:07'),
(269, '10000020', 'Opera', 'https://olcademy.in/homepage', 'https://olcademy.in/fastcheckout/course/842155625327610000037', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:03:27'),
(270, '10000020', 'Opera', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:06:33'),
(271, '10000000', 'Chrome', '', '', '0o939k5laulcta0dpuo424b5af', '2019-04-28 06:08:09'),
(272, '10000000', 'Chrome', '', '', '0o939k5laulcta0dpuo424b5af', '2019-04-28 06:08:32'),
(273, '10000020', 'Opera', 'https://olcademy.in/categoryResult.php?cat=%27Design%27', 'https://olcademy.in/dashboard/instructor', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-28 06:10:14'),
(274, '10000000', 'Chrome', 'https://olcademy.in/', 'https://www.google.com/', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-28 09:57:30'),
(275, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-28 09:57:39'),
(276, '10000038', 'Chrome', 'https://olcademy.in/', '', 'r777irgbm526fr0tt2le7cu5k9', '2019-04-28 10:10:37'),
(277, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'nm0p9poi9s2124e4p7eujcan8i', '2019-04-28 10:11:02'),
(278, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/index.php', 'nm0p9poi9s2124e4p7eujcan8i', '2019-04-28 10:11:19'),
(279, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=1', 'nm0p9poi9s2124e4p7eujcan8i', '2019-04-28 10:11:49'),
(280, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'nm0p9poi9s2124e4p7eujcan8i', '2019-04-28 10:12:24'),
(281, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'c27vaq34du7o7huh60rilk2v8a', '2019-04-28 10:13:28'),
(282, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'c27vaq34du7o7huh60rilk2v8a', '2019-04-28 10:13:41'),
(283, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/instructor', 'c27vaq34du7o7huh60rilk2v8a', '2019-04-28 10:15:51'),
(284, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/newNotification.php?data=1', 'c27vaq34du7o7huh60rilk2v8a', '2019-04-28 10:17:24'),
(285, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'c27vaq34du7o7huh60rilk2v8a', '2019-04-28 10:17:29'),
(286, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'o5h1145gpit8m8jgmh9l1mi559', '2019-04-28 10:18:20'),
(287, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'o5h1145gpit8m8jgmh9l1mi559', '2019-04-28 10:18:27'),
(288, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '7k1h9ggbq5v1901lrflfs30lej', '2019-04-28 10:19:46'),
(289, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '7k1h9ggbq5v1901lrflfs30lej', '2019-04-28 10:19:51'),
(290, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '7k1h9ggbq5v1901lrflfs30lej', '2019-04-28 10:28:44'),
(291, '10000000', 'Chrome', '', '', '225h2vru5sa36ckobhb722guvo', '2019-04-28 19:45:17'),
(292, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 23:11:45'),
(293, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 23:12:22'),
(294, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/Profile', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 23:12:26'),
(295, '10000013', 'Chrome', 'https://olcademy.in/editcourse/245155649317410000013', 'https://olcademy.in/dashboard/instructor', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 23:12:54'),
(296, '10000013', 'Chrome', 'https://olcademy.in/editcourse/245155649317410000013', 'https://olcademy.in/preview/245155649317410000013', 'fku4mi44mof610pvv46f2be1be', '2019-04-28 23:45:16'),
(297, '10000000', 'Chrome', 'https://olcademy.in/', '', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:47:09'),
(298, '10000000', 'Chrome', 'https://olcademy.in/', '', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:47:26'),
(299, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:47:49'),
(300, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:48:22'),
(301, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:49:08'),
(302, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:56:29'),
(303, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:57:13'),
(304, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'h45m7gv2v9kqvd7ndn6segt877', '2019-04-29 11:57:44'),
(305, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'orfqul1ha7jmu1f212qcsqfn42', '2019-04-29 12:13:58'),
(306, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:18:51'),
(307, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:19:07'),
(308, '10000000', 'Chrome', 'https://olcademy.in/', '', 'piidg32ks9dnsmirn5kq4pcf8g', '2019-04-29 12:20:18'),
(309, '10000000', 'Chrome', 'https://olcademy.in/editcourse/601155654042710000000', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:20:29'),
(310, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:20:41'),
(311, '10000000', 'Chrome', 'https://olcademy.in/editcourse/601155654042710000000', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:21:08'),
(312, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'rv759nh33loc0th3t7d4n4qsf1', '2019-04-29 12:21:11'),
(313, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/homepage', 'rv759nh33loc0th3t7d4n4qsf1', '2019-04-29 12:24:43'),
(314, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'g29ldeuhb58tl83qaviqulqcje', '2019-04-29 12:25:49'),
(315, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/index.php', 'g29ldeuhb58tl83qaviqulqcje', '2019-04-29 12:27:58'),
(316, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'g29ldeuhb58tl83qaviqulqcje', '2019-04-29 12:28:05'),
(317, '10000000', 'Chrome', 'https://olcademy.in/editcourse/601155654042710000000', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:45:51'),
(318, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 12:46:00'),
(319, '10000000', 'Chrome', 'https://olcademy.in/editcourse/601155654042710000000', 'https://olcademy.in/preview/601155654042710000000', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:04:08'),
(320, '10000000', 'Chrome', 'https://olcademy.in/editcourse/601155654042710000000', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:05:29'),
(321, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/afterpub.php?course=601155654042710000000', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:05:51'),
(322, '10000000', 'Chrome', 'https://olcademy.in/description-moderator/601155654042710000000', 'https://olcademy.in/dashboard/moderator', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:06:04'),
(323, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/description-moderator/601155654042710000000', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:06:41'),
(324, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:06:53'),
(325, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:07:26'),
(326, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:07:32'),
(327, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:07:36'),
(328, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'nn5dvbbb0ouivddljagjbpfvft', '2019-04-29 13:08:07'),
(329, '10000020', 'Opera', 'https://olcademy.in/', '', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-29 13:51:59'),
(330, '10000013', 'Chrome', 'https://olcademy.in/', '', 'fku4mi44mof610pvv46f2be1be', '2019-04-29 13:52:32'),
(331, '10000020', 'Opera', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-29 13:58:12'),
(332, '10000020', 'Opera', 'https://olcademy.in/', '', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-29 13:58:47'),
(333, '10000020', 'Opera', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-29 13:59:32'),
(334, '10000020', 'Opera', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'r2t2ur8e79ldq7q7hqv9fiv4he', '2019-04-29 14:00:29'),
(335, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'llm13oqhp43cfovfgt7vq1hj6u', '2019-04-29 14:00:55'),
(336, '10000037', 'Chrome', 'https://olcademy.in/', '', 'g00f2d4802fntr3m27f41hep6d', '2019-04-29 14:03:37'),
(337, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:04:20'),
(338, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/index.php', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:04:34'),
(339, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:04:39'),
(340, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/viewbucket', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:05:15'),
(341, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/olcademy-chat', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:05:42'),
(342, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:06:25'),
(343, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:08:05'),
(344, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:08:33'),
(345, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'llm13oqhp43cfovfgt7vq1hj6u', '2019-04-29 14:08:44'),
(346, '10000000', 'Chrome', 'https://olcademy.in/settings', 'https://olcademy.in/homepage', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:08:50'),
(347, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/settings', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:09:52'),
(348, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:10:12'),
(349, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:10:44'),
(350, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'kq7hsta4gam2n3pdqdbt7foe7t', '2019-04-29 14:15:30'),
(351, '10000037', 'Chrome', 'https://olcademy.in/', '', '7k1h9ggbq5v1901lrflfs30lej', '2019-04-29 16:45:23'),
(352, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'utb01ffhbhbp8svm394p1l0hct', '2019-04-29 16:57:07'),
(353, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'utb01ffhbhbp8svm394p1l0hct', '2019-04-29 16:57:13'),
(354, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 16:58:52'),
(355, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 17:01:04'),
(356, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 17:01:26'),
(357, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 17:01:42'),
(358, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 17:02:05'),
(359, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-29 17:02:24'),
(360, '10000037', 'Chrome', 'https://olcademy.in/', '', 'utb01ffhbhbp8svm394p1l0hct', '2019-04-29 17:27:50'),
(361, '10000037', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/', 'utb01ffhbhbp8svm394p1l0hct', '2019-04-29 17:27:57'),
(362, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:08:52'),
(363, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:08:55'),
(364, '10000013', 'Chrome', 'https://olcademy.in/editcourse/245155649317410000013', 'https://olcademy.in/dashboard/instructor', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:09:16'),
(365, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=245155649317410000013', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:11:58'),
(366, '10000013', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Language%27', 'https://olcademy.in/dashboard/instructor', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:12:11'),
(367, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=245155649317410000013', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:12:17'),
(368, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:13:08'),
(369, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/preview/949155657958710000013', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:13:20'),
(370, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:13:26'),
(371, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=245155649317410000013', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:13:28'),
(372, '10000013', 'Chrome', 'https://olcademy.in/editcourse/486155657962310000013', 'https://olcademy.in/dashboard/instructor', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:13:44'),
(373, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/afterpub.php?course=486155657962310000013', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:21:34'),
(374, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'gsaa7ofsfq9vtfna7psfg26kvv', '2019-04-29 23:21:41'),
(375, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'huchetl21dbq6ol5qsfo2iim77', '2019-04-29 23:22:05'),
(376, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/index.php', 'huchetl21dbq6ol5qsfo2iim77', '2019-04-29 23:22:12'),
(377, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:22:56'),
(378, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:23:03'),
(379, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:27:25'),
(380, '10000013', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Language%27', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:27:33'),
(381, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/categoryResult.php?cat=%27Language%27', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:27:37'),
(382, '10000013', 'Chrome', 'https://olcademy.in/description/486155657962310000013', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:27:44'),
(383, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/486155657962310000013', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:28:12'),
(384, '10000013', 'Chrome', 'https://olcademy.in/description/486155657962310000013', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:28:36'),
(385, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/486155657962310000013', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:28:40'),
(386, '10000013', 'Chrome', 'https://olcademy.in/editcourse/486155657962310000013', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:28:58');
INSERT INTO `browserpagelinks` (`browser_pagelinks_id`, `user_id`, `browser_name`, `current_page_link`, `previous_page_link`, `user_session_id`, `page_visit_timestamp`) VALUES
(387, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/editcourse/486155657962310000013', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:29:03'),
(388, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-04-29 23:29:10'),
(389, '10000000', 'Chrome', '', '', 'vt7if9vbp3silpmursr8n72ato', '2019-04-30 08:17:06'),
(390, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:26:27'),
(391, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:27:06'),
(392, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:29:47'),
(393, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:29:54'),
(394, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:30:30'),
(395, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:31:48'),
(396, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:32:58'),
(397, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:34:03'),
(398, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:34:21'),
(399, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:34:35'),
(400, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:35:04'),
(401, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:35:17'),
(402, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:40:01'),
(403, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:40:16'),
(404, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:41:37'),
(405, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:42:54'),
(406, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:45:15'),
(407, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:46:23'),
(408, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:47:20'),
(409, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:51:25'),
(410, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:52:07'),
(411, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 08:52:17'),
(412, '10000037', 'Chrome', 'https://olcademy.in/', '', 'utb01ffhbhbp8svm394p1l0hct', '2019-04-30 09:17:13'),
(413, '10000038', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'os6r5tncl527o68c852k0ooivc', '2019-04-30 09:17:35'),
(414, '10000038', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'os6r5tncl527o68c852k0ooivc', '2019-04-30 09:17:43'),
(415, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tf1f3b5ma3rq0e1uuntqico60c', '2019-04-30 09:18:51'),
(416, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'tf1f3b5ma3rq0e1uuntqico60c', '2019-04-30 09:18:56'),
(417, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 09:19:35'),
(418, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 09:19:44'),
(419, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 09:45:48'),
(420, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 09:47:57'),
(421, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 10:36:04'),
(422, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 10:37:52'),
(423, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 10:40:07'),
(424, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 10:41:09'),
(425, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:06:29'),
(426, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:06:37'),
(427, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:07:09'),
(428, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 13:32:47'),
(429, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 13:32:56'),
(430, '10000000', 'Chrome', '', '', '7ukqe7foe1o2lij2drd6qgu4tl', '2019-04-30 13:35:24'),
(431, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-04-30 13:49:35'),
(432, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:59:25'),
(433, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:59:38'),
(434, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:59:43'),
(435, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 13:59:53'),
(436, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-04-30 14:06:06'),
(437, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', '6utplhe3khbp4u2c22ce5ooluj', '2019-04-30 14:53:44'),
(438, '10000000', 'Chrome', '', '', '1mam4pkjbrfqdtopdnossn5a4r', '2019-04-30 15:10:02'),
(439, '10000000', 'Chrome', '', '', '1mam4pkjbrfqdtopdnossn5a4r', '2019-04-30 15:10:23'),
(440, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:10:57'),
(441, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:32:03'),
(442, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:32:13'),
(443, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:32:34'),
(444, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:34:26'),
(445, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:39:27'),
(446, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:40:12'),
(447, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:40:44'),
(448, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:42:18'),
(449, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:42:32'),
(450, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:43:03'),
(451, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:55:09'),
(452, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:56:42'),
(453, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:57:09'),
(454, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 15:58:17'),
(455, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:04:17'),
(456, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:05:41'),
(457, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:05:55'),
(458, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:06:08'),
(459, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:06:52'),
(460, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:07:12'),
(461, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:07:17'),
(462, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:08:38'),
(463, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:09:29'),
(464, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 16:48:07'),
(465, '10000000', 'Chrome', 'https://olcademy.in/', '', '1efbmu63qpjcshban2g32jmir5', '2019-04-30 16:53:05'),
(466, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/', '1efbmu63qpjcshban2g32jmir5', '2019-04-30 16:53:26'),
(467, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 17:05:46'),
(468, '10000068', 'Chrome', '', '', 'v6hkku43i687m80li6ckhnuotk', '2019-04-30 17:24:40'),
(469, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 17:44:30'),
(470, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 17:44:49'),
(471, '10000000', 'Firefox', '', '', '2qj9dcmv945c77i44t2pbmep88', '2019-04-30 17:45:10'),
(472, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 's9l20jl7q9kiv6dr79e2kp2ahr', '2019-04-30 20:23:51'),
(473, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-05-01 07:29:04'),
(474, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-05-01 08:02:19'),
(475, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-05-01 08:03:09'),
(476, '10000000', 'Firefox', '', '', 'hk5uvmc7ck0t2dibh46k82c96f', '2019-05-01 08:49:35'),
(477, '10000037', 'Chrome', '', '', 'm63jg7qjmotahrobakuanjqi98', '2019-05-01 12:40:08'),
(478, '10000000', 'Chrome', '', '', 'me8huhr799i6t1uur8kbmtenhp', '2019-05-01 12:41:17'),
(479, '10000000', 'Chrome', '', '', 'me8huhr799i6t1uur8kbmtenhp', '2019-05-01 12:41:54'),
(480, '10000000', 'Chrome', '', '', 'me8huhr799i6t1uur8kbmtenhp', '2019-05-01 12:48:58'),
(481, '10000037', 'Chrome', '', '', '0aio6qlqbf6vhhamh5bsu0di3a', '2019-05-01 12:49:54'),
(482, '10000037', 'Chrome', '', '', '0aio6qlqbf6vhhamh5bsu0di3a', '2019-05-01 12:50:10'),
(483, '10000037', 'Chrome', '', '', '0aio6qlqbf6vhhamh5bsu0di3a', '2019-05-01 13:07:25'),
(484, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 13:07:49'),
(485, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 14:06:17'),
(486, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 14:21:24'),
(487, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 14:23:13'),
(488, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 14:26:13'),
(489, '10000000', 'Chrome', '', '', 'todg00o2hifi83m37eth3i7tiq', '2019-05-01 14:26:23'),
(490, '10000000', 'Firefox', '', '', 'bb9t6jvnifjp8tv8eppqfqd3v4', '2019-05-01 17:02:28'),
(491, '10000000', 'Firefox', '', '', 'bb9t6jvnifjp8tv8eppqfqd3v4', '2019-05-01 17:02:39'),
(492, '10000000', 'Firefox', '', '', 'bb9t6jvnifjp8tv8eppqfqd3v4', '2019-05-01 17:08:24'),
(493, '10000000', 'Chrome', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/signin', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:36:16'),
(494, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/student', 'https://www.olcademy.in/homepage', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:36:40'),
(495, '10000000', 'Chrome', 'https://www.olcademy.in/description/842155625327610000037', 'https://www.olcademy.in/dashboard/student', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:37:04'),
(496, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/student', 'https://www.olcademy.in/homepage', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:37:08'),
(497, '10000000', 'Chrome', 'https://www.olcademy.in/description/842155625327610000037', 'https://www.olcademy.in/dashboard/student', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:37:29'),
(498, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/instructor', 'https://www.olcademy.in/description/842155625327610000037', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:37:38'),
(499, '10000000', 'Chrome', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/dashboard/instructor', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:37:56'),
(500, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/instructor', 'https://www.olcademy.in/description/842155625327610000037', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:38:05'),
(501, '10000000', 'Chrome', 'https://www.olcademy.in/Profile', 'https://www.olcademy.in/dashboard/instructor', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:38:37'),
(502, '10000000', 'Chrome', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/Profile', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:38:53'),
(503, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/moderator', 'https://www.olcademy.in/homepage', 'b334kh62kui2u1d0uv5gd1tece', '2019-05-02 09:38:59'),
(504, '10000000', 'Firefox', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/construction', '5r5arfhgdadsgnfrspdav1thfl', '2019-05-02 12:36:36'),
(505, '10000000', 'Firefox', 'https://www.olcademy.in/dashboard/student', 'https://www.olcademy.in/homepage', '5r5arfhgdadsgnfrspdav1thfl', '2019-05-02 12:36:51'),
(506, '10000000', 'Chrome', '', '', 'pv1684nk5gbj2rvijqbjtlp1ei', '2019-05-02 14:00:23'),
(507, '10000037', 'Chrome', '', '', 'c18bl30ikkjsdr88eupbskbv7n', '2019-05-02 14:00:53'),
(508, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:45:15'),
(509, '10000013', 'Chrome', 'https://olcademy.in/editcourse/486155657962310000013', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:45:27'),
(510, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=486155657962310000013', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:48:33'),
(511, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:48:55'),
(512, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:49:23'),
(513, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/preview/949155657958710000013', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:49:31'),
(514, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/editcourse/949155657958710000013', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:49:44'),
(515, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-05-02 22:49:52'),
(516, '10000000', 'Chrome', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/signin', 'o9mi6nra9ss1b3aar9pgrpko9j', '2019-05-03 06:02:50'),
(517, '10000037', 'Chrome', '', '', 'c18bl30ikkjsdr88eupbskbv7n', '2019-05-03 11:24:16'),
(518, '10000037', 'Chrome', '', '', 'c18bl30ikkjsdr88eupbskbv7n', '2019-05-03 13:44:01'),
(519, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'hisn192gmu08o99c313g48bb52', '2019-05-03 14:00:21'),
(520, '10000000', 'Chrome', 'https://olcademy.in/homepage', '', 'hisn192gmu08o99c313g48bb52', '2019-05-03 14:05:25'),
(521, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'hisn192gmu08o99c313g48bb52', '2019-05-03 14:05:53'),
(522, '10000000', 'Chrome', 'https://olcademy.in/homepage', '', 'hisn192gmu08o99c313g48bb52', '2019-05-03 14:06:14'),
(523, '10000000', 'Chrome', 'https://olcademy.in/homepage', '', 'hisn192gmu08o99c313g48bb52', '2019-05-03 14:11:50'),
(524, '10000000', 'Chrome', 'https://olcademy.in/', '', 'o5ujfmencsrmek1ercd23t165r', '2019-05-03 15:11:04'),
(525, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'o5ujfmencsrmek1ercd23t165r', '2019-05-03 15:11:29'),
(526, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'o5ujfmencsrmek1ercd23t165r', '2019-05-03 15:11:59'),
(527, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-03 15:18:00'),
(528, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-03 15:19:16'),
(529, '10000000', 'Chrome', 'https://olcademy.in/homepage', '', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 02:31:14'),
(530, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 02:31:44'),
(531, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Music%27', 'https://olcademy.in/dashboard/student', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 02:44:03'),
(532, '10000000', 'Chrome', 'https://olcademy.in/notifications', 'https://olcademy.in/categoryResult.php?cat=%27Music%27', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 02:44:12'),
(533, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/notifications', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 02:44:31'),
(534, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/viewbucket', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 03:06:54'),
(535, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/viewbucket', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 03:15:16'),
(536, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Academics%27', 'https://olcademy.in/Profile', '0oe96u3be5mhkqt4j1pl4gunvb', '2019-05-04 03:17:03'),
(537, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Academics%27', 'https://olcademy.in/Profile', 't28ro464ds6aja8h5tag1u5ceg', '2019-05-04 03:46:46'),
(538, '10000000', 'Chrome', 'https://olcademy.in/notifications', 'https://olcademy.in/categoryResult.php?cat=%27Academics%27', 't28ro464ds6aja8h5tag1u5ceg', '2019-05-04 03:47:25'),
(539, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/notifications', 't28ro464ds6aja8h5tag1u5ceg', '2019-05-04 03:50:31'),
(540, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:35:22'),
(541, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:36:00'),
(542, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:36:23'),
(543, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:36:48'),
(544, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'tp9p81tr5pa837vraserveadd2', '2019-05-04 07:36:53'),
(545, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'tp9p81tr5pa837vraserveadd2', '2019-05-04 07:36:59'),
(546, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:37:16'),
(547, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '0h5fv72ijt5rslq9jifubu598e', '2019-05-04 07:37:20'),
(548, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:37:21'),
(549, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/student', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:37:49'),
(550, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'cvfsbultj2v85l617tplk34r44', '2019-05-04 07:38:20'),
(551, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:38:26'),
(552, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:39:06'),
(553, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:39:10'),
(554, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:39:18'),
(555, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:39:29'),
(556, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:39:41'),
(557, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:41:25'),
(558, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:50:22'),
(559, '10000013', 'Chrome', 'https://olcademy.in/homepage', '', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:50:29'),
(560, '10000013', 'Chrome', 'https://olcademy.in/homepage', '', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:50:41'),
(561, '10000013', 'Chrome', 'https://olcademy.in/homepage', '', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:51:06'),
(562, '10000013', 'Chrome', 'https://olcademy.in/homepage', '', '3gnqqet6dqi14ujiq35boucv80', '2019-05-04 07:51:26'),
(563, '10000069', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000069', 'p3pc4ldv1jgnudklo3mqatuhup', '2019-05-04 07:54:30'),
(564, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', 'l1226k59vt05bei6tm4j4imlb3', '2019-05-04 07:55:31'),
(565, '10000069', 'Firefox', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'l1226k59vt05bei6tm4j4imlb3', '2019-05-04 07:56:16'),
(566, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', 'l1226k59vt05bei6tm4j4imlb3', '2019-05-04 07:57:52'),
(567, '10000037', 'Chrome', 'https://olcademy.in/', '', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:00:20'),
(568, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:01:18'),
(569, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:09:20'),
(570, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:12:04'),
(571, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:17:22'),
(572, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '36o6j1us18gh3hlsrurtmh26n7', '2019-05-04 08:18:46'),
(573, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-04 08:30:01'),
(574, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-04 08:30:15'),
(575, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-04 09:00:23'),
(576, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-04 09:06:40'),
(577, '10000000', 'Firefox', '', '', 'ecaps1up9fserlp2vbsclufudc', '2019-05-04 09:52:24'),
(578, '10000000', 'Firefox', '', '', 'ecaps1up9fserlp2vbsclufudc', '2019-05-04 10:06:29'),
(579, '10000070', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000070', '0aultpo3vfjo66s2jrc637ucnh', '2019-05-04 12:53:11'),
(580, '10000071', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000071', '3a807e6oda75bu9prsg61ivrtq', '2019-05-04 12:54:23'),
(581, '10000072', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000072', 'gkun1fjkcoqj9a48khhfr8ig3i', '2019-05-04 12:55:33'),
(582, '10000073', 'Chrome', 'https://olcademy.in/homepage', '', '4nh9tlma1oid5sd6pjkjb2l9nk', '2019-05-04 12:56:31'),
(583, '10000074', 'Chrome', 'https://olcademy.in/homepage', '', 'un2ueqdmgsf6ju4j6k6hf0c8u4', '2019-05-04 12:57:33'),
(584, '10000075', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000075', 'phmpikat71v44jdrusfe9c6fg8', '2019-05-04 12:59:57'),
(585, '10000076', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000076', 'e2m8322nrh718a3cg213o0f5fi', '2019-05-04 13:01:04'),
(586, '10000077', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/welcome-to-olcademy/10000077', 'qoq3f4hbkoum4for60m5plsk3v', '2019-05-04 13:01:54'),
(587, '10000077', 'Chrome', 'https://olcademy.in/homepage', '', 'qoq3f4hbkoum4for60m5plsk3v', '2019-05-04 13:02:01'),
(588, '10000077', 'Chrome', 'https://olcademy.in/homepage', '', 'jho6bsadq86fcenkpj1imtgnte', '2019-05-04 13:03:56'),
(589, '10000077', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'https://olcademy.in/homepage', 'jho6bsadq86fcenkpj1imtgnte', '2019-05-04 13:06:53'),
(590, '10000075', 'Chrome', 'https://olcademy.in/homepage', '', 'c3c36s8706on3ihfidf9h5f6af', '2019-05-04 13:59:40'),
(591, '10000075', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'c3c36s8706on3ihfidf9h5f6af', '2019-05-04 13:59:57'),
(592, '10000077', 'Chrome', 'https://olcademy.in/', '', 'm62ulg2l56788e5k27pdu4r9gt', '2019-05-04 15:08:19'),
(593, '10000077', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/', 'm62ulg2l56788e5k27pdu4r9gt', '2019-05-04 15:09:10'),
(594, '10000077', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'm62ulg2l56788e5k27pdu4r9gt', '2019-05-04 15:09:45'),
(595, '10000037', 'Chrome', 'https://olcademy.in/', '', 'cpa9v8f9vss467ivar46eji4r7', '2019-05-04 15:24:15'),
(596, '10000037', 'Chrome', 'https://olcademy.in/', '', 'cpa9v8f9vss467ivar46eji4r7', '2019-05-04 16:00:20'),
(597, '10000037', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/', 'cpa9v8f9vss467ivar46eji4r7', '2019-05-04 16:19:55'),
(598, '10000077', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'aofi2b28hggqirs4d2ke1oo4j7', '2019-05-04 16:21:59'),
(599, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '79v1q79ttb7stc499kmlk8nhk5', '2019-05-04 16:26:58'),
(600, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/index.php', '79v1q79ttb7stc499kmlk8nhk5', '2019-05-04 16:27:20'),
(601, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', '7go21nucbh4vcsau6msro8d9gp', '2019-05-04 16:46:05'),
(602, '10000000', 'Chrome', 'https://olcademy.in/', '', '796p7sm9btnl1asaq0t44o5hf2', '2019-05-04 17:19:33'),
(603, '10000038', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:30:33'),
(604, '10000038', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:33:09'),
(605, '10000038', 'Chrome', 'https://olcademy.in/result.php?search_query=akhil', 'https://olcademy.in/description/709155629242110000068', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:33:55'),
(606, '10000038', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:34:10'),
(607, '10000000', 'Firefox', '', '', 'n0oq7qftn5cr5e21thb6qper6m', '2019-05-04 17:38:54'),
(608, '10000000', 'Firefox', '', '', 'n0oq7qftn5cr5e21thb6qper6m', '2019-05-04 17:39:00'),
(609, '10000000', 'Firefox', '', '', 'n0oq7qftn5cr5e21thb6qper6m', '2019-05-04 17:39:12'),
(610, '10000037', 'Firefox', '', '', 'jccd79cmq15d6lbbpfevqbb0ai', '2019-05-04 17:41:46'),
(611, '10000037', 'Firefox', '', '', 'jccd79cmq15d6lbbpfevqbb0ai', '2019-05-04 17:41:58'),
(612, '10000037', 'Firefox', '', '', 'jccd79cmq15d6lbbpfevqbb0ai', '2019-05-04 17:42:06'),
(613, '10000038', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/thankyou.php', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:46:32'),
(614, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:46:44'),
(615, '10000038', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:49:15'),
(616, '10000038', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:50:03'),
(617, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-04 17:50:52'),
(618, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:50:55'),
(619, '10000038', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:51:11'),
(620, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:51:27'),
(621, '10000037', 'Chrome', 'https://olcademy.in/', '', 'cpa9v8f9vss467ivar46eji4r7', '2019-05-04 17:52:07'),
(622, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'cpa9v8f9vss467ivar46eji4r7', '2019-05-04 17:52:25'),
(623, '10000038', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:56:31'),
(624, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:56:40'),
(625, '10000038', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:58:28'),
(626, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 17:58:33'),
(627, '10000038', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 18:05:25'),
(628, '10000000', 'Firefox', 'https://olcademy.in/', '', 'mdftc8vjc584nvjitm8ab5cci0', '2019-05-04 19:41:40'),
(629, '10000038', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', '9l5rd47sfu2usu6egojcoi3evc', '2019-05-04 20:03:15'),
(630, '10000000', 'Chrome', 'https://olcademy.in/', '', '2u4ijhskcvu8j2vd4p7lehj4bp', '2019-05-05 07:22:25'),
(631, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tg0tj9kpfiejp72fesi8k46h5u', '2019-05-05 07:25:01'),
(632, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'rqbsejl739611ff39joped6f1j', '2019-05-05 07:25:49'),
(633, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/index.php', 'rqbsejl739611ff39joped6f1j', '2019-05-05 07:26:04'),
(634, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:26:48'),
(635, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:27:58'),
(636, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:34:09'),
(637, '10000013', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/index.php', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:34:15'),
(638, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:35:03'),
(639, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:35:09'),
(640, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/709155629242110000068', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:35:24'),
(641, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:35:33'),
(642, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/709155629242110000068', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:35:43'),
(643, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:36:41'),
(644, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/709155629242110000068', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:37:35'),
(645, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:37:41'),
(646, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/709155629242110000068', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:38:37'),
(647, '10000038', 'Chrome', 'https://olcademy.in/', '', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:38:41'),
(648, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:38:42'),
(649, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:46:37'),
(650, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/cart/checkout', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:46:43'),
(651, '10000038', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:46:50'),
(652, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:46:51'),
(653, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/709155629242110000068', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:47:17'),
(654, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:47:31'),
(655, '10000013', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:48:18'),
(656, '10000038', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/842155625327610000037', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:48:19'),
(657, '10000038', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/olcademy-chat', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:48:41'),
(658, '10000038', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/dashboard/student', 't6uu1lu39uff4il3m1h76ke2fp', '2019-05-05 07:48:48'),
(659, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:50:31'),
(660, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:50:36'),
(661, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:50:59'),
(662, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:51:15'),
(663, '10000038', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'td7omvn23285nv7s6ih9cljj4m', '2019-05-05 07:55:05'),
(664, '10000038', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/homepage', 'td7omvn23285nv7s6ih9cljj4m', '2019-05-05 07:55:23'),
(665, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', '4p6p34gns12v5gd7gba9o68qfv', '2019-05-05 07:56:18'),
(666, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/homepage', '4p6p34gns12v5gd7gba9o68qfv', '2019-05-05 07:56:33'),
(667, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/olcademy-chat', '4p6p34gns12v5gd7gba9o68qfv', '2019-05-05 07:56:58'),
(668, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:57:28'),
(669, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:57:35'),
(670, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 07:57:43'),
(671, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 08:00:17'),
(672, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 08:00:20'),
(673, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 08:00:30'),
(674, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/842155625327610000037', '2o3p3de1kra7puo2iqmujcfo9n', '2019-05-05 08:00:35'),
(675, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', '4p6p34gns12v5gd7gba9o68qfv', '2019-05-05 08:01:55'),
(676, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:02:03'),
(677, '10000037', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:02:14'),
(678, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/dashboard/student', '4p6p34gns12v5gd7gba9o68qfv', '2019-05-05 08:04:08'),
(679, '10000037', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/student', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:05:16'),
(680, '10000037', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Music%27', 'https://olcademy.in/dashboard/student', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:05:53'),
(681, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/categoryResult.php?cat=%27Music%27', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:06:23'),
(682, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/newNotification.php?data=1', 'nbfch8r60tc6vehnake4icn2et', '2019-05-05 08:15:25'),
(683, '10000000', 'Firefox', 'https://olcademy.in/homepage', '', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 09:53:58'),
(684, '10000000', 'Firefox', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 09:54:12'),
(685, '10000000', 'Firefox', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 09:59:26'),
(686, '10000000', 'Firefox', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 10:06:43'),
(687, '10000000', 'Firefox', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 10:07:02'),
(688, '10000000', 'Firefox', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 10:07:51'),
(689, '10000000', 'Firefox', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 10:07:58'),
(690, '10000000', 'Firefox', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'dn1gdrhai3tpltjrfrn471m982', '2019-05-05 10:08:13'),
(691, '10000000', 'Firefox', '', '', 'u2mkhk43k1frfci5i35403oega', '2019-05-05 12:37:05'),
(692, '10000037', 'Chrome', '', '', 'c28epv0i27lktjrpjkkhpgj85d', '2019-05-05 13:45:21'),
(693, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', 'f5m3va0o7abh6i6cq9f9b0v4i3', '2019-05-05 14:13:23'),
(694, '10000037', 'Chrome', '', '', 'c28epv0i27lktjrpjkkhpgj85d', '2019-05-05 14:27:29'),
(695, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-05 16:54:01'),
(696, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-05 16:55:54'),
(697, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-05 17:41:33'),
(698, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'ltlpmk8il234mqbsfdeoer1ds6', '2019-05-05 17:53:12'),
(699, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', 'rrnf7ot5g1vv3hlgmqufmeg1l8', '2019-05-05 18:45:51'),
(700, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'li8dih9l9roe4ouosipmbchgnl', '2019-05-05 18:54:32'),
(701, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'li8dih9l9roe4ouosipmbchgnl', '2019-05-05 19:09:03'),
(702, '10000000', 'Chrome', '', '', 'jora4pisuemkt3lu7jjorsqf7e', '2019-05-05 19:36:02'),
(703, '10000000', 'Chrome', '', '', 'jora4pisuemkt3lu7jjorsqf7e', '2019-05-05 19:36:26'),
(704, '10000000', 'Chrome', '', '', 'jora4pisuemkt3lu7jjorsqf7e', '2019-05-05 19:36:39'),
(705, '10000000', 'Chrome', '', '', 'jora4pisuemkt3lu7jjorsqf7e', '2019-05-05 19:38:14'),
(706, '10000038', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '3g9iivmil44o7hhqo0eg2avv56', '2019-05-06 06:32:05'),
(707, '10000038', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '3g9iivmil44o7hhqo0eg2avv56', '2019-05-06 06:32:17'),
(708, '10000038', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '3g9iivmil44o7hhqo0eg2avv56', '2019-05-06 06:45:07'),
(709, '10000038', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', '3g9iivmil44o7hhqo0eg2avv56', '2019-05-06 06:50:26'),
(710, '10000038', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', '3g9iivmil44o7hhqo0eg2avv56', '2019-05-06 06:50:40'),
(711, '10000068', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '1plggqd2j9mp6fdgg5n3tkh4ou', '2019-05-06 09:08:10'),
(712, '10000068', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '1plggqd2j9mp6fdgg5n3tkh4ou', '2019-05-06 09:08:22'),
(713, '10000068', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/instructor', '1plggqd2j9mp6fdgg5n3tkh4ou', '2019-05-06 09:09:53'),
(714, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'itodleciu2jma2hlr3ipc0e7dk', '2019-05-06 09:10:53'),
(715, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/index.php', 'itodleciu2jma2hlr3ipc0e7dk', '2019-05-06 09:11:00'),
(716, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'cb7loprck89fbe0rge70ln3scs', '2019-05-06 09:17:29'),
(717, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'cb7loprck89fbe0rge70ln3scs', '2019-05-06 09:17:59'),
(718, '10000002', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:41:50'),
(719, '10000002', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:42:19'),
(720, '10000002', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/index.php', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:54:22'),
(721, '10000002', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/Profile', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:55:03'),
(722, '10000002', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:55:23'),
(723, '10000002', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:56:18'),
(724, '10000002', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tpjeobpuo7nup64gml1s0moa63', '2019-05-06 10:57:11'),
(725, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 12:54:57'),
(726, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 12:55:12'),
(727, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 12:55:23'),
(728, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:01:51'),
(729, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:05:24'),
(730, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:07:28'),
(731, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:08:48'),
(732, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:11:34'),
(733, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:12:20'),
(734, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:12:46'),
(735, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:13:48'),
(736, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:15:04'),
(737, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:15:41'),
(738, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:15:43'),
(739, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:15:48'),
(740, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:15:55'),
(741, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:16:36'),
(742, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:20:12'),
(743, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:20:54'),
(744, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:21:30'),
(745, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:21:46'),
(746, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:22:09'),
(747, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:24:56'),
(748, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:25:28'),
(749, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 13:25:48'),
(750, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'otuttr783f9d9unousgddiqfqi', '2019-05-06 13:26:32'),
(751, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:26:44'),
(752, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 13:27:00'),
(753, '10000000', 'Chrome', 'https://olcademy.in/index.php', '', 'otuttr783f9d9unousgddiqfqi', '2019-05-06 13:27:13'),
(754, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:27:20'),
(755, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:27:59'),
(756, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 13:31:53'),
(757, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:40:05'),
(758, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:40:15'),
(759, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:40:30'),
(760, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:44:44'),
(761, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 13:45:34'),
(762, '10000077', 'Chrome', 'https://olcademy.in/homepage', '', 'qoq3f4hbkoum4for60m5plsk3v', '2019-05-06 13:46:18'),
(763, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:46:28'),
(764, '10000000', 'Chrome', 'https://olcademy.in/editcourse/861155637969010000000', 'https://olcademy.in/dashboard/instructor', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:46:57'),
(765, '10000077', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/homepage', 'qoq3f4hbkoum4for60m5plsk3v', '2019-05-06 13:47:00'),
(766, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'lovfsaagsrloa76jub7lu38v7h', '2019-05-06 13:47:18'),
(767, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'b1ga8kf11ruscsdo4qtt96akd7', '2019-05-06 13:47:37');
INSERT INTO `browserpagelinks` (`browser_pagelinks_id`, `user_id`, `browser_name`, `current_page_link`, `previous_page_link`, `user_session_id`, `page_visit_timestamp`) VALUES
(768, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:51:38'),
(769, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:51:42'),
(770, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:52:05'),
(771, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:52:25'),
(772, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:52:32'),
(773, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/editcourse/861155637969010000000', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:52:54'),
(774, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:52:59'),
(775, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:53:14'),
(776, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:53:20'),
(777, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/homepage', 'q2lt1ejinq6ol8pb1a3tfl80h5', '2019-05-06 13:53:28'),
(778, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:53:34'),
(779, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:53:52'),
(780, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:54:03'),
(781, '10000068', 'Chrome', '', '', 'ho4r7kkumadub9i4slb03uvpoe', '2019-05-06 13:54:09'),
(782, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:55:07'),
(783, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/description/643155619069510000038', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 13:55:34'),
(784, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:57:11'),
(785, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:57:24'),
(786, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:57:33'),
(787, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:58:12'),
(788, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:58:15'),
(789, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 13:58:35'),
(790, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:59:01'),
(791, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:59:17'),
(792, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:59:48'),
(793, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 13:59:56'),
(794, '10000037', 'Chrome', 'https://olcademy.in/', '', 'l0pogv5r0smji9fdndr3kcg4jj', '2019-05-06 14:00:17'),
(795, '10000037', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/', 'l0pogv5r0smji9fdndr3kcg4jj', '2019-05-06 14:00:31'),
(796, '10000037', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'l0pogv5r0smji9fdndr3kcg4jj', '2019-05-06 14:00:51'),
(797, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:04:33'),
(798, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:05:21'),
(799, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/newNotification.php?data=1', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 14:07:03'),
(800, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:11'),
(801, '10000013', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:16'),
(802, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/842155625327610000037', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:24'),
(803, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:29'),
(804, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:32'),
(805, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/homepage', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:35'),
(806, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/842155625327610000037', 'm53l8qedoiu2d98jrhih2bacct', '2019-05-06 14:07:37'),
(807, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:07:52'),
(808, '10000047', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/index.php', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:36'),
(809, '10000047', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/index.php', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:39'),
(810, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:41'),
(811, '10000047', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/index.php', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:45'),
(812, '10000047', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:47'),
(813, '10000047', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:50'),
(814, '10000047', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/index.php', '21ab3657htk86digeuh2ivpbeb', '2019-05-06 14:08:52'),
(815, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:17'),
(816, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:31'),
(817, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:35'),
(818, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:40'),
(819, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:49'),
(820, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:09:56'),
(821, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:10:14'),
(822, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 14:11:14'),
(823, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:12:59'),
(824, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:13:09'),
(825, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 14:15:26'),
(826, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:15:58'),
(827, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:16:06'),
(828, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/viewbucket', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 14:16:07'),
(829, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:16:14'),
(830, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:16:24'),
(831, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:16:35'),
(832, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Profile', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 14:17:13'),
(833, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:17:20'),
(834, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:17:31'),
(835, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:17:50'),
(836, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:18:02'),
(837, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:18:03'),
(838, '10000013', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/homepage', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:18:06'),
(839, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:18:14'),
(840, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:18:24'),
(841, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:19:19'),
(842, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:19:28'),
(843, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:23:02'),
(844, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:23:08'),
(845, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:23:22'),
(846, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:23:32'),
(847, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:24:12'),
(848, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:24:15'),
(849, '10000037', 'Chrome', '', '', 'm2juh06fa55e5sdu1ao5n7toqo', '2019-05-06 14:24:21'),
(850, '10000013', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:24:27'),
(851, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:24:33'),
(852, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:27:55'),
(853, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:28:05'),
(854, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:28:07'),
(855, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:28:26'),
(856, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:28:31'),
(857, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:33:21'),
(858, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'gr0rsfhoo13qepk0r4av72j4mj', '2019-05-06 14:33:26'),
(859, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'oeluqvikje8harmqjvtahsmne4', '2019-05-06 14:35:42'),
(860, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'oeluqvikje8harmqjvtahsmne4', '2019-05-06 14:35:45'),
(861, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/709155629242110000068', 'l0pogv5r0smji9fdndr3kcg4jj', '2019-05-06 14:38:46'),
(862, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'igephacpc550him33k9ae61lg7', '2019-05-06 14:38:50'),
(863, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'igephacpc550him33k9ae61lg7', '2019-05-06 14:38:58'),
(864, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:45:22'),
(865, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:45:34'),
(866, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:45:43'),
(867, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:53:31'),
(868, '10000037', 'Firefox', '', '', 'gqlahpcqbaskkgsua70ikfntuv', '2019-05-06 14:53:51'),
(869, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:55:56'),
(870, '10000013', 'Chrome', 'https://olcademy.in/editcourse/949155657958710000013', 'https://olcademy.in/dashboard/instructor', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:56:21'),
(871, '10000013', 'Chrome', 'https://olcademy.in/Olcademy-FAQ', 'https://olcademy.in/editcourse/949155657958710000013', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 14:59:40'),
(872, '10000013', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/Olcademy-FAQ', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 15:00:26'),
(873, '10000013', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/Olcademy-FAQ', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 15:00:42'),
(874, '10000013', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/Olcademy-FAQ', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 15:00:50'),
(875, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/About/Olcademy', 'u03enrk7l1qqknei8q7387n2ek', '2019-05-06 15:01:36'),
(876, '10000000', 'Chrome', 'https://olcademy.in/', '', 'ivnh6p4mf0pdrhicf25o4dr5d1', '2019-05-06 15:10:00'),
(877, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:13:24'),
(878, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:13:48'),
(879, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:13:58'),
(880, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:14:05'),
(881, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:14:49'),
(882, '10000000', 'Chrome', 'https://olcademy.in/description-moderator/486155657962310000013', 'https://olcademy.in/dashboard/moderator', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:14:56'),
(883, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description-moderator/486155657962310000013', 'l88hftqumomhgba58fqahrmv3f', '2019-05-06 15:15:28'),
(884, '10000016', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/index.php', 'uj4p3oeqvansg4hp5sihcue1e2', '2019-05-06 15:16:17'),
(885, '10000016', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/842155625327610000037', 'uj4p3oeqvansg4hp5sihcue1e2', '2019-05-06 15:16:21'),
(886, '10000016', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/homepage', 'uj4p3oeqvansg4hp5sihcue1e2', '2019-05-06 15:16:26'),
(887, '10000016', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/709155629242110000068', 'uj4p3oeqvansg4hp5sihcue1e2', '2019-05-06 15:16:30'),
(888, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:16:58'),
(889, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/index.php', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:17:59'),
(890, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/viewbucket', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:19:29'),
(891, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:20:22'),
(892, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/643155619069510000038', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:23:47'),
(893, '10000000', 'Chrome', 'https://olcademy.in/editcourse/861155637969010000000', 'https://olcademy.in/dashboard/instructor', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:24:04'),
(894, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/editcourse/861155637969010000000', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:37:51'),
(895, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:48:58'),
(896, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:49:37'),
(897, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 15:52:14'),
(898, '10000000', 'Chrome', 'https://www.olcademy.in/index.php', 'https://www.olcademy.in/construction', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-06 16:31:37'),
(899, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/instructor', 'https://www.olcademy.in/index.php', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-06 16:31:53'),
(900, '10000000', 'Chrome', 'https://www.olcademy.in/homepage', 'https://www.olcademy.in/dashboard/instructor', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-06 16:32:29'),
(901, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/instructor', 'https://www.olcademy.in/homepage', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-06 16:32:42'),
(902, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 21:03:49'),
(903, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'hml09emv6fjlqkos9skmqm5cgh', '2019-05-06 21:04:07'),
(904, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '9h0mgei2k225vjtddih4qob7gn', '2019-05-06 21:04:33'),
(905, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '9h0mgei2k225vjtddih4qob7gn', '2019-05-06 21:05:10'),
(906, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', '4v6e62gj1l0kp6fr8kreg771vm', '2019-05-06 22:02:31'),
(907, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/homepage', '4v6e62gj1l0kp6fr8kreg771vm', '2019-05-06 22:02:46'),
(908, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/newNotification.php?data=3', '4v6e62gj1l0kp6fr8kreg771vm', '2019-05-06 22:02:53'),
(909, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:03:43'),
(910, '10000013', 'Chrome', 'https://olcademy.in/newNotification.php?data=2', 'https://olcademy.in/index.php', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:04:08'),
(911, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=2', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:04:24'),
(912, '10000013', 'Chrome', 'https://olcademy.in/newNotification.php?data=2', 'https://olcademy.in/index.php', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:04:42'),
(913, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=2', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:05:37'),
(914, '10000013', 'Chrome', 'https://olcademy.in/editcourse/361155718039510000013', 'https://olcademy.in/dashboard/instructor', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:06:36'),
(915, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/afterpub.php?course=361155718039510000013', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-06 22:16:08'),
(916, '10000037', 'Chrome', 'https://olcademy.in/', '', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-07 06:44:43'),
(917, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-07 09:51:56'),
(918, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/instructor', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-07 09:53:40'),
(919, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-07 09:53:44'),
(920, '10000037', 'Chrome', '', '', 'n9capsmjre4m5vdibbql34rv15', '2019-05-07 13:52:41'),
(921, '10000037', 'Chrome', '', '', 'n9capsmjre4m5vdibbql34rv15', '2019-05-07 13:54:13'),
(922, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:10:01'),
(923, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:11:18'),
(924, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:14:01'),
(925, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:14:12'),
(926, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:30:15'),
(927, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:30:31'),
(928, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:30:39'),
(929, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:30:48'),
(930, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 14:30:59'),
(931, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 15:31:01'),
(932, '10000068', 'Chrome', '', '', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 15:54:09'),
(933, '10000068', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'u9etvptuggoulkl4fj8t1i5udv', '2019-05-07 16:00:34'),
(934, '10000068', 'Chrome', 'https://olcademy.in/', '', '1l6l9s3pau89gje56bbm6srf5r', '2019-05-08 04:30:52'),
(935, '10000068', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '1l6l9s3pau89gje56bbm6srf5r', '2019-05-08 04:33:38'),
(936, '10000068', 'Chrome', 'https://olcademy.in/', '', '1l6l9s3pau89gje56bbm6srf5r', '2019-05-08 05:11:28'),
(937, '10000068', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '1l6l9s3pau89gje56bbm6srf5r', '2019-05-08 05:14:07'),
(938, '10000000', 'Chrome', '', '', 'hi1j2uns7bss0toh24uipg75io', '2019-05-08 10:03:12'),
(939, '10000000', 'Chrome', '', '', 'hi1j2uns7bss0toh24uipg75io', '2019-05-08 10:03:33'),
(940, '10000037', 'Chrome', '', '', 'c4g1hldlg85gcrk8n7i27a80ne', '2019-05-08 10:40:30'),
(941, '10000037', 'Chrome', '', '', 'c4g1hldlg85gcrk8n7i27a80ne', '2019-05-08 10:42:04'),
(942, '10000037', 'Chrome', '', '', 'c4g1hldlg85gcrk8n7i27a80ne', '2019-05-08 10:45:00'),
(943, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:46:58'),
(944, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:47:27'),
(945, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:48:20'),
(946, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:50:22'),
(947, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:50:54'),
(948, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:51:03'),
(949, '10000000', 'Chrome', '', '', 'a52gune6g88ohj2a66mkl9dkd6', '2019-05-08 10:53:19'),
(950, '10000037', 'Chrome', '', '', '0mvoj5bm0sa6kntfi0sld36sg3', '2019-05-08 11:14:03'),
(951, '10000037', 'Chrome', '', '', '0mvoj5bm0sa6kntfi0sld36sg3', '2019-05-08 11:23:52'),
(952, '10000068', 'Chrome', 'https://olcademy.in/', '', '1l6l9s3pau89gje56bbm6srf5r', '2019-05-08 12:21:51'),
(953, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:23:15'),
(954, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:24:12'),
(955, '10000037', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:26:35'),
(956, '10000037', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:26:49'),
(957, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/842155625327610000037', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:26:59'),
(958, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:35:50'),
(959, '10000037', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:36:36'),
(960, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/description/842155625327610000037', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:37:02'),
(961, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 12:37:10'),
(962, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 13:12:27'),
(963, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 13:13:35'),
(964, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/dashboard/instructor', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 13:14:25'),
(965, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=1', 'r5hr2t3djdrgburh4mnrht4h77', '2019-05-08 13:14:53'),
(966, '10000013', 'Chrome', 'https://olcademy.in/', '', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-08 13:39:42'),
(967, '10000013', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-08 13:39:55'),
(968, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/Profile', 'd6i60e4n4ah636d1p5ru9lncek', '2019-05-08 13:39:57'),
(969, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'b1fog4ha0lilrs5tb648bvhdg1', '2019-05-08 13:40:25'),
(970, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'b1fog4ha0lilrs5tb648bvhdg1', '2019-05-08 13:40:30'),
(971, '10000037', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '90u232vbtpb914fnv3nt7o4j1k', '2019-05-08 13:41:08'),
(972, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', '90u232vbtpb914fnv3nt7o4j1k', '2019-05-08 13:41:15'),
(973, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', '90u232vbtpb914fnv3nt7o4j1k', '2019-05-08 13:43:18'),
(974, '10000000', 'Chrome', '', '', 'gvikkbkv1incbp5qpcpquh7cij', '2019-05-08 13:43:54'),
(975, '10000000', 'Chrome', '', '', 'gvikkbkv1incbp5qpcpquh7cij', '2019-05-08 13:44:03'),
(976, '10000013', 'Chrome', '', '', '8gt7ubjdi216kfi7pofiscr84q', '2019-05-08 13:55:32'),
(977, '10000013', 'Chrome', '', '', '8gt7ubjdi216kfi7pofiscr84q', '2019-05-08 13:56:00'),
(978, '10000013', 'Chrome', '', '', '8gt7ubjdi216kfi7pofiscr84q', '2019-05-08 14:30:55'),
(979, '10000000', 'Chrome', '', '', 'q0qq73be61fu4kj2u9hmfus5ro', '2019-05-08 14:32:08'),
(980, '10000000', 'Chrome', '', '', 'q0qq73be61fu4kj2u9hmfus5ro', '2019-05-08 14:32:25'),
(981, '10000000', 'Chrome', '', '', 'q0qq73be61fu4kj2u9hmfus5ro', '2019-05-08 14:37:55'),
(982, '10000000', 'Chrome', '', '', 'q0qq73be61fu4kj2u9hmfus5ro', '2019-05-08 14:58:31'),
(983, '10000000', 'Chrome', '', '', '6gc5vcv7nr57ddueq7pbl6f4hr', '2019-05-08 18:23:52'),
(984, '10000000', 'Chrome', '', '', '6gc5vcv7nr57ddueq7pbl6f4hr', '2019-05-08 18:24:27'),
(985, '10000000', 'Chrome', '', '', '6gc5vcv7nr57ddueq7pbl6f4hr', '2019-05-08 18:25:03'),
(986, '10000000', 'Chrome', '', '', '6gc5vcv7nr57ddueq7pbl6f4hr', '2019-05-08 18:25:51'),
(987, '10000000', 'Chrome', '', '', '6gc5vcv7nr57ddueq7pbl6f4hr', '2019-05-08 18:26:09'),
(988, '10000069', 'Firefox', 'https://olcademy.in/homepage', '', 'h7qi4f11k6dskecrr8uefmsdb7', '2019-05-08 18:42:38'),
(989, '10000069', 'Chrome', 'https://olcademy.in/homepage', '', '7qsjp25abhqv9r1pl0jlphg0il', '2019-05-08 18:44:42'),
(990, '10000069', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/inst.php', '7qsjp25abhqv9r1pl0jlphg0il', '2019-05-08 18:56:06'),
(991, '10000069', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', '7qsjp25abhqv9r1pl0jlphg0il', '2019-05-08 18:56:15'),
(992, '10000069', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/description/643155619069510000038', '7qsjp25abhqv9r1pl0jlphg0il', '2019-05-08 18:57:05'),
(993, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:01:18'),
(994, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:02:58'),
(995, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'https://olcademy.in/dashboard/instructor', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:03:36'),
(996, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:03:42'),
(997, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:03:46'),
(998, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:04:15'),
(999, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:04:48'),
(1000, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:04:57'),
(1001, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:05:10'),
(1002, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:09:41'),
(1003, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Marketing%27', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:11:43'),
(1004, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27Business%27', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:11:49'),
(1005, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'https://olcademy.in/dashboard/instructor', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:11:52'),
(1006, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:20:49'),
(1007, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', '', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:22:22'),
(1008, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:22:30'),
(1009, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/appComingSoon.php', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:24:14'),
(1010, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:44:24'),
(1011, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 06:45:00'),
(1012, '10000069', 'Chrome', 'https://olcademy.in/homepage', '', 'adoc0ent74pivbp9h108g75e73', '2019-05-09 06:57:20'),
(1013, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:02:05'),
(1014, '10000000', 'Chrome', 'https://olcademy.in/result.php?search_query=testing', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:03:28'),
(1015, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/result.php?search_query=testing', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:05:11'),
(1016, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:06:31'),
(1017, '10000000', 'Chrome', 'https://olcademy.in/', '', 'i5rm0rm1jc0f1hcalc28v1dmcb', '2019-05-09 07:12:12'),
(1018, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:20:15'),
(1019, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:21:03'),
(1020, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:24:12'),
(1021, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', '', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:24:43'),
(1022, '10000000', 'Chrome', 'https://olcademy.in/Profile', 'https://olcademy.in/', 'i5rm0rm1jc0f1hcalc28v1dmcb', '2019-05-09 07:24:53'),
(1023, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/viewbucket', 'i5rm0rm1jc0f1hcalc28v1dmcb', '2019-05-09 07:25:49'),
(1024, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:27:19'),
(1025, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:28:12'),
(1026, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:29:22'),
(1027, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:29:35'),
(1028, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:29:56'),
(1029, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:32:27'),
(1030, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:34:24'),
(1031, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:35:49'),
(1032, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:35:56'),
(1033, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 07:54:49'),
(1034, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:03:43'),
(1035, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:05:30'),
(1036, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:05:55'),
(1037, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:12:53'),
(1038, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:13:59'),
(1039, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:14:29'),
(1040, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/643155619069510000038', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:22:28'),
(1041, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:41:49'),
(1042, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:43:48'),
(1043, '10000000', 'Chrome', 'https://olcademy.in/result.php?search_query=it', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 08:49:51'),
(1044, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:24:56'),
(1045, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:29:30'),
(1046, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:32:16'),
(1047, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:35:31'),
(1048, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:36:06'),
(1049, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:36:35'),
(1050, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:36:50'),
(1051, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:40:49'),
(1052, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:41:31'),
(1053, '10000037', 'Chrome', '', '', '57qtbdsrj60og5u4v71jnt27pb', '2019-05-09 09:44:19'),
(1054, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=1', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:45:09'),
(1055, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/newNotification.php?data=1', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:46:35'),
(1056, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/appComingSoon.php', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:51:32'),
(1057, '10000000', 'Chrome', 'https://olcademy.in/Olcademy-FAQ', 'https://olcademy.in/appComingSoon.php', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:53:15'),
(1058, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/Olcademy-FAQ', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:54:23'),
(1059, '10000000', 'Chrome', 'https://olcademy.in/Olcademy-FAQ', 'https://olcademy.in/appComingSoon.php', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:55:24'),
(1060, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/Olcademy-FAQ', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 09:55:30'),
(1061, '10000000', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/Terms', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:00:33'),
(1062, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:01:41'),
(1063, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/About/Olcademy', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:01:51'),
(1064, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:02:17'),
(1065, '10000000', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/dashboard/moderator', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:07:35'),
(1066, '10000013', 'Chrome', '', '', 's0t9jtgj58j9l3v3qauq8v919d', '2019-05-09 10:09:03'),
(1067, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', '', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:09:27'),
(1068, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:09:35'),
(1069, '10000013', 'Chrome', '', '', 's0t9jtgj58j9l3v3qauq8v919d', '2019-05-09 10:10:23'),
(1070, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:11:54'),
(1071, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:20:43'),
(1072, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/842155625327610000037', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:36:51'),
(1073, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:36:59'),
(1074, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:37:19'),
(1075, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:38:02'),
(1076, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', 'https://olcademy.in/description/709155629242110000068', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:44:02'),
(1077, '10000000', 'Chrome', 'https://olcademy.in/olcademy-chat', '', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:44:23'),
(1078, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/olcademy-chat', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:44:30'),
(1079, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:44:47'),
(1080, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/709155629242110000068', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:46:26'),
(1081, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:46:31'),
(1082, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:49:42'),
(1083, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:49:49'),
(1084, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:50:00'),
(1085, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:50:08'),
(1086, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:50:25'),
(1087, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:50:25'),
(1088, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:51:47'),
(1089, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:51:51'),
(1090, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:52:01'),
(1091, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/709155629242110000068', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:52:10'),
(1092, '10000000', 'Chrome', 'https://olcademy.in/Help', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:57:14'),
(1093, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/709155629242110000068', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:57:20'),
(1094, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:57:24'),
(1095, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:57:47'),
(1096, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Terms', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:57:53'),
(1097, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:58:29'),
(1098, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Terms', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:58:34'),
(1099, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tup2usemvo5tgveavtvdl4f8t0', '2019-05-09 10:58:45'),
(1100, '10000037', 'Chrome', 'https://olcademy.in/', '', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:14:36'),
(1101, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:15:24'),
(1102, '10000000', 'Chrome', '', '', 'lp4qou7pikatnihcjskqo5u5f6', '2019-05-09 12:18:36'),
(1103, '10000013', 'Chrome', '', '', 's0t9jtgj58j9l3v3qauq8v919d', '2019-05-09 12:33:28'),
(1104, '10000013', 'Chrome', '', '', 's0t9jtgj58j9l3v3qauq8v919d', '2019-05-09 12:34:03'),
(1105, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 12:36:49'),
(1106, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 12:37:46'),
(1107, '10000037', 'Chrome', 'https://olcademy.in/', '', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:38:46'),
(1108, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:39:08'),
(1109, '10000016', 'Chrome', '', '', 'b8a3n7qcncgji0h42fg9ga2slf', '2019-05-09 12:39:35'),
(1110, '10000016', 'Chrome', '', '', 'b8a3n7qcncgji0h42fg9ga2slf', '2019-05-09 12:40:43'),
(1111, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=2', 'https://olcademy.in/dashboard/instructor', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:47:25'),
(1112, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=2', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 12:47:35');
INSERT INTO `browserpagelinks` (`browser_pagelinks_id`, `user_id`, `browser_name`, `current_page_link`, `previous_page_link`, `user_session_id`, `page_visit_timestamp`) VALUES
(1113, '10000037', 'Chrome', 'https://olcademy.in/newNotification.php?data=2', 'https://olcademy.in/dashboard/instructor', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 13:22:39'),
(1114, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/newNotification.php?data=2', '8jd3b01a35uq5tm816tlgicl6m', '2019-05-09 13:23:17'),
(1115, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', '', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 13:36:02'),
(1116, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 13:36:41'),
(1117, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 13:37:20'),
(1118, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 13:38:02'),
(1119, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 13:46:11'),
(1120, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 13:48:08'),
(1121, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 13:48:58'),
(1122, '10000037', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/signup', 'rsikr5sl8q1li13dekl4q9ubmj', '2019-05-09 13:49:29'),
(1123, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'rsikr5sl8q1li13dekl4q9ubmj', '2019-05-09 13:49:32'),
(1124, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'rsikr5sl8q1li13dekl4q9ubmj', '2019-05-09 13:50:57'),
(1125, '10000037', 'Chrome', '', '', 'peo9tphv4u450v8cs91v8tvnbq', '2019-05-09 13:56:40'),
(1126, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'm2nl4k1je37rr4up4ohb4t7b0h', '2019-05-09 13:57:15'),
(1127, '10000013', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'm2nl4k1je37rr4up4ohb4t7b0h', '2019-05-09 13:57:23'),
(1128, '10000013', 'Chrome', '', '', 'b29gr457oq3e0ap1kb60s1768u', '2019-05-09 13:58:12'),
(1129, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'nhko8rm9i8d86bv1fh9jshrl57', '2019-05-09 13:58:17'),
(1130, '10000013', 'Chrome', '', '', 'b29gr457oq3e0ap1kb60s1768u', '2019-05-09 13:58:21'),
(1131, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', 'nhko8rm9i8d86bv1fh9jshrl57', '2019-05-09 13:58:27'),
(1132, '10000037', 'Chrome', '', '', 'bcgpqugfuc8e7g4s4k0i901rnm', '2019-05-09 13:59:22'),
(1133, '10000037', 'Chrome', '', '', 'bcgpqugfuc8e7g4s4k0i901rnm', '2019-05-09 13:59:35'),
(1134, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:09:25'),
(1135, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:10:01'),
(1136, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:10:50'),
(1137, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:11:30'),
(1138, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:11:54'),
(1139, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:13:17'),
(1140, '10000037', 'Firefox', '', '', 'dgtbqj7lr669t9eooips2tvqho', '2019-05-09 14:13:30'),
(1141, '10000037', 'Firefox', '', '', 'dgtbqj7lr669t9eooips2tvqho', '2019-05-09 14:13:41'),
(1142, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:14:06'),
(1143, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:14:51'),
(1144, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:15:07'),
(1145, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:16:11'),
(1146, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:16:24'),
(1147, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:17:09'),
(1148, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:17:30'),
(1149, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:18:54'),
(1150, '10000037', 'Chrome', '', '', 'bcgpqugfuc8e7g4s4k0i901rnm', '2019-05-09 14:34:20'),
(1151, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:35:24'),
(1152, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:45:37'),
(1153, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/About/Olcademy', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:47:47'),
(1154, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/homepage', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:47:54'),
(1155, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Terms', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:50:11'),
(1156, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:50:19'),
(1157, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:51:32'),
(1158, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:55:19'),
(1159, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/842155625327610000037', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:55:41'),
(1160, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:55:47'),
(1161, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:55:54'),
(1162, '10000000', 'Firefox', '', '', '7crldblshm5phn7nhs3673k1jt', '2019-05-09 14:56:41'),
(1163, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'hq7o8iomoh7orj6q7t45kivc3r', '2019-05-09 14:57:32'),
(1164, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:23:54'),
(1165, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:24:00'),
(1166, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:24:15'),
(1167, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:24:35'),
(1168, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:26:08'),
(1169, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:26:26'),
(1170, '10000000', 'Chrome', 'https://www.olcademy.in/', '', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-09 15:26:29'),
(1171, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:26:34'),
(1172, '10000000', 'Chrome', 'https://www.olcademy.in/', '', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-09 15:26:57'),
(1173, '10000000', 'Chrome', 'https://www.olcademy.in/dashboard/instructor', 'https://www.olcademy.in/', 's8tk0ml4e6eubcha3n6s07av8t', '2019-05-09 15:27:08'),
(1174, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:27:15'),
(1175, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:27:28'),
(1176, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:30:46'),
(1177, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:31:10'),
(1178, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:31:23'),
(1179, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:34:41'),
(1180, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:34:45'),
(1181, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:34:57'),
(1182, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/index.php', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:35:00'),
(1183, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/student', '65lgeqs238v3oev6dkacringag', '2019-05-09 15:36:45'),
(1184, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/signin', '56v3jnproj6to5oosj5l4turbl', '2019-05-09 15:40:03'),
(1185, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/signin', '56v3jnproj6to5oosj5l4turbl', '2019-05-09 15:40:35'),
(1186, '10000000', 'Chrome', 'https://olcademy.in/homepage', '', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:39:12'),
(1187, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:40:20'),
(1188, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:40:32'),
(1189, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:40:35'),
(1190, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:51:14'),
(1191, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:52:59'),
(1192, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 16:53:09'),
(1193, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/homepage', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:13:28'),
(1194, '10000000', 'Chrome', 'https://olcademy.in/description/709155629242110000068', 'https://olcademy.in/dashboard/student', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:13:41'),
(1195, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/description/709155629242110000068', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:20:46'),
(1196, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:25:42'),
(1197, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:29:48'),
(1198, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:30:49'),
(1199, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:31:41'),
(1200, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:32:35'),
(1201, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:34:25'),
(1202, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:34:37'),
(1203, '10000000', 'Chrome', 'https://olcademy.in/Terms', 'https://olcademy.in/description/643155619069510000038', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:34:53'),
(1204, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:35:30'),
(1205, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/Terms', 'tjsir4soqrs45mdv136iucdq8h', '2019-05-09 17:39:14'),
(1206, '10000000', 'Chrome', '', '', '91cqrd89aae88c1hj8eebnf6h0', '2019-05-09 17:45:29'),
(1207, '10000037', 'Chrome', '', '', 'oabm1ko3hkvhso279bacp3dg9d', '2019-05-09 18:35:16'),
(1208, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'l474a0kb85vsts60g2d2prs7ca', '2019-05-10 04:11:07'),
(1209, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/construction', 'l474a0kb85vsts60g2d2prs7ca', '2019-05-10 04:15:48'),
(1210, '10000000', 'Chrome', 'https://olcademy.in/newNotification.php?data=3', 'https://olcademy.in/homepage', 'l474a0kb85vsts60g2d2prs7ca', '2019-05-10 04:16:29'),
(1211, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:38:14'),
(1212, '10000000', 'Chrome', 'https://olcademy.in/Olcademy-FAQ', 'https://olcademy.in/appComingSoon.php', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:44:22'),
(1213, '10000000', 'Chrome', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'https://olcademy.in/Olcademy-FAQ', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:46:41'),
(1214, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/categoryResult.php?cat=%27IT%20and%20Software%27', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:47:20'),
(1215, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:47:58'),
(1216, '10000000', 'Chrome', 'https://olcademy.in/description/842155625327610000037', 'https://olcademy.in/dashboard/student', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:52:50'),
(1217, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/description/842155625327610000037', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 04:53:44'),
(1218, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/appComingSoon.php', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 05:00:27'),
(1219, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/appComingSoon.php', 'n79smv64t2ubdv4i37kppobqeq', '2019-05-10 05:01:05'),
(1220, '10000000', 'Chrome', 'https://olcademy.in/', '', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 08:57:02'),
(1221, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 08:58:04'),
(1222, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 08:58:45'),
(1223, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/moderator', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 08:58:58'),
(1224, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 09:02:12'),
(1225, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 09:19:06'),
(1226, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 09:19:18'),
(1227, '10000000', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'uve6qmtvherlbu3fa3hkl184vh', '2019-05-10 09:28:59'),
(1228, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'uve6qmtvherlbu3fa3hkl184vh', '2019-05-10 09:29:14'),
(1229, '10000000', 'Chrome', 'https://olcademy.in/editcourse/861155637969010000000', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 09:39:58'),
(1230, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 09:40:17'),
(1231, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 10:02:01'),
(1232, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 10:02:26'),
(1233, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/moderator', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 10:04:17'),
(1234, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 10:04:33'),
(1235, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'o9a6ikjgto1ma8vk5hocibqgt1', '2019-05-10 10:10:42'),
(1236, '10000037', 'Chrome', '', '', 'ndvsu0oarbmka3apde5i7itsps', '2019-05-10 11:08:05'),
(1237, '10000013', 'Chrome', '', '', 'mk1ejae50h44ketap468u5l48e', '2019-05-10 11:09:36'),
(1238, '10000013', 'Chrome', '', '', 'mk1ejae50h44ketap468u5l48e', '2019-05-10 11:09:53'),
(1239, '10000037', 'Chrome', '', '', 'e973su7e29eif92mhjf5j08fi3', '2019-05-10 11:18:14'),
(1240, '10000037', 'Chrome', '', '', 'e973su7e29eif92mhjf5j08fi3', '2019-05-10 11:18:22'),
(1241, '10000037', 'Chrome', 'https://olcademy.in/', '', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-10 12:31:24'),
(1242, '10000037', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/', 'l87r21ujb9up8tegpcb7iohff3', '2019-05-10 12:31:32'),
(1243, '10000000', 'Chrome', 'https://olcademy.in/dashboard/student', '', 'gsk98h8tuk92sts24fbf4k1hl8', '2019-05-10 13:43:13'),
(1244, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/student', 'gsk98h8tuk92sts24fbf4k1hl8', '2019-05-10 13:43:30'),
(1245, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/signup', '4ug8sbc023gv0c3nltpb6m9a5n', '2019-05-10 13:53:09'),
(1246, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/homepage', '4ug8sbc023gv0c3nltpb6m9a5n', '2019-05-10 13:53:14'),
(1247, '10000013', 'Chrome', '', '', 'rs0oj1ha70d2omti9fr7v8sie2', '2019-05-10 13:53:33'),
(1248, '10000013', 'Chrome', '', '', 'rs0oj1ha70d2omti9fr7v8sie2', '2019-05-10 13:53:44'),
(1249, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/instructor', '4ug8sbc023gv0c3nltpb6m9a5n', '2019-05-10 13:55:58'),
(1250, '10000000', 'Chrome', 'https://olcademy.in/description/643155619069510000038', 'https://olcademy.in/homepage', '4ug8sbc023gv0c3nltpb6m9a5n', '2019-05-10 13:56:09'),
(1251, '10000013', 'Chrome', 'https://olcademy.in/index.php', 'https://olcademy.in/construction', 'mvojkg3d350tmu8nri1hp8rb52', '2019-05-10 13:57:31'),
(1252, '10000013', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/index.php', 'mvojkg3d350tmu8nri1hp8rb52', '2019-05-10 13:57:41'),
(1253, '10000000', 'Chrome', 'https://olcademy.in/dashboard/instructor', 'https://olcademy.in/dashboard/instructor', 'gsk98h8tuk92sts24fbf4k1hl8', '2019-05-10 13:58:45'),
(1254, '10000000', 'Chrome', 'https://olcademy.in/dashboard/moderator', 'https://olcademy.in/dashboard/instructor', 'gsk98h8tuk92sts24fbf4k1hl8', '2019-05-10 13:59:06'),
(1255, '10000000', 'Chrome', 'https://olcademy.in/homepage', 'https://olcademy.in/dashboard/moderator', 'gsk98h8tuk92sts24fbf4k1hl8', '2019-05-10 13:59:18'),
(1256, '10000000', 'Chrome', '', '', 'eqsdfj9rqgjeh6aa725rsso008', '2019-05-10 14:03:41'),
(1257, '10000000', 'Chrome', '', '', 'eqsdfj9rqgjeh6aa725rsso008', '2019-05-10 14:03:54'),
(1258, '10000000', 'Chrome', '', '', 'eqsdfj9rqgjeh6aa725rsso008', '2019-05-10 14:04:46'),
(1259, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 14:07:23'),
(1260, '10000000', 'Chrome', '', '', 'eqsdfj9rqgjeh6aa725rsso008', '2019-05-10 14:18:15'),
(1261, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 14:22:03'),
(1262, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 14:23:13'),
(1263, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 14:23:24'),
(1264, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 14:46:39'),
(1265, '10000000', 'Firefox', '', '', 'u1g46fmogf12qtvvsob9ck51vn', '2019-05-10 15:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `certificate_count` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK,unique id of the certificate',
  `certificate_id_number` int(200) NOT NULL COMMENT 'FK, unique id of the certificate',
  `user_id` int(255) NOT NULL COMMENT 'FK, user id of the user',
  `course_id` varchar(255) NOT NULL COMMENT 'FK, course id of the course',
  `certificate_path_name` varchar(1000) NOT NULL COMMENT 'path of the certificate pdf file',
  PRIMARY KEY (`certificate_count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores the details of the certificate provided to the use';

-- --------------------------------------------------------

--
-- Table structure for table `chatfilesdetails`
--

DROP TABLE IF EXISTS `chatfilesdetails`;
CREATE TABLE IF NOT EXISTS `chatfilesdetails` (
  `chat_files_details_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the chat file',
  `chat_message_id` bigint(200) NOT NULL COMMENT 'FK, Message id of the message',
  `file_location_path` varchar(300) NOT NULL COMMENT 'Path of the file where it is stored',
  `file_type` varchar(50) NOT NULL COMMENT 'Type or extension of the file',
  PRIMARY KEY (`chat_files_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='location of file sent by the user as message';

-- --------------------------------------------------------

--
-- Table structure for table `chatmessages`
--

DROP TABLE IF EXISTS `chatmessages`;
CREATE TABLE IF NOT EXISTS `chatmessages` (
  `chat_message_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT 'PK,id for the message',
  `chat_session_id` int(100) NOT NULL COMMENT 'FK, Session id of the Session between the users',
  `chat_message` varchar(1500) NOT NULL COMMENT 'Message Text',
  `is_read_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' status of the message whether it is read or unread (0 or 1) ',
  `is_deleted_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Status of the message whether it is deleted or not (1 or 0) ',
  `message_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of the message',
  `message_type` enum('txt','file') NOT NULL DEFAULT 'txt' COMMENT 'Type of the message or file',
  PRIMARY KEY (`chat_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='store all the messages sent by  the users';

--
-- Dumping data for table `chatmessages`
--

INSERT INTO `chatmessages` (`chat_message_id`, `chat_session_id`, `chat_message`, `is_read_status`, `is_deleted_status`, `message_timestamp`, `message_type`) VALUES
(1, 1, 'hi', 0, 0, '2019-05-04 16:20:04', 'txt'),
(2, 1, 'hi', 0, 0, '2019-05-04 16:20:05', 'txt'),
(3, 1, 'hi', 0, 0, '2019-05-04 16:20:05', 'txt'),
(4, 1, 'hi', 0, 0, '2019-05-04 16:20:06', 'txt'),
(5, 1, 'hi', 0, 0, '2019-05-04 16:20:06', 'txt'),
(6, 1, 'hi', 0, 0, '2019-05-04 16:20:06', 'txt'),
(7, 1, 'hi', 0, 0, '2019-05-04 16:20:07', 'txt'),
(8, 2, 'hey', 0, 0, '2019-05-04 16:27:44', 'txt'),
(9, 2, 'wassup', 0, 0, '2019-05-04 16:27:55', 'txt'),
(10, 1, 'Fine', 0, 0, '2019-05-04 16:28:03', 'txt'),
(11, 1, 'How u doing??', 0, 0, '2019-05-04 16:28:15', 'txt'),
(12, 3, 'Hi', 1, 0, '2019-05-05 07:48:34', 'txt'),
(13, 5, 'hello', 0, 0, '2019-05-05 07:48:45', 'txt'),
(14, 7, 'Hi Rahul', 0, 0, '2019-05-05 07:55:43', 'txt'),
(15, 9, 'hello', 1, 0, '2019-05-06 13:07:44', 'txt');

-- --------------------------------------------------------

--
-- Table structure for table `chatsessiondetails`
--

DROP TABLE IF EXISTS `chatsessiondetails`;
CREATE TABLE IF NOT EXISTS `chatsessiondetails` (
  `chat_session_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key for the session between two users',
  `message_sender_id` int(200) NOT NULL COMMENT 'FK, Senders user id',
  `message_receiver_id` int(200) NOT NULL COMMENT 'FK, Receivers User id',
  `message_receiver_category` varchar(200) NOT NULL COMMENT 'Type of User session Whether user is texting to Instructor , Student or Moderator',
  `last_message_id` int(12) NOT NULL DEFAULT '-1' COMMENT 'FK, Last messge id',
  `is_blocked_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'If the Reciever is blocked or not (1 or 0) ',
  PRIMARY KEY (`chat_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='generated session id for per user and receive pair';

--
-- Dumping data for table `chatsessiondetails`
--

INSERT INTO `chatsessiondetails` (`chat_session_id`, `message_sender_id`, `message_receiver_id`, `message_receiver_category`, `last_message_id`, `is_blocked_status`) VALUES
(1, 10000037, 10000000, 'stud', 11, 0),
(2, 10000000, 10000037, 'inst', 11, 0),
(3, 10000038, 10000037, 'stud', 12, 0),
(4, 10000037, 10000038, 'inst', 12, 0),
(5, 10000013, 10000000, 'stud', 13, 0),
(6, 10000000, 10000013, 'inst', 13, 0),
(7, 10000038, 10000000, 'stud', 14, 0),
(8, 10000000, 10000038, 'inst', 14, 0),
(9, 10000068, 10000037, 'stud', 15, 0),
(10, 10000037, 10000068, 'inst', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookiesdetails`
--

DROP TABLE IF EXISTS `cookiesdetails`;
CREATE TABLE IF NOT EXISTS `cookiesdetails` (
  `cookie_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id for the different cookies in the database',
  `generated_cookie_id` varchar(50) NOT NULL COMMENT 'unique cookie id generated by the site',
  PRIMARY KEY (`cookie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the record of the cookies of the users';

-- --------------------------------------------------------

--
-- Table structure for table `courseaccessplatform`
--

DROP TABLE IF EXISTS `courseaccessplatform`;
CREATE TABLE IF NOT EXISTS `courseaccessplatform` (
  `course_access_platform_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the course access platform',
  `course_access_platform_name` varchar(1000) NOT NULL COMMENT 'Platform Name',
  `platform_time_limit` varchar(1000) NOT NULL DEFAULT 'unlimited' COMMENT 'Platform Time Limit',
  `platform_type` varchar(1000) NOT NULL COMMENT 'Platform type (basic or premium)',
  `platform_image_path` varchar(1000) NOT NULL COMMENT 'Platform image path',
  PRIMARY KEY (`course_access_platform_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This table stores all the platforms to connect with users';

--
-- Dumping data for table `courseaccessplatform`
--

INSERT INTO `courseaccessplatform` (`course_access_platform_id`, `course_access_platform_name`, `platform_time_limit`, `platform_type`, `platform_image_path`) VALUES
(1, 'skype', '60', 'basic', 'images/video.png'),
(2, 'Hangout', '99', 'basic', 'images/video.png'),
(3, 'Zoom', '40', 'basic', 'images/video.png');

-- --------------------------------------------------------

--
-- Table structure for table `courseadditionalmediadetails`
--

DROP TABLE IF EXISTS `courseadditionalmediadetails`;
CREATE TABLE IF NOT EXISTS `courseadditionalmediadetails` (
  `course_additional_media_details_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key for the file',
  `course_id` varchar(200) NOT NULL COMMENT 'FK, course id of the course',
  `encrypted_file_name` text NOT NULL COMMENT 'Link of the file',
  `actual_file_name` varchar(200) DEFAULT NULL COMMENT 'Actual file path',
  `media_category` varchar(11) NOT NULL COMMENT 'Category of the media',
  PRIMARY KEY (`course_additional_media_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='this table stores all the additional media content required for the course';

-- --------------------------------------------------------

--
-- Table structure for table `courseapprovaldetails`
--

DROP TABLE IF EXISTS `courseapprovaldetails`;
CREATE TABLE IF NOT EXISTS `courseapprovaldetails` (
  `course_approval_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the moderator who viewed the particular course',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, Course id of the course',
  `moderator_id` int(200) NOT NULL COMMENT 'FK, user id of the moderator who viewed the course',
  `details_updated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'latest timestamp when this row is updated',
  `is_approved_status` int(200) NOT NULL COMMENT 'status of the approval whether course is accepted or rejected',
  `suggestions_file_path` varchar(500) NOT NULL COMMENT 'stores the filename of the suggestions that moderator has suggested in the course',
  PRIMARY KEY (`course_approval_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='This table stores the moderator who views the particular course and suggest some changes';

--
-- Dumping data for table `courseapprovaldetails`
--

INSERT INTO `courseapprovaldetails` (`course_approval_details_id`, `course_id`, `moderator_id`, `details_updated_timestamp`, `is_approved_status`, `suggestions_file_path`) VALUES
(1, '643155619069510000038', 10000000, '2019-04-25 11:51:52', 1, ''),
(2, '842155625327610000037', 10000000, '2019-04-26 05:28:52', 1, ''),
(3, '925155628891110000000', 10000000, '2019-04-26 15:44:42', 1, 'moderator/moderatoron925155628891110000000.txt'),
(4, '709155629242110000068', 10000000, '2019-04-27 15:02:54', 1, ''),
(5, '601155654042710000000', 10000000, '2019-04-29 13:05:32', 1, 'moderator/moderatoron601155654042710000000.txt'),
(6, '245155649317410000013', 10000000, '2019-04-29 23:11:46', 1, ''),
(7, '486155657962310000013', 10000000, '2019-04-29 23:21:21', 2, 'moderator/moderatoron486155657962310000013.txt'),
(8, '332155663898110000000', 10000000, '2019-04-30 16:03:57', 1, ''),
(9, '361155718039510000013', 10000000, '2019-05-06 22:15:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `coursebatch`
--

DROP TABLE IF EXISTS `coursebatch`;
CREATE TABLE IF NOT EXISTS `coursebatch` (
  `course_batch_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'PK,batch id for a batch for a particular course',
  `course_id` varchar(1000) NOT NULL COMMENT 'courseid of a course',
  `update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'latest timestamp when the batch is updated',
  `lecture_start_time` varchar(100) NOT NULL COMMENT 'Start time of the lecture of a batch',
  `lecture_end_time` varchar(100) NOT NULL COMMENT 'End Time of the lecture of a batch',
  `batch_start_date` date NOT NULL COMMENT 'Start date of the batch for a particular course',
  `batch_registration_end_date` date NOT NULL COMMENT 'Registration End date of the batch of a course',
  `wallet_transfer_amount` int(10) NOT NULL COMMENT 'amount to be transferred into wallet at first weekend of next month',
  `transfer_date` date NOT NULL COMMENT 'date on which the amount will be transferred to wallet',
  `is_on_sunday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_monday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_tuesday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_wednesday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_thursday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_friday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  `is_on_saturday` int(11) NOT NULL COMMENT 'Stores the value for the availability on this day(0 or 1), if available stores 1',
  PRIMARY KEY (`course_batch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='This table keep the details about course batches';

--
-- Dumping data for table `coursebatch`
--

INSERT INTO `coursebatch` (`course_batch_id`, `course_id`, `update_timestamp`, `lecture_start_time`, `lecture_end_time`, `batch_start_date`, `batch_registration_end_date`, `wallet_transfer_amount`, `transfer_date`, `is_on_sunday`, `is_on_monday`, `is_on_tuesday`, `is_on_wednesday`, `is_on_thursday`, `is_on_friday`, `is_on_saturday`) VALUES
(1, '643155619069510000038', '2019-04-25 11:15:12', '10:30', '12:30', '2019-04-30', '2019-04-29', 0, '0000-00-00', 0, 1, 1, 1, 1, 1, 0),
(2, '842155625327610000037', '2019-04-26 05:26:27', '09:00', '10:00', '2019-04-28', '2019-04-27', 1368, '2019-06-02', 1, 0, 1, 0, 1, 0, 1),
(3, '842155625327610000037', '2019-04-26 05:27:53', '13:00', '14:00', '2019-05-06', '2019-05-05', 190, '2019-06-02', 0, 1, 0, 1, 0, 1, 0),
(4, '925155628891110000000', '2019-04-26 15:37:13', '12:00', '12:40', '2019-05-01', '2019-04-27', 0, '0000-00-00', 1, 1, 1, 1, 1, 1, 1),
(5, '709155629242110000068', '2019-04-27 15:00:23', '08:30', '09:30', '2019-05-06', '2019-05-05', 0, '0000-00-00', 0, 1, 1, 0, 0, 0, 0),
(6, '601155654042710000000', '2019-04-29 13:00:38', '14:00', '14:40', '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 1, 1, 0, 0, 0, 0),
(7, '601155654042710000000', '2019-04-29 13:01:14', '16:00', '16:40', '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 0, 0, 0, 0, 1, 1),
(8, '245155649317410000013', '2019-04-29 23:11:23', '20:00', '21:00', '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 1, 0, 0, 0, 0, 0),
(9, '486155657962310000013', '2019-04-29 23:19:48', '06:00', '07:00', '2019-05-01', '2019-04-30', 0, '0000-00-00', 0, 0, 0, 1, 0, 0, 0),
(10, '486155657962310000013', '2019-04-29 23:20:17', '20:00', '21:00', '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 0, 0, 0, 1, 0, 0),
(11, '861155637969010000000', '2019-05-06 15:28:33', '10:00', '12:00', '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coursebatchreferraldetails`
--

DROP TABLE IF EXISTS `coursebatchreferraldetails`;
CREATE TABLE IF NOT EXISTS `coursebatchreferraldetails` (
  `batch_referral_id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'PK for the table auto_generated',
  `course_id` varchar(100) NOT NULL COMMENT 'PK of Course table',
  `course_batch_id` int(255) NOT NULL COMMENT 'PK of CourseBatch table',
  `batch_referral_code` char(12) NOT NULL COMMENT 'Generated referral code',
  `batch_referral_validity` varchar(24) NOT NULL COMMENT 'Discount of referral code (5-50%)',
  `batch_referral_discount` int(2) NOT NULL COMMENT 'Validity of generate referral code (3 Days, 5 Days, 10 Days OR TillRegistrationEndDate)',
  `batch_referral_to_promote` int(11) NOT NULL COMMENT 'private or public referral code',
  `batch_referral_code_generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'time at which the code is generated',
  PRIMARY KEY (`batch_referral_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='Stores all the generated referral code for specific batch of a course';

--
-- Dumping data for table `coursebatchreferraldetails`
--

INSERT INTO `coursebatchreferraldetails` (`batch_referral_id`, `course_id`, `course_batch_id`, `batch_referral_code`, `batch_referral_validity`, `batch_referral_discount`, `batch_referral_to_promote`, `batch_referral_code_generation_timestamp`) VALUES
(4, '925155628891110000000', 4, 'OXMUM5V5CRVP', '3 days', 30, 0, '2019-04-26 15:59:02'),
(6, '643155619069510000038', 1, '4IDM1ZNSL5YY', '3 days', 30, 0, '2019-04-27 14:55:06'),
(7, '709155629242110000068', 5, 'GWG8COAQEWDY', '3 days', 30, 0, '2019-04-27 15:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `coursecart`
--

DROP TABLE IF EXISTS `coursecart`;
CREATE TABLE IF NOT EXISTS `coursecart` (
  `course_cart_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique cart id for the batch of a course',
  `course_id` varchar(200) NOT NULL COMMENT 'FK, course id of a course',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `course_batch_id` int(20) NOT NULL COMMENT 'FK, batch id of a batch of a course',
  PRIMARY KEY (`course_cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='this table stores all the courses which are there in the cart for particular user';

--
-- Dumping data for table `coursecart`
--

INSERT INTO `coursecart` (`course_cart_id`, `course_id`, `user_id`, `course_batch_id`) VALUES
(13, '842155625327610000037', 10000013, 2),
(12, '709155629242110000068', 10000013, 5);

-- --------------------------------------------------------

--
-- Table structure for table `coursecheckoutdetails`
--

DROP TABLE IF EXISTS `coursecheckoutdetails`;
CREATE TABLE IF NOT EXISTS `coursecheckoutdetails` (
  `course_checkout_details_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id for the chekout course',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of the course',
  `user_id` int(20) NOT NULL COMMENT 'FK, user id of the user',
  `course_batch_id` int(20) NOT NULL COMMENT 'FK, batch id of the batch',
  PRIMARY KEY (`course_checkout_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='It stores the Couse and batch in the checkout page';

--
-- Dumping data for table `coursecheckoutdetails`
--

INSERT INTO `coursecheckoutdetails` (`course_checkout_details_id`, `course_id`, `user_id`, `course_batch_id`) VALUES
(1, '842155625327610000037', 10000013, 3),
(2, '842155625327610000037', 10000020, 3),
(3, '709155629242110000068', 10000000, 5),
(4, '709155629242110000068', 10000037, 5);

-- --------------------------------------------------------

--
-- Table structure for table `coursecosinesimilaritytable`
--

DROP TABLE IF EXISTS `coursecosinesimilaritytable`;
CREATE TABLE IF NOT EXISTS `coursecosinesimilaritytable` (
  `course_id` varchar(100) NOT NULL COMMENT 'PK,course Id of the course for which similar courses are mentioned',
  `contentbased_similarcourse_id1` varchar(100) NOT NULL COMMENT 'course with highest cosine similarity with the primary course Id course',
  `contentbased_similarcourse_id2` varchar(100) NOT NULL COMMENT 'course with 2nd highest cosine similarity with the primary course Id course',
  `contentbased_similarcourse_id3` varchar(100) NOT NULL COMMENT 'course with 3rd highest cosine similarity with the primary course Id course',
  `contentbased_similarcourse_id4` varchar(100) NOT NULL COMMENT 'course with 4th highest cosine similarity with the primary course Id course',
  `contentbased_similarcourse_id5` varchar(100) NOT NULL COMMENT 'course with 5th highest cosine similarity with the primary course Id course',
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='The table stores the course IDs for the content based recommendation where in a course Id and 5 similar courses based on there cosine similarity are mentioned in the table';

-- --------------------------------------------------------

--
-- Table structure for table `coursekeywords`
--

DROP TABLE IF EXISTS `coursekeywords`;
CREATE TABLE IF NOT EXISTS `coursekeywords` (
  `course_keyword_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for a keyword',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of the course',
  `keyword` varchar(1000) NOT NULL COMMENT 'Keyword for the course',
  PRIMARY KEY (`course_keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 COMMENT='It stores the tags or keywords related to the course';

--
-- Dumping data for table `coursekeywords`
--

INSERT INTO `coursekeywords` (`course_keyword_id`, `course_id`, `keyword`) VALUES
(40, '643155619069510000038', 'Maanual testing'),
(39, '643155619069510000038', 'Testing'),
(41, '842155625327610000037', 'AWS Developer'),
(49, '925155628891110000000', 'Installation of php,Knowledge about php'),
(47, '709155629242110000068', 'mind'),
(80, '245155649317410000013', 'Agile,'),
(79, '245155649317410000013', 'Scrum'),
(78, '245155649317410000013', 'backlogs'),
(77, '245155649317410000013', 'Sprint'),
(76, '601155654042710000000', 'java programming'),
(93, '486155657962310000013', 'Language'),
(92, '486155657962310000013', 'Skill'),
(91, '486155657962310000013', 'Break BArriers'),
(90, '332155663898110000000', 'Python3'),
(95, '361155718039510000013', 'Career');

-- --------------------------------------------------------

--
-- Table structure for table `courselecturedetails`
--

DROP TABLE IF EXISTS `courselecturedetails`;
CREATE TABLE IF NOT EXISTS `courselecturedetails` (
  `course_lecture_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for a lecture field(auto increament) ',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, Course id of the course',
  `course_section_id` varchar(1000) NOT NULL COMMENT 'FK, Lecture/Section of the course is stored',
  `course_lecture_id` varchar(1000) NOT NULL COMMENT 'Lecture id of the Section',
  `course_lecture_title` varchar(1000) NOT NULL COMMENT 'Lecture id of the module present in Section',
  `course_lecture_description` varchar(5000) NOT NULL COMMENT 'Description of a module',
  `is_course_lecture_completed` text NOT NULL COMMENT 'Status whether it is completed or not',
  PRIMARY KEY (`course_lecture_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COMMENT='This table stores the modules present in the lectures/Sectio';

--
-- Dumping data for table `courselecturedetails`
--

INSERT INTO `courselecturedetails` (`course_lecture_details_id`, `course_id`, `course_section_id`, `course_lecture_id`, `course_lecture_title`, `course_lecture_description`, `is_course_lecture_completed`) VALUES
(1, '842155625327610000037', '5392391556254396', '2169241556254508', 'Introduction To The Certified Developer - Associate Course', 'Here we will be briefly discuss about the Certified Developer course.', ''),
(2, '842155625327610000037', '5392391556254396', '1154531556254594', 'Information For Students Who Have Completed The Solutions Architect Course', 'Here, we will be discuss about some Information For Students Who Have Completed The Solutions Architect Course.', ''),
(3, '842155625327610000037', '5392391556254396', '4042821556255029', 'How To Find The Resources For This Course.', 'Here, we will be learn about the How To Find The Resources For This Course.', ''),
(4, '842155625327610000037', '5392391556254396', '3457341556255139', 'The Free Alexa Skill For Amazon Echo', 'In this lecture, we will be talking about the Free Alexa Skill For Amazon Echo', ''),
(5, '842155625327610000037', '4637481556255314', '2989471556255370', 'EC2 101', 'In this lecture, we will be learn about EC2 101.', ''),
(6, '842155625327610000037', '4637481556255314', '3028861556255449', 'EC2 Lab', 'In this lecture, we will be learn about EC2 Lab.', ''),
(7, '842155625327610000037', '4637481556255314', '1066821556255506', 'Using Putty For SSH (Windows Users Only)', 'Here we will be learn about how to Using Putty For SSH (Windows Users Only)', ''),
(8, '842155625327610000037', '4637481556255314', '6917851556255549', 'Elastic Load Balancer', 'Here we will be talking about the Elastic Load Balancer.', ''),
(9, '842155625327610000037', '2079401556255647', '7896081556255679', 'Serverless 101', 'Here, we will be talking about Serverless 101', ''),
(10, '842155625327610000037', '2079401556255647', '3616811556255724', 'Lambda', 'Here, we will be talking about Lambda', ''),
(11, '842155625327610000037', '2079401556255647', '7595311556255756', 'API Gateway', 'Here, we will be talking about the API Gateway', ''),
(12, '842155625327610000037', '2079401556255647', '8234171556255802', 'Version Control With Lambda', 'Here, we will be learn about Version Control With Lambda', ''),
(13, '842155625327610000037', '6289071556255921', '6404781556255957', 'KMS 101', 'Here, we will be talking about the KMS 101', ''),
(14, '842155625327610000037', '6289071556255921', '5369431556255991', 'KMS API Calls', 'Here, we will be talking about KMS API Calls', ''),
(15, '842155625327610000037', '6289071556255921', '1107851556256021', 'KMS Envelope Encryption', 'Here, we will be learn about KMS Envelope Encryption', ''),
(16, '842155625327610000037', '7689191556256095', '498151556256132', 'SQS', 'In this lecture, we will be learn about SQS', ''),
(17, '842155625327610000037', '7689191556256095', '9748831556256178', 'SES vs SNS', 'Here, we will be talking about SES vs SNS', ''),
(18, '842155625327610000037', '7689191556256095', '1443271556256217', 'ElasticBeanstalk 101', 'Here, we will be talking about ElasticBeanstalk 101', ''),
(19, '925155628891110000000', '5343581556292444', '1553391556292924', 'Introduction', 'Student will be able to learn all the basic knowledge on the course php like syntax,install,variables,echo/print,operators,loops etc.,', ''),
(23, '245155649317410000013', '6404341556494769', '6039571556494788', 'Sprint', '', ''),
(24, '245155649317410000013', '6404341556494769', '9602361556494814', 'Product backog', '', ''),
(22, '245155649317410000013', '9336161556494698', '8958741556494744', 'Agile', 'Teams can use agile practices without the agile mindset. But it\'s the mindset, these themes, that transforms groups into high-performing teams, delivering amazing results for their customers.', ''),
(25, '601155654042710000000', '1982531556542735', '4540771556542792', 'Lecture 1', 'Java programming basics and About Concepts of java', ''),
(26, '486155657962310000013', '8221661556579908', '2077041556579931', 'Why learn a language?', 'Why learn a language?', ''),
(27, '486155657962310000013', '5886621556579942', '7667621556837187', 'Basic Learning', '', ''),
(28, '486155657962310000013', '8221661556579908', '3319561556837200', 'Basic', '', ''),
(29, '861155637969010000000', '9621271557156425', '3552471557156450', 'Intro', '', ''),
(30, '861155637969010000000', '9621271557156425', '1413611557156763', 'jfi;ll', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `coursepaymentdetails`
--

DROP TABLE IF EXISTS `coursepaymentdetails`;
CREATE TABLE IF NOT EXISTS `coursepaymentdetails` (
  `course_payment_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the payment details',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `payment_transaction_id` varchar(1000) NOT NULL COMMENT 'Transaction id of the transaction',
  `secret_key_for_transaction` varchar(1000) NOT NULL COMMENT 'unique key genearted for the transaction',
  `invoice_id` varchar(1000) NOT NULL COMMENT 'This is the name of the invoice file for the payment',
  `paid_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'It is the timestamp when the payment is made',
  `invoice_path_name` varchar(10000) NOT NULL COMMENT 'This stores the path of the invoice',
  `merchant_link_id` varchar(100) NOT NULL COMMENT 'the identifier between merchant and olcademy',
  PRIMARY KEY (`course_payment_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='This Table stores the payment details for a course that user buys';

--
-- Dumping data for table `coursepaymentdetails`
--

INSERT INTO `coursepaymentdetails` (`course_payment_details_id`, `user_id`, `payment_transaction_id`, `secret_key_for_transaction`, `invoice_id`, `paid_timestamp`, `invoice_path_name`, `merchant_link_id`) VALUES
(1, 10000037, '3e34c00f384e619be1ae', '$5$rounds=10000$yTG6VVByyOuESwaR$uBqlLRl4pjUw3VzpLD5dYy75VP8plDK/wvNmhnii2M/', 'INV1556309912', '2019-04-26 20:18:32', '', '608086'),
(2, 10000038, '85dd4f42ba9b5abad5d5', '$5$rounds=10000$P5mlftghaiIU4n4f$A8HPQ2CQBVU2FIvzdKFKXZdNmOoFG7j/u6mqRjYIHb1', 'INV1556311021', '2019-04-26 20:37:01', '', '608093'),
(3, 10000000, 'af1e00ea293b0f5b7893', '$5$rounds=10000$WEP3LXuANKlJeRA/$6sE11.c7fwRWN3D1rPbBRVe7vkrFvJxcLRaVEiyzXq2', 'INV1556311714', '2019-04-26 20:48:34', '', '608100'),
(4, 10000013, '5d2d5fcd19f1d387bacc', '$5$rounds=10000$7rshMxFITW3ZabbE$kYk8sHHn9OL4YkSnhxvG1TddIk3CeABHbK3Rrg10OA3', 'INV1556327510', '2019-04-27 01:11:50', '', 'pay_COUdh0Rvir0L1o'),
(5, 10000068, '12c6dc159a9b6a6ac086', '$5$rounds=10000$PgjKyNCly8p.AWac$9GCzuOOI1ZWaAJW4JV5PQMqRugrFhQn6dbuLzCzD3aC', 'INV1556614432', '2019-04-30 08:53:52', '', 'pay_CPo6fN8fZbiwVx'),
(6, 10000000, '1438acd49b9bdf802adb', '$5$rounds=10000$lqrNdurWkhrWDE1/$DmAwFEe8kjysq1c4ht7ew05u08O.IVZwg/9.B2ZP240', 'INV1556638734', '2019-04-30 15:38:54', '', '613353'),
(7, 10000037, '41498623c43db7361edc', '$5$rounds=10000$MycqICIq3bJMoBe5$P9Mfy5FjADwiAVNnHNYuemwQt9voTteMfEvQaS3Ygm4', 'INV1556697872', '2019-05-01 08:04:32', '', 'pay_CQBo6oSkfVXAtc'),
(8, 10000037, 'd43ef9e9a67f8e804713', '$5$rounds=10000$tnS1NwSLuMbJpUeH$gXl3XjefSs4rZTL.54W2aVtCKIDFo9884f.Tklfnjc/', 'INV1556697949', '2019-05-01 08:05:49', '', 'pay_CQBpT2kxT2EJ3G'),
(9, 10000037, 'ff8bce5837f579d862bd', '$5$rounds=10000$ujRVABAUBOSLncDo$Y2zwPOxb9FERcVxDV7qKZkpOv0fT9GNxIrva.AS8S50', 'INV1556712365', '2019-05-01 12:06:05', '', 'pay_CQFvG5cvBqgo8N'),
(10, 10000038, 'b84ae3aa9798f167978a', '$5$rounds=10000$0wbibC6HeyS1buvk$Y3rNp22oWgOWtPZWdRoTVTXoTmZHuYCEBtNyYT.sCnB', 'INV1556991926', '2019-05-04 17:45:26', '', '615675');

-- --------------------------------------------------------

--
-- Table structure for table `coursereferraldetails`
--

DROP TABLE IF EXISTS `coursereferraldetails`;
CREATE TABLE IF NOT EXISTS `coursereferraldetails` (
  `course_referral_id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'PK for the table auto_generated',
  `course_id` varchar(100) NOT NULL COMMENT 'PK of Course table',
  `course_referral_code` char(12) NOT NULL COMMENT 'Generated referral code',
  `course_referral_discount` int(2) NOT NULL COMMENT 'Discount of referral code (5-50%)',
  `course_referral_validity` varchar(24) NOT NULL COMMENT 'Validity of generate referral code (3 Days, 5 Days, 10 Days OR TillRegistrationEndDate)',
  `referral_to_promote` tinyint(1) NOT NULL COMMENT 'private or public referral code',
  `course_referral_code_generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'time at which the code is generated',
  PRIMARY KEY (`course_referral_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Stores all the generated referral code for entire course';

--
-- Dumping data for table `coursereferraldetails`
--

INSERT INTO `coursereferraldetails` (`course_referral_id`, `course_id`, `course_referral_code`, `course_referral_discount`, `course_referral_validity`, `referral_to_promote`, `course_referral_code_generation_timestamp`) VALUES
(1, '842155625327610000037', 'PXXLK9S3SELL', 20, '3 days', 1, '2019-04-26 20:10:07'),
(2, '486155657962310000013', 'Y38XX4EB12CN', 10, '10 days', 0, '2019-04-29 23:27:08'),
(3, '709155629242110000068', 'CP5Y9XEEIZH4', 30, '3 days', 0, '2019-04-30 10:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `courserequirements`
--

DROP TABLE IF EXISTS `courserequirements`;
CREATE TABLE IF NOT EXISTS `courserequirements` (
  `course_requirement_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of the course requirements added',
  `course_id` varchar(100) NOT NULL COMMENT 'Id of the course to which the requirement is belongs to',
  `course_requirement` varchar(1000) NOT NULL COMMENT 'course requirement description',
  PRIMARY KEY (`course_requirement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COMMENT='This table store the what is the course requirements or a prequisites for course content added by instructor through course dashboard ';

--
-- Dumping data for table `courserequirements`
--

INSERT INTO `courserequirements` (`course_requirement_id`, `course_id`, `course_requirement`) VALUES
(1, '643155619069510000038', 'Nothing is required,Just a hunger to learn'),
(2, '842155625327610000037', 'You will need to set up an AWS Account (you can use the free tier for this course) A Windows, Linux or Mac PC/Laptop Knowledge of at least 1 programming language (Php, Python, Ruby etc) is advantageous but not strictly required'),
(34, '925155628891110000000', 'When creating PHP pages, you can use the same program you use to create your HTML pages. variables, basic math, loops, functions and basic IF statements are same in PHP like other languagesc, c++ or java.'),
(60, '709155629242110000068', 'nothing'),
(58, '245155649317410000013', 'Knowledge of Waterfall Framework'),
(57, '245155649317410000013', 'Knowledge and SDLC'),
(56, '601155654042710000000', 'student should know atleast c,c++ languages to learn java they are the minimum things they should require.'),
(64, '486155657962310000013', 'Why learn a language?'),
(62, '332155663898110000000', 'Python installation, Python IDE'),
(63, '332155663898110000000', 'General Python Skills (knowledge up to functions)'),
(65, '361155718039510000013', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_count` int(50) NOT NULL AUTO_INCREMENT COMMENT 'pk, id for the row (Auto Increament) ',
  `trainer_id` int(50) NOT NULL COMMENT 'FK, user id of the instructor who have published the course',
  `trainer_name` varchar(100) NOT NULL COMMENT 'FK, name of the user who have published the course',
  `trainer_name_metaphone` varchar(100) NOT NULL COMMENT 'metaphone for trainer name',
  `course_id` varchar(100) NOT NULL COMMENT 'qunique course id for the course',
  `course_image_path` varchar(1000) NOT NULL COMMENT 'path of the course image',
  `course_title` varchar(1000) NOT NULL COMMENT 'Title of the course',
  `course_title_metaphone` varchar(1000) NOT NULL COMMENT 'metaphone for course title',
  `course_subtitle` varchar(1000) NOT NULL COMMENT 'Subtitle of the course',
  `course_subtitle_metaphone` varchar(5000) NOT NULL COMMENT 'metaphone for course subtitle',
  `currency` char(20) NOT NULL COMMENT 'Currency according to the country',
  `course_price` int(100) NOT NULL COMMENT 'price of the course',
  `course_description` varchar(5000) NOT NULL COMMENT 'Description of the course',
  `course_welcome_message` varchar(1000) NOT NULL COMMENT 'Welcome message',
  `course_completion_message` varchar(1000) NOT NULL COMMENT 'Congratulations message on finishing the course',
  `course_language` char(20) NOT NULL COMMENT 'Language in which the course will be taught',
  `level_of_course` varchar(50) NOT NULL COMMENT 'level of the course (begineer, hard etc.) ',
  `course_category` varchar(100) NOT NULL COMMENT 'category in which this course come in',
  `trainer_description` varchar(5000) NOT NULL COMMENT 'Description of the author who have published ths course',
  `course_video_path` varchar(5000) NOT NULL COMMENT 'Video link of the course',
  `course_access_platform_link` varchar(1000) NOT NULL COMMENT 'Id of the platform on which the lectures will take place',
  `course_access_platform_name` varchar(1000) NOT NULL COMMENT 'course access platform name ',
  `course_access_platform_id` varchar(1000) NOT NULL COMMENT 'Name of the platform',
  `course_status` int(255) NOT NULL DEFAULT '0' COMMENT 'status of the course',
  PRIMARY KEY (`course_count`),
  UNIQUE KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='This table stores the whole Description of the new courses that are added by instructor';

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_count`, `trainer_id`, `trainer_name`, `trainer_name_metaphone`, `course_id`, `course_image_path`, `course_title`, `course_title_metaphone`, `course_subtitle`, `course_subtitle_metaphone`, `currency`, `course_price`, `course_description`, `course_welcome_message`, `course_completion_message`, `course_language`, `level_of_course`, `course_category`, `trainer_description`, `course_video_path`, `course_access_platform_link`, `course_access_platform_name`, `course_access_platform_id`, `course_status`) VALUES
(1, 10000038, 'Shweta Lokhande', '', '643155619069510000038', 'default-images/course/dci.png', 'Software Manual Testing', '', 'A path to world of testing', '', 'INR', 3000, '<p>Manual Testing is a type of Software Testing where Testers manually execute test cases without using any automation tools. Manual Testing is the most primitive of all testing types and helps find bugs in the software system.Any new application must be manually tested before its testing can be automated. Manual Testing requires more effort but is necessary to check automation feasibility.Manual Testing does not require knowledge of any testing tool.Manual Testing is a type of Software Testing ..&nbsp;</p>', 'Dear Student,\n                Welcome to the course &quot;Software Manual Testing&quot;\n               I amÂ Prof.Shweta Lokhandeand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Software Manual Testing', 'ENGLISH', 'BEGINNER LEVEL', 'IT and Software', '<p>Manual Testing is a type of Software Testing where Testers manually execute test cases without</p>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">.</p>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">If you&rsquo;re writing test cases and still using excel to document them, check out&nbsp;<a style=\"color: #008da9; outline: 0px; text-decoration-line: none;\" href=\"https://www.testlodge.com/\">TestLodge</a>. We&nbsp;make it easy to write and organize&nbsp;test cases.</p>\n<h4 style=\"font-family: lato, calibri, arial, helvetica, sans-serif; line-height: 1.2em; margin: 24px 0px 12px; padding: 0px; font-size: 20.16px; color: #333333; background-color: #f8f8f8;\">Conduct The Tests</h4>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">Once the test cases are written and the testing environment is prepared, it&rsquo;s time to begin&nbsp;testing. Using TestLodge, you can follow the test cases and mark each test as &ldquo;passed&rdquo;, &ldquo;failed, or &ldquo;skipped&rdquo;. When doing manual testing, it&rsquo;s important to keep notes on what happens when a test fails. TestLodge makes it easy for you to add in these details directly during the test execution.</p>\n<h4 style=\"font-family: lato, calibri, arial, helvetica, sans-serif; line-height: 1.2em; margin: 24px 0px 12px; padding: 0px; font-size: 20.16px; color: #333333; background-color: #f8f8f8;\">Log Good Bug Reports</h4>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">In addition to actually testing, the tester is responsible for logging bugs. As&nbsp;you&nbsp;encounter bugs, you&nbsp;need to log information for the development team about the&nbsp;defect.&nbsp;<a style=\"color: #008da9; outline: 0px; text-decoration-line: none;\" href=\"https://blog.testlodge.com/how-to-write-a-good-bug-report/\">Writing good bug reports</a>&nbsp;helps you and your team. You&rsquo;ll save yourself time when answering questions about the bug later.</p>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">At it&rsquo;s core, a good bug report should have&nbsp;a strong title, steps to replicate the bug (often the test case steps), an expected &amp; actual result, and any relevant attachments that will help the development team under stand the issue (screenshots, screen recordings, export files, etc).</p>\n<h4 style=\"font-family: lato, calibri, arial, helvetica, sans-serif; line-height: 1.2em; margin: 24px 0px 12px; padding: 0px; font-size: 20.16px; color: #333333; background-color: #f8f8f8;\">Report On The Test Results</h4>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">After running tests, it&rsquo;s good to know the results of the tests at a high level.&nbsp;How many tests were run? How many tests failed? How many tests were skipped? TestLodge makes it easy to get a quick glance of these metrics.</p>\n<h2 style=\"font-family: lato, calibri, arial, helvetica, sans-serif; line-height: 1.2em; margin: 24px 0px 12px; padding: 0px; font-size: 1.2em; color: #333333; background-color: #f8f8f8;\">When And Why To Manual Test</h2>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">Manual testing requires a lot of effort. It&rsquo;s easy to just say &ldquo;lets skip it&rdquo; or &ldquo;lets automate it&rdquo;. But the truth is, it is imperative to building software because automated testing can&rsquo;t cover everything.</p>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">After all, humans will be using your software, therefore&nbsp;humans should be involved in&nbsp;testing your software. Manual testing is more likely to find and solve real usability issues than automated testing. It allows the tester to be flexible during the test and try different things on the fly.</p>\n<p style=\"margin: 0px; padding: 0px 0px 10px; font-size: 0.8125em; color: #333333; font-family: lato, calibri, arial, helvetica, sans-serif; background-color: #f8f8f8;\">This isn&rsquo;t to say automated testing is useless. Automated testing has it&rsquo;s own benefits and provides value in some areas where manual testing does not. But we&rsquo;ll save that for another post.</p>\n<h2 style=\"f', '', '123456789', 'skype software is required', '1', 1),
(2, 10000037, 'Shubham Awasthi', '', '842155625327610000037', 'temp/917615155625392910000037_hqdefault.jpg', 'AWS Certified Developer - Associate 2019', '', 'Cloud Guru', '', 'INR', 1000, '<p><span style=\"color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">Amazon Web Services - (AWS) Certification is fast becoming the must have certificate for any IT professional working with AWS. This course is designed to help you pass the NEW&nbsp;AWS Certified Developer Associate (CDA) June 2019&nbsp;Exam. Even if you have never logged in to the AWS platform before, by the end of our AWS training videos you will be able to take the CDA exam. No specific programming knowledge is needed (though knowing a language would be advantageous) and no prior AWS experience required.</span></p>\n<p><span style=\"color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">&nbsp;Please note,&nbsp;</span><strong style=\"box-sizing: border-box; color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">this is not a course to teach you how to code</strong><span style=\"color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">, this course is specifically designed on helping you to&nbsp;</span><strong style=\"box-sizing: border-box; color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">pass the &nbsp;AWS Certified Developer June 2019&nbsp;exam</strong><span style=\"color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">. All required code to do the exercises in this course is provided when you join the course (via Github).</span></p>\n<p><span style=\"color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">AWS are constantly evolving their platform, as 2019&nbsp;progresses we will continuously update this course with new content so you will never have to worry about missing out or failing the AWS certification test because of new content.</span></p>', 'Dear Student,\n                Welcome to the course &quot;AWS Certified Developer - Associate 2019&quot;\n               I amÂ Prof.Shubham Awasthiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in AWS Certified Developer - Associate 2019', 'ENGLISH', 'EXPERT LEVEL', 'IT and Software', '<p style=\"box-sizing: border-box; margin: 0px 0px 10.5px; color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">Shubham has worked in the IT industry for around 3 years, working with mission critical systems across a wide range of industries including financial services, telecommunications, government and healthcare.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10.5px; color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">He is passionate about cloud technology and knows first hand how important it is to keep your skills up to date so that you can get to work on the coolest projects out there.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10.5px; color: #29303b; font-family: \'Open Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">I teach Cloud because I know it. Inside and out. I\'ve worked as a systems administrator, developer, solutions architect &amp; managing director/general manager for some of the biggest companies in cloud. My courses are not just some other IT training course, delivered by some IT trainer. My background is very hands on. I live eat and breath cloud. I will teach you everything that I know. If you want some boring, high level and theoretical cloud training platform, then my courses are not for you!</p>', 'temp/572273155625396110000037_SampleVideo_1280x720_1mb.mp4', 'https://zoom.us/j/2300316964', 'skype software is required', '1', 1),
(4, 10000000, 'Rahul', '', '925155628891110000000', 'default-images/course/dci.png', 'PHP', '', 'php and its learning', '', 'INR', 2000, '<p class=\"para\" style=\"margin: 0px 0px 1.5rem; color: #333333; font-family: \'Fira Sans\', \'Source Sans Pro\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #f2f2f2;\"><acronym title=\"PHP: Hypertext Preprocessor\">PHP</acronym>&nbsp;(recursive acronym for&nbsp;<em style=\"text-rendering: optimizelegibility;\">PHP: Hypertext Preprocessor</em>) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.<span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">PHP code may be executed with a</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Command-line interface\" href=\"https://en.wikipedia.org/wiki/Command-line_interface\">command line interface</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">(CLI), embedded into</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"HTML\" href=\"https://en.wikipedia.org/wiki/HTML\">HTML</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">code, or it can be used in combination with various</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Web template system\" href=\"https://en.wikipedia.org/wiki/Web_template_system\">web template systems</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">, web content management systems, and</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Web framework\" href=\"https://en.wikipedia.org/wiki/Web_framework\">web frameworks</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">. PHP code is usually processed by a PHP</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Interpreter (computing)\" href=\"https://en.wikipedia.org/wiki/Interpreter_(computing)\">interpreter</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">implemented as a</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a class=\"mw-redirect\" style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Plugin (computing)\" href=\"https://en.wikipedia.org/wiki/Plugin_(computing)\">module</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">in a web server or as a</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><a style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Common Gateway Interface\" href=\"https://en.wikipedia.org/wiki/Common_Gateway_Interface\">Common Gateway Interface</a><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">(CGI) executable. The web server combines the results of the interpreted and executed PHP code, which may be any type of data, including images, with the generated web page. PHP can be used for many programming tasks outside of the web context, such as</span><span style=\"color: #222222; font-family: sans-serif; background-color: #ffffff; font-size: 14px;\">&nbsp;</span>&lt;a class=\"mw-redirect\" style=\"font-family: sans-serif; background: none; font-size: 14px; text-decoration-line: none; color: #0b0080;\" title=\"Computer software\" href=\"https://en.wikipedia.org/wiki/', 'Dear Student,\n                Welcome to the course &quot;PHP&quot;\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in PHP', 'ENGLISH', 'BEGINNER LEVEL', 'IT and Software', '<div class=\"mod\" lang=\"en-IN\" style=\"clear: none; padding-top: 16px; border-radius: 8px; padding-left: 16px; padding-right: 16px; color: #222222; font-family: arial, sans-serif; font-size: small;\" data-md=\"61\">\n<div class=\"LGOjhe\" style=\"overflow: hidden; padding-bottom: 20px;\" role=\"heading\" aria-level=\"3\" data-hveid=\"CAsQAQ\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375; padding-right: 8px;\">A&nbsp;<strong>PHP</strong>&nbsp;developer is responsible for writing server-side web application logic.&nbsp;<strong>PHP</strong>developers usually develop back-end components, connect the application with the other (often third-party) web services, and support the front-end developers by integrating their work with the application.</span></div>\n</div>\n<div class=\"g\" style=\"line-height: 1.2; font-family: arial, sans-serif; font-size: small; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: #222222;\">\n<p style=\"box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; border: 0px; vertical-align: baseline; min-height: 0px; min-width: 0px; line-height: 1.5em; font-size: 1.2em; color: #303030; font-family: \'Proxima Nova\', Arial, sans-serif;\">Writing a good job description and advertisement for a PHP developer requires attention to detail. When you are looking for an advanced PHP web developer, posting a generic web developer description in your job ad will bring numerous applications from people who may have little knowledge about good programming practices.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; border: 0px; vertical-align: baseline; min-height: 0px; min-width: 0px; line-height: 1.5em; font-size: 1.2em; color: #303030; font-family: \'Proxima Nova\', Arial, sans-serif;\">PHP is a difficult language to tame, and puts a greater than usual burden on the developer to ensure the application&rsquo;s stability and performance. This article will provide you with a sample PHP developer job description that will help you write a perfect job ad, and assure that you easily find and hire the person that matches your specific criteria.</p>\n<p>&nbsp;</p>\n<div data-hveid=\"CAsQAw\" data-ved=\"2ahUKEwjd6ZTehu7hAhUZT30KHanLCdwQFSgAMAF6BAgLEAM\">\n<div class=\"rc\" style=\"position: relative; clear: both; padding-bottom: 0px;\">&nbsp;</div>\n</div>\n</div>', '', 'https://zoom.us/j/yourid//2488187842', 'skype software is required', '1', 10),
(5, 10000068, 'Shweta lokhande', '', '709155629242110000068', 'default-images/course/dci.png', 'Power of  subconscious mind', '', 'Road to master your mind', '', 'INR', 1000, '<p><span style=\"color: #333333; font-family: Lora, serif; font-size: 16px;\">he untapped&nbsp;</span><strong style=\"color: #333333; font-family: Lora, serif; font-size: 16px;\">power of the subconscious mind</strong><span style=\"color: #333333; font-family: Lora, serif; font-size: 16px;\">&nbsp;can lead you to new success in your personal life and business life. Discovering how to turn your thoughts into positive and implementing the&nbsp;</span><a style=\"color: #45a9df; text-decoration-line: none; font-family: Lora, serif; font-size: 16px;\" href=\"https://www.jackcanfield.com/blog/using-the-law-of-attraction/\">law of attraction</a><span style=\"color: #333333; font-family: Lora, serif; font-size: 16px;\">&nbsp;into your daily life can take you to new heights.</span></p>', 'Dear Student,\n                Welcome to the course &quot;Power of  subconscious mind&quot;\n               I amÂ Prof.Shweta lokhandeand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Power of  subconscious mind', 'ENGLISH', 'BEGINNER LEVEL', 'Personal Development', '<p style=\"color: #333333; font-family: Lora, serif; font-size: 16px; line-height: 1.5625; margin: 0px 0px 25px; padding: 0px;\"><strong>Your Conscious Mind:</strong></p>\n<p style=\"color: #333333; font-family: Lora, serif; font-size: 16px; line-height: 1.5625; margin: 0px 0px 25px; padding: 0px;\">This is your awareness of your surroundings, your current thoughts and emotions, the physical sensations in your body, whether or not you&rsquo;re hungry, and so on. Your unconscious mind is any information that is below the threshold of your current awareness.</p>\n<p style=\"color: #333333; font-family: Lora, serif; font-size: 16px; line-height: 1.5625; margin: 0px 0px 25px; padding: 0px;\"><strong>Your Subconscious Mind:</strong></p>\n<p style=\"color: #333333; font-family: Lora, serif; font-size: 16px; line-height: 1.5625; margin: 0px 0px 25px; padding: 0px;\">Examples of your subconscious are memories, beliefs, fears and subjective maps of reality. The thing with your unconscious mind is it&rsquo;s very powerful and can, without your awareness, direct the course of what you do in your life.</p>\n<p style=\"color: #333333; font-family: Lora, serif; font-size: 16px; line-height: 1.5625; margin: 0px 0px 25px; padding: 0px;\">Because of this, you must learn to choose our thoughts effectively, because your thoughts, both conscious and unconscious, due to the Law of Attraction, are what are creating your current experience of reality&mdash;including your level of success in every area of your life&mdash;work, financial, relationships, health, and happiness.</p>', '', '123456789', 'skype software is required', '1', 1),
(6, 10000000, 'Rahul', '', '861155637969010000000', 'default-images/course/dci.png', 'Quantum Computers', '', '', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"Quantum Computers\"\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Quantum Computers', '', '', '', '', '', '1234567890', 'Hangout software is required', '2', 0),
(7, 10000013, 'Rashi', '', '245155649317410000013', 'temp/810208155649440110000013_landscape-4069581_1920.jpg', 'Introduction to Agile &amp; Scrum', '', 'What is Agile mindset?', '', 'INR', 1000, '<div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: small; margin: 0px; padding-left: 16px; padding-right: 16px; color: #222222; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\n<div data-hveid=\"CA0QCA\" data-ved=\"2ahUKEwiXl86K9fPhAhVFWxUIHVbRCa8QFSgAMAN6BAgNEAg\">\n<div class=\"rc\" style=\"position: relative;\">&nbsp;</div>\n</div>\n</div>\n<div class=\"mod\" style=\"clear: none; padding-top: 16px; border-radius: 8px; padding-left: 16px; padding-right: 16px; color: #222222; font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-md=\"61\">\n<div class=\"LGOjhe\" style=\"overflow: hidden; padding-bottom: 20px; text-align: left;\" role=\"heading\" aria-level=\"3\" data-hveid=\"CA0QBQ\"><span class=\"ILfuVd NA6bn\" style=\"font-size: 16px; line-height: 1.375; padding-right: 8px;\">Successful&nbsp;<em><strong>Agile</strong></em>&nbsp;development teams self-organize to achieve their goals. The key is teamwork and it is only accomplished when everyone involved in the process understands their own role. Soft&nbsp;<strong>skills</strong>, such as emotional intelligence, communication, and leadership, play a key role</span></div>\n</div>', 'Dear Student,\n                Welcome to the course &quot;Introduction to Agile &amp; Scrum&quot;\n               I amÂ Prof.Rashiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Introduction to Agile &amp; Scrum', 'HINDI', 'ALL LEVEL', 'IT and Software', '<ul class=\"i8Z77e\" style=\"margin: 0px; padding: 0px; border: 0px; color: #222222; font-family: arial, sans-serif; font-size: 16px;\">\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Remove Barriers and Keep the Team on Track. ...</li>\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Share Experiences and Encourages Collaboration. ...</li>\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Introducing Engineering Practices. ...</li>\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Communication and Good Listening Power. ...</li>\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Acting as a Coach for Team Development. ...</li>\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Flexibility and Persistence. ...</li>\n<li>&nbsp;</li>\n</ul>', '', '1', 'skype software is required', '1', 10),
(8, 10000000, 'Rahul', '', '601155654042710000000', 'default-images/course/dci.png', 'Java', '', 'OOPS Through Java', '', 'INR', 2000, '<p>In this course you will learn about oops concepts of java:1)Polymorphism</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2)abstraction</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3)Inheritance</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4)Encapsulatioin</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5)Class</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6)Object</p>\n<p>In this you will learn basics,introduction,JVM and its things in detailed info,methods in classses,constructors,arrrays,collections,strings etc., all these sort of things will be leaarnt breifly.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p>&nbsp;</p>', 'Dear Student,\n                Welcome to the course &quot;Java&quot;\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Java', 'ENGLISH', 'BEGINNER LEVEL', 'IT and Software', '<p>To run java we use platform like ECLLIPSE. Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse EclipseEclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse Eclipse</p>', '', 'https://zoom.us/j/2488187842', 'skype software is required', '1', 10),
(9, 10000013, 'Rashi', '', '949155657958710000013', 'default-images/course/dci.png', 'languages online', '', 'Learn', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"languages online\"\n               I amÂ Prof.Rashiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in languages online', '', '', '', '', '', '', '', '', 0),
(10, 10000013, 'Rashi', '', '486155657962310000013', 'temp/254741155657983610000013_Screen Shot 2019-03-21 at 17.18.24.png', 'language online', '', 'language helps to break down barriers', '', 'INR', 999, '<p><span style=\"font-family: verdana, helvetica, arial, sans-serif; font-size: 12px; background-color: #f8f8f8;\">ven a little knowledge of the language can make a difference in attitude when you meet people from other countries. Speaking another language helps to break down barriers.</span></p>\n<p class=\"bullet\" style=\"margin: 0px; padding: 0px 0px 1em 10px; font-size: 12px; background: url(\'../staticarchive/fcac7b2d1b76dcdde234ac11c5f3b8721a172b9a.gif\') 0px 6px no-repeat #f8f8f8; font-family: verdana, helvetica, arial, sans-serif;\">It can help you give an added advantage in your career if you work for an international firm or a company with international customers or contacts.</p>\n<p>&nbsp;</p>', 'Dear Student,\n                Welcome to the course &quot;language online&quot;\n               I amÂ Prof.Rashiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in language online', 'HINDI', 'BEGINNER LEVEL', 'Language', '<p><span style=\"font-family: verdana, helvetica, arial, sans-serif; font-size: 12px; background-color: #f8f8f8;\">You can learn a language in short, bite-sized sessions and you\'ll enjoy a sense of satisfaction from achieving short-term goals, such as learning how to say hello, introducing yourself or numbers&nbsp;</span></p>\n<p class=\"bullet\" style=\"margin: 0px; padding: 0px 0px 1em 10px; font-size: 12px; background: url(\'../staticarchive/fcac7b2d1b76dcdde234ac11c5f3b8721a172b9a.gif\') 0px 6px no-repeat #f8f8f8; font-family: verdana, helvetica, arial, sans-serif;\">It can help you give an added advantage in your career if you work for an international firm or a company with international customers or contacts.</p>\n<p>&nbsp;</p>', '', '1', 'skype software is required', '1', 4),
(11, 10000000, 'Rahul', '', '332155663898110000000', 'default-images/course/dci.png', 'Complete Python Bootcamp: Go from zero to hero in Python 3', '', 'Python', '', 'INR', 500, '<p>Welcome to the best online resource for learning how to use the Python programming Language for Time Series Analysis!</p>\r\n<p>This course will teach you everything you need to know to use Python for forecasting time series data to predict new future data points.</p>\r\n<p>We\'ll start off with the basics by teaching you how to work with and manipulate data using the NumPy and Pandas libraries with Python. Then we\'ll dive deeper into working with Pandas by learning about visualizations with the Pandas library and how to work with time stamped data with Pandas and Python.</p>\r\n<p>Then we\'ll begin to learn about the statsmodels library and its powerful built in Time&nbsp;Series Analysis Tools. Including learning about Error-Trend-Seasonality decomposition and basic Holt-Winters methods.</p>\r\n<p>Afterwards we\'ll get to the heart of the course, covering general forecasting models. We\'ll talk about creating AutoCorrelation and Partial AutoCorrelation charts and using them in conjunction with powerful ARIMA based models, including Seasonal ARIMA models and SARIMAX to include Exogenous data points.</p>\r\n<p>Afterwards we\'ll learn about state of the art Deep Learning techniques with Recurrent Neural Networks that use deep learning to forecast future data points.</p>\r\n<p>This course even covers Facebook\'s Prophet library, a simple to use, yet powerful Python library developed to forecast into the future with time series data.</p>\r\n<p>So what are you waiting for! Learn how to work with your time series data and forecast the future!</p>\r\n<p>We\'ll see you inside the course!</p>', 'Dear Student,\r\n                Welcome to the course &quot;Python&quot;\r\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\r\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  &lt;/p&gt;\r\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Python', 'ENGLISH', 'INTERMEDIATE LEVEL', 'IT and Software', '<div class=\"instructor--instructor__description--1A0ot\">\r\n<div class=\"instructor--instructor__description-content--1CtQI\" data-purpose=\"description-content\">\r\n<div>\r\n<p>Jose Marcial Portilla has a BS and MS in Mechanical Engineering from Santa Clara University and&nbsp;years of&nbsp;experience as a professional instructor and trainer for Data Science and programming. He has publications and patents in various fields such as microfluidics,&nbsp;materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data and he hopes to use his experience in teaching and data science to help other people learn the power of programming the&nbsp;ability to analyze data, as well as present the data in clear and beautiful visualizations. Currently he works as the Head of Data Science for Pierian Data Inc.&nbsp;and provides in-person data science and python programming training courses to employees working at top companies, including General Electric, Cigna, The New York Times, Credit Suisse, and many more.&nbsp;Feel free to contact him on LinkedIn for more information on in-person training sessions or group training sessions in Las Vegas, NV.</p>\r\n</div>\r\n</div>\r\n</div>', '', 'https://zoom.us/j/883503955', 'Zoom software is required', '3', 10),
(12, 10000000, 'Rahul', '', '276155664056010000000', 'default-images/course/dci.png', 'Ruby on Rails', '', '', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"Ruby on Rails\"\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Ruby on Rails', '', '', '', '', '', '', '', '', 0),
(13, 10000068, 'Shweta lokhande', '', '80155714881010000068', 'default-images/course/dci.png', 'Become what you think!!', '', '', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"Become what you think!!\"\n               I amÂ Prof.Shweta lokhandeand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Become what you think!!', '', '', '', '', '', '', '', '', 0),
(14, 10000037, 'Shubham Awasthi', '', '544155715442810000037', 'default-images/course/dci.png', 'java the more professional Language', '', '', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"java the more professional Language\"\n               I amÂ Prof.Shubham Awasthiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in java the more professional Language', '', '', '', '', '', '', '', '', 0),
(15, 10000013, 'Rashi', '', '361155718039510000013', 'temp/203149155718070510000013_Screen Shot 2019-03-15 at 10.36.02.png', 'Build your best future today', '', 'Career coach and career services', '', 'INR', 1999, '<p><span style=\"color: #2e3d49; font-family: Balboa, \'Open Sans\', Helvetica, Arial, Verdana, sans-serif; font-size: 29px;\">Personal career coach and career services</span></p>', 'Dear Student,\n                Welcome to the course \"Build your best future today\"\n               I amÂ Prof.Rashiand I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Build your best future today', 'HINDI', 'BEGINNER LEVEL', 'Personal Development', '<p><span style=\"color: #757575; font-family: \'Open Sans\', Helvetica, Arial, Verdana, sans-serif; font-size: 16px;\">Get a knowledgeable mentor who guides your learning and is focused on answering your questions, motivating you, and keeping you on track.</span></p>\n<aside class=\"sidebar\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 450px; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\" data-v-3e972069=\"\" data-v-ced2ed6c=\"\">\n<div class=\"advertising component\" style=\"box-sizing: border-box; overflow: hidden; display: flex; justify-content: center; align-items: center; z-index: 99; margin-top: 60px;\" data-v-351e114a=\"\" data-v-3e972069=\"\">\n<div id=\"YD_Sentence_300\" class=\"ydr-ad\" style=\"box-sizing: border-box; text-align: center;\" data-v-351e114a=\"\" data-google-query-id=\"CMuA-ef2h-ICFeaP7Qod6FsG9w\">&nbsp;</div>\n</div>\n</aside>\n<div class=\"entries\" style=\"box-sizing: border-box; color: #000000; font-family: \'Open Sans\', sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\" data-v-526d14c5=\"\" data-v-ced2ed6c=\"\">\n<div class=\"closing-section\" style=\"box-sizing: border-box; padding-top: 50px; padding-bottom: 50px;\" data-v-526d14c5=\"\" data-v-ced2ed6c=\"\">\n<p style=\"box-sizing: border-box; font-weight: 400; margin-top: 12px;\" data-v-526d14c5=\"\" data-v-ced2ed6c=\"\">The word usage examples above have been gathered from various sources to reflect current and historial usage. They do not represent the opinions of YourDictionary.com.</p>\n</div>\n<div class=\"related-content\" style=\"box-sizing: border-box; display: grid; grid-template-columns: 1fr 1fr; gap: 50px 50px;\" data-v-526d14c5=\"\" data-v-ced2ed6c=\"\">&nbsp;</div>\n</div>', '', '12121212', 'Zoom software is required', '3', 10),
(16, 10000000, 'Rahul', '', '548155749708210000000', 'default-images/course/dci.png', 'Blue Eyes Technology', '', '', '', '', 0, '', 'Dear Student,\n                Welcome to the course \"Blue Eyes Technology\"\n               I amÂ Prof.Rahuland I will be your instructor to this course.  I am really excited to have you as a part of my studentÂ pool.Â Â This course has easy-to-understand and informativeÂ materialÂ available for your reference.Â I really look forward to share with you the knowledge I have, give you the best guidance and help you get the best out of this course.\n    Letâ€™s start this amazing journey and make it an exhilarating, interesting, fun andÂ aÂ fulfilling one. I wish you â€œAllÂ the very bestâ€ and hope you gain all the confidence to achieve new highs after gaining knowledge from this course.Â  </p>\n    Thank you for enrolling into this course!', 'Congratulations on completing the course in Blue Eyes Technology', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coursesectioncomplete`
--

DROP TABLE IF EXISTS `coursesectioncomplete`;
CREATE TABLE IF NOT EXISTS `coursesectioncomplete` (
  `course_section_complete_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK,id for the feedback',
  `course_section_id` varchar(1000) NOT NULL COMMENT 'FK, Section id of the lecture',
  `course_batch_id` int(6) NOT NULL COMMENT 'FK, batch id of the batch',
  `course_id` varchar(200) NOT NULL COMMENT 'FK, course id of the course',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the student',
  `feedback_for_question1` text NOT NULL COMMENT 'Value of Question 1 feedback',
  `feedback_for_question2` text NOT NULL COMMENT 'Value of Question 2 feedback',
  `feedback_for_question3` text NOT NULL COMMENT 'Value of Question 3 feedback',
  `feedback_for_question4` text NOT NULL COMMENT 'Value of Question 4 feedback',
  `feedback_for_question5` text NOT NULL COMMENT 'Value of Question 5 feedback',
  `feedback_for_question6` text NOT NULL COMMENT 'Value of Question 6 feedback',
  `final_feedback` varchar(1000) NOT NULL COMMENT 'Feedback Text from the student ',
  `attendance` text NOT NULL COMMENT 'Attendence of the user for the lecture',
  `nature_of_comment` int(11) DEFAULT NULL COMMENT 'tells the user whether the comment is positive(1), negative(-1) or neutral(0)',
  `feedback_category` varchar(200) NOT NULL,
  PRIMARY KEY (`course_section_complete_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This table stores the feedback oof the lectures of a batch of a course';

--
-- Dumping data for table `coursesectioncomplete`
--

INSERT INTO `coursesectioncomplete` (`course_section_complete_id`, `course_section_id`, `course_batch_id`, `course_id`, `user_id`, `feedback_for_question1`, `feedback_for_question2`, `feedback_for_question3`, `feedback_for_question4`, `feedback_for_question5`, `feedback_for_question6`, `final_feedback`, `attendance`, `nature_of_comment`, `feedback_category`) VALUES
(1, '5392391556254396', 2, '842155625327610000037', 10000000, '5', '5', '5', '5', '5', '5', 'It was a awesome lecture', '1', 1, 'miscellaneous'),
(2, '5392391556254396', 3, '842155625327610000037', 10000068, '5', '5', '5', '5', '5', '5', '', '1', 1, 'miscellaneous'),
(3, '4637481556255314', 2, '842155625327610000037', 10000037, '5', '5', '5', '5', '5', '5', 'Yes, Overall lecture is so good.', '1', 0, 'miscellaneous');

-- --------------------------------------------------------

--
-- Table structure for table `coursesectiondays`
--

DROP TABLE IF EXISTS `coursesectiondays`;
CREATE TABLE IF NOT EXISTS `coursesectiondays` (
  `course_section_days_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the row (Auto Increament)',
  `course_id` varchar(50) NOT NULL COMMENT 'FK, course id of the course',
  `course_section_id` varchar(1000) NOT NULL COMMENT 'FK, Section/Lecture id of the lecture',
  `course_batch_id` int(255) NOT NULL COMMENT 'FK, batch id for the batch',
  `course_section_held_day` varchar(15) NOT NULL COMMENT 'day on which the lecture is taking place',
  `email_notification_status` int(6) NOT NULL COMMENT 'Status whether the email to notify about lecture (0, 1, 2 and 3)',
  `course_section_status` varchar(50) NOT NULL COMMENT 'Status whether the Lecture is ( Completed or Pending)',
  `course_section_complete_date` date NOT NULL COMMENT 'Complete Date of the lecture',
  `feedback_status` int(6) NOT NULL COMMENT 'Status whether email for Feedback notification is sent or not',
  `average_feedback_value` int(6) NOT NULL COMMENT 'It stores the %percentage Feedback for the lecture from all the students',
  `is_amount_transferred` varchar(50) NOT NULL COMMENT 'It stores Whether the transaction of amount for the lecture is (Completed or Pending)',
  PRIMARY KEY (`course_section_days_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='This table keeps the record of the lecture sof every batch of a course whether they are completed or not and the day when the lecture will start';

--
-- Dumping data for table `coursesectiondays`
--

INSERT INTO `coursesectiondays` (`course_section_days_id`, `course_id`, `course_section_id`, `course_batch_id`, `course_section_held_day`, `email_notification_status`, `course_section_status`, `course_section_complete_date`, `feedback_status`, `average_feedback_value`, `is_amount_transferred`) VALUES
(3, '842155625327610000037', '5392391556254396', 3, 'Monday', 3, 'Completed', '2019-05-06', 1, 100, 'Completed'),
(4, '842155625327610000037', '4637481556255314', 3, 'Wednesday', 3, 'Completed', '2019-05-08', 1, 100, 'Pending'),
(5, '842155625327610000037', '2079401556255647', 3, 'Friday', 3, 'Completed', '2019-05-10', 1, 0, 'Pending'),
(6, '842155625327610000037', '6289071556255921', 3, 'Monday', 0, 'Pending', '0000-00-00', 0, 0, 'Pending'),
(7, '842155625327610000037', '7689191556256095', 3, 'Wednesday', 0, 'Pending', '0000-00-00', 0, 0, 'Pending'),
(8, '842155625327610000037', '5275821556256252', 3, 'Friday', 0, 'Pending', '0000-00-00', 0, 0, 'Pending'),
(9, '842155625327610000037', '5392391556254396', 2, 'Sunday', 3, 'Completed', '2019-04-28', 1, 100, 'Completed'),
(10, '842155625327610000037', '4637481556255314', 2, 'Tuesday', 3, 'Completed', '2019-04-30', 1, 100, 'Completed'),
(11, '842155625327610000037', '2079401556255647', 2, 'Thursday', 3, 'Completed', '2019-05-02', 1, 100, 'Completed'),
(12, '842155625327610000037', '6289071556255921', 2, 'Saturday', 3, 'Completed', '2019-05-04', 1, 100, 'Completed'),
(13, '842155625327610000037', '7689191556256095', 2, 'Sunday', 3, 'Completed', '2019-05-05', 1, 100, 'Completed'),
(14, '842155625327610000037', '5275821556256252', 2, 'Tuesday', 3, 'Completed', '2019-05-07', 1, 100, 'Completed'),
(15, '643155619069510000038', '5782621556190891', 1, 'Monday', 0, 'Completed', '2019-05-06', 0, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `coursesectiondetails`
--

DROP TABLE IF EXISTS `coursesectiondetails`;
CREATE TABLE IF NOT EXISTS `coursesectiondetails` (
  `course_section_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for lectures(auto increament) ',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of a lecture of a particular course',
  `course_section_id` varchar(1000) NOT NULL COMMENT 'Unique lecture/Section id of a lecture of a course',
  `course_section_description` varchar(5000) NOT NULL COMMENT 'Description of a lecture is stored',
  `course_section_title` varchar(1000) NOT NULL COMMENT 'Title of the lecture is stored',
  PRIMARY KEY (`course_section_details_id`),
  UNIQUE KEY `course_section_id` (`course_section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='This Table stores the Details of the Section/Lectures for a course';

--
-- Dumping data for table `coursesectiondetails`
--

INSERT INTO `coursesectiondetails` (`course_section_details_id`, `course_id`, `course_section_id`, `course_section_description`, `course_section_title`) VALUES
(1, '643155619069510000038', '5782621556190891', 'Can apply for role of software tester or manual tester', 'Introduction'),
(2, '842155625327610000037', '5392391556254396', 'Here we will be introduce about AWS(Amazon Web Services) in basic way.', 'Introduction'),
(3, '842155625327610000037', '4637481556255314', 'Here, we will be talking about the EC2', 'Beginners Guide to EC2'),
(4, '842155625327610000037', '2079401556255647', 'Here, we will be learn about the Serverless Computing', 'Introduction to Serverless Computing'),
(5, '842155625327610000037', '6289071556255921', 'In this section, we will be talking about the KMS &amp; Encryption on AWS.', 'KMS &amp; Encryption on AWS'),
(6, '842155625327610000037', '7689191556256095', 'In this section, we will talking about some Other Amazon Services', 'Other Amazon Services'),
(7, '842155625327610000037', '5275821556256252', 'Here, we will be learn about how to Deploying Applications Using ElasticBeanstalk', 'Deploying Applications Using ElasticBeanstalk'),
(8, '925155628891110000000', '5343581556292444', 'In this Introduction a student will be able to know the basic knowledge of the course PHP.All the key terms or keywords will be covered  in this section.', 'Introduction'),
(11, '245155649317410000013', '9336161556494698', 'Defining the term â€œagile mindsetâ€ is difficult. Many agile practitioners use it without really being able to define it. ... Teams can use agile practices without the agile mindset. But it\'s the mindset, these themes, that transforms groups into high-performing teams, delivering amazing results for their customers.Aug 28, 2016', 'Agile Mindset'),
(12, '245155649317410000013', '6404341556494769', 'Defining the term â€œagile mindsetâ€ is difficult. Many agile practitioners use it without really being able to define it. ... Teams can use agile practices without the agile mindset. But it\'s the mindset, these themes, that transforms groups into high-performing teams, delivering amazing results for their customers.Aug 28, 2016', 'Backlogs'),
(13, '245155649317410000013', '8336781556494822', '', '1'),
(14, '245155649317410000013', '7909991556494827', '', '2'),
(15, '601155654042710000000', '1982531556542735', 'Introduction', 'Introduction'),
(16, '601155654042710000000', '8074021556542736', 'Introduction', 'Introduction'),
(17, '486155657962310000013', '8221661556579908', '', 'Introduction'),
(18, '486155657962310000013', '5886621556579942', 'Why learn a language?', 'Travel'),
(19, '332155663898110000000', '7599961556639674', 'Create their own applicatioons and games!', 'Introduction'),
(20, '861155637969010000000', '9621271557156425', '', 'Introduction');

-- --------------------------------------------------------

--
-- Table structure for table `courseshareonsocialmedia`
--

DROP TABLE IF EXISTS `courseshareonsocialmedia`;
CREATE TABLE IF NOT EXISTS `courseshareonsocialmedia` (
  `course_share_on_social_media_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'PK, keeps the count of the entries',
  `user_id` varchar(1000) NOT NULL COMMENT 'Id of the user',
  `name_of_platform` varchar(100) NOT NULL COMMENT 'Platform on which the course link was shared eg LinkedIn, Facebook',
  `timestamp_of_share` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The time on which the course was shared',
  `course_id` varchar(1000) NOT NULL COMMENT 'Id of the course which was shared',
  PRIMARY KEY (`course_share_on_social_media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This store the details for the no of time the courses is share and on which platform';

-- --------------------------------------------------------

--
-- Table structure for table `coursetargetaudiencedetails`
--

DROP TABLE IF EXISTS `coursetargetaudiencedetails`;
CREATE TABLE IF NOT EXISTS `coursetargetaudiencedetails` (
  `course_target_audience_details_id` int(200) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(100) NOT NULL,
  `course_target_audience_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`course_target_audience_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COMMENT='This table store the target audience content added by instructor through course dashboard ';

--
-- Dumping data for table `coursetargetaudiencedetails`
--

INSERT INTO `coursetargetaudiencedetails` (`course_target_audience_details_id`, `course_id`, `course_target_audience_description`) VALUES
(1, '643155619069510000038', 'Any person with keen to analyse things'),
(2, '842155625327610000037', 'AWS absolute beginners. No prior AWS experience necessary Existing developers People interested in hosting highly scalable, fault tolerant applications on the AWS cloud'),
(33, '925155628891110000000', 'anybody who has basic knowledge of programming'),
(57, '709155629242110000068', 'nothing'),
(54, '245155649317410000013', 'suitable to All'),
(55, '245155649317410000013', 'emotional intelligence, communication, and leadership, play a key role.'),
(53, '601155654042710000000', 'anybody who knows basic programming'),
(62, '486155657962310000013', 'All'),
(59, '332155663898110000000', 'Beginners who have never programmed before.'),
(60, '332155663898110000000', 'Programmers switching languages to Python.'),
(61, '332155663898110000000', 'Intermediate Python programmers who want to level up their skills'),
(63, '361155718039510000013', 'All');

-- --------------------------------------------------------

--
-- Table structure for table `coursewishlist`
--

DROP TABLE IF EXISTS `coursewishlist`;
CREATE TABLE IF NOT EXISTS `coursewishlist` (
  `course_wishlist_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for course wishlist',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of a course',
  `user_id` int(100) NOT NULL COMMENT 'FK, user id of the user',
  `course_batch_id` int(20) NOT NULL COMMENT 'FK,batch id of the batch of a course',
  PRIMARY KEY (`course_wishlist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='It keeps the record of the batches of courses wishlist by the user';

--
-- Dumping data for table `coursewishlist`
--

INSERT INTO `coursewishlist` (`course_wishlist_id`, `course_id`, `user_id`, `course_batch_id`) VALUES
(11, '709155629242110000068', 10000038, 5);

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumanswer`
--

DROP TABLE IF EXISTS `discussionforumanswer`;
CREATE TABLE IF NOT EXISTS `discussionforumanswer` (
  `discussion_forum_answer_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, Id of answers to the questions of discussion forum',
  `answer_response` varchar(200) NOT NULL COMMENT 'Response to the question asked',
  `user_id` varchar(50) NOT NULL COMMENT 'FK, id of an user who answered for the question',
  `discussion_forum_question_id` int(200) NOT NULL COMMENT 'FK, id for the questions asked ',
  `response_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The time of response',
  `tag_id` int(11) NOT NULL DEFAULT '0' COMMENT 'id of an user which he/she will be tagged to a comment',
  PRIMARY KEY (`discussion_forum_answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Answer to a particular question in discussion forum';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumanswerreview`
--

DROP TABLE IF EXISTS `discussionforumanswerreview`;
CREATE TABLE IF NOT EXISTS `discussionforumanswerreview` (
  `answer_review_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for an answer review',
  `discussion_forum_answer_id` int(11) NOT NULL COMMENT 'FK,id of an answer for which user liked or disliked',
  `user_id` int(11) NOT NULL COMMENT 'id of an user who liked or disliked',
  `like_or_dislike` varchar(11) NOT NULL COMMENT 'If liked stores like, if disliked stores dislike',
  PRIMARY KEY (`answer_review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the likes and dislikes given by user for a particular answer';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumfollowresponse`
--

DROP TABLE IF EXISTS `discussionforumfollowresponse`;
CREATE TABLE IF NOT EXISTS `discussionforumfollowresponse` (
  `follow_responses_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for a follow response ',
  `discussion_forum_question_id` int(20) NOT NULL COMMENT 'FK, id for a question',
  `user_id` varchar(50) NOT NULL COMMENT 'id of an user who followed',
  PRIMARY KEY (`follow_responses_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='DiscussionForumFollowResponse';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumquestions`
--

DROP TABLE IF EXISTS `discussionforumquestions`;
CREATE TABLE IF NOT EXISTS `discussionforumquestions` (
  `discussion_forum_question_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'PK, question id of the question',
  `discussion_forum_question` varchar(200) NOT NULL COMMENT 'Question Description',
  `user_id` varchar(50) NOT NULL COMMENT 'FK, user id of the user',
  `question_asked_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp When the question was asked',
  `course_id` varchar(100) NOT NULL COMMENT 'FK, course id of the course',
  PRIMARY KEY (`discussion_forum_question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores the questions from the description forum';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumreplies`
--

DROP TABLE IF EXISTS `discussionforumreplies`;
CREATE TABLE IF NOT EXISTS `discussionforumreplies` (
  `discussion_forum_replies_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of the replies made',
  `user_id` varchar(50) NOT NULL COMMENT 'id of an user who replied',
  `reply_message` varchar(50) NOT NULL COMMENT 'message the user is replied',
  `discussion_forum_answer_id` int(20) NOT NULL COMMENT 'answer id ',
  `replied_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'time at which the reply is made',
  PRIMARY KEY (`discussion_forum_replies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the replies done in discussion forum	';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumreportanswer`
--

DROP TABLE IF EXISTS `discussionforumreportanswer`;
CREATE TABLE IF NOT EXISTS `discussionforumreportanswer` (
  `report_answer_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of an reported answer details',
  `discussion_forum_answer_id` int(200) NOT NULL COMMENT 'FK, id of an answer which has been reported ',
  `user_id` int(11) NOT NULL COMMENT 'id of an user who reported',
  `report_answer_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'time at which the answer is reported',
  PRIMARY KEY (`report_answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Details of the answer which are reported in discussion forum ';

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumreportquestion`
--

DROP TABLE IF EXISTS `discussionforumreportquestion`;
CREATE TABLE IF NOT EXISTS `discussionforumreportquestion` (
  `reported_question_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of an reported question details',
  `discussion_forum_question_id` int(200) NOT NULL COMMENT 'FK, id of question which has been reported ',
  `user_id` int(200) NOT NULL COMMENT 'id of an user who reported',
  `reported_question_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'time at which the question is reported',
  PRIMARY KEY (`reported_question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Details of the question which are reported in discussion forum ';

-- --------------------------------------------------------

--
-- Table structure for table `doubtclearingsession`
--

DROP TABLE IF EXISTS `doubtclearingsession`;
CREATE TABLE IF NOT EXISTS `doubtclearingsession` (
  `doubt_clearing_session_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key for the doubt session (Auto Increament) ',
  `course_id` varchar(100) NOT NULL COMMENT 'FK,Course id of the course whose doubt session is made',
  `course_section_id` varchar(100) NOT NULL COMMENT 'FK, Lecture/Section id of the lecture for which the doubt session is made',
  `course_batch_id` int(6) NOT NULL COMMENT 'FK, batch id of the batch for which the doubt session is made',
  `doubt_clearing_session_day` varchar(20) NOT NULL COMMENT 'day on which the doubt session is to be held',
  `doubt_clearing_session_date` date NOT NULL COMMENT 'date on which the doubt session is going to be held',
  `doubt_clearing_session_time` varchar(20) NOT NULL COMMENT 'Start time of the doubt session',
  `email_notification_status` int(6) NOT NULL COMMENT 'Email status that if the user have been notified though mail(0,1,2,3) ',
  `doubt_section_status` varchar(20) NOT NULL COMMENT 'Status of the Lecture/Section whether it is completed or not (Completed or Peding) ',
  `feedback_status` int(6) NOT NULL COMMENT 'Status of the Lecture/Section whether its feedback has been given or not (Completed or Peding) ',
  `average_feedback_value` int(6) NOT NULL COMMENT 'Percentage(%) Feedback Value that is calculated from the feedback given by all the usersm (0-100) ',
  `amount_transfer_status` varchar(20) NOT NULL COMMENT 'Status of the Amount of the particular Lecture/Section (Completed or Pending',
  PRIMARY KEY (`doubt_clearing_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the details of the doubt session of a batch of a course';

-- --------------------------------------------------------

--
-- Table structure for table `enrolledcoursedetails`
--

DROP TABLE IF EXISTS `enrolledcoursedetails`;
CREATE TABLE IF NOT EXISTS `enrolledcoursedetails` (
  `enrolled_course_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for course(auto increament) ',
  `user_id` int(200) NOT NULL COMMENT 'FK, unique user id who buys the particular course',
  `course_progress` int(200) NOT NULL COMMENT 'Progress of the course in percentage',
  `rating_by_enrolled_student` float NOT NULL DEFAULT '0' COMMENT 'Rating given by the enrolled student',
  `course_id` varchar(200) NOT NULL COMMENT 'FK, unique course id of a course',
  `review_given_by_student` varchar(2000) NOT NULL COMMENT 'reviews given by user for the course',
  `course_status` varchar(50) NOT NULL COMMENT 'status of the course, whether it is running or completed',
  `course_batch_id` int(20) NOT NULL COMMENT 'FK, batch id of the batch of a course in which user have enrolled',
  `coupon_applied` varchar(50) NOT NULL COMMENT 'Referral Code Applied while buying the course',
  `coupon_type` varchar(20) NOT NULL COMMENT 'Type of the Coupom',
  `user_enrolled_date` date NOT NULL COMMENT 'date on which the user has enrolled in this course',
  `payment_transaction_id` varchar(1000) NOT NULL COMMENT 'Transaction id of the transaction',
  PRIMARY KEY (`enrolled_course_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Table to store student who have enrolled in a course';

--
-- Dumping data for table `enrolledcoursedetails`
--

INSERT INTO `enrolledcoursedetails` (`enrolled_course_details_id`, `user_id`, `course_progress`, `rating_by_enrolled_student`, `course_id`, `review_given_by_student`, `course_status`, `course_batch_id`, `coupon_applied`, `coupon_type`, `user_enrolled_date`, `payment_transaction_id`) VALUES
(1, 10000037, 0, 0, '842155625327610000037', '', 'Running', 2, '1', 'course', '2019-04-27', '3e34c00f384e619be1ae'),
(2, 10000038, 0, 4.5, '842155625327610000037', '', 'Running', 2, '1', 'course', '2019-04-27', '85dd4f42ba9b5abad5d5'),
(3, 10000000, 0, 0, '842155625327610000037', 'amnsc cmns mnxvc', 'Running', 2, '1', 'course', '2019-04-27', 'af1e00ea293b0f5b7893'),
(4, 10000013, 0, 2.9, '842155625327610000037', 'Great course', 'Running', 3, '', '', '2019-04-27', '5d2d5fcd19f1d387bacc'),
(5, 10000068, 0, 0, '842155625327610000037', '', 'Running', 3, '', '', '2019-04-30', '12c6dc159a9b6a6ac086'),
(6, 10000000, 0, 0, '709155629242110000068', '', 'Running', 5, '', '', '2019-04-30', '1438acd49b9bdf802adb'),
(7, 10000037, 0, 0, '709155629242110000068', '', 'Running', 5, '', '', '2019-05-01', '41498623c43db7361edc'),
(9, 10000037, 0, 0, '643155619069510000038', '', 'Running', 5, '', '', '2019-05-01', 'ff8bce5837f579d862bd'),
(10, 10000038, 0, 0, '709155629242110000068', '', 'Running', 5, '', '', '2019-05-04', 'b84ae3aa9798f167978a');

-- --------------------------------------------------------

--
-- Table structure for table `faqreviews`
--

DROP TABLE IF EXISTS `faqreviews`;
CREATE TABLE IF NOT EXISTS `faqreviews` (
  `faq_reviews_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for faq reviews',
  `user_id` int(11) NOT NULL COMMENT 'FK, id of user who gave review',
  `faq_review` varchar(11) NOT NULL COMMENT 'Review given by user',
  PRIMARY KEY (`faq_reviews_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This Table stores The questions and answers that are Frequently asked by the user for the website';

-- --------------------------------------------------------

--
-- Table structure for table `frequentlyaskedquestions`
--

DROP TABLE IF EXISTS `frequentlyaskedquestions`;
CREATE TABLE IF NOT EXISTS `frequentlyaskedquestions` (
  `frequently_asked_questions_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the FAQ',
  `frequently_asked_question` text NOT NULL COMMENT 'Question for the FAQ',
  `frequently_asked_questions_answers` text NOT NULL COMMENT 'Answer for the FAQ',
  `frequently_asked_questions_topic` varchar(255) NOT NULL COMMENT 'Topic of the FAQ',
  PRIMARY KEY (`frequently_asked_questions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the Frequently asked questions and answer according to the topic';

-- --------------------------------------------------------

--
-- Table structure for table `historyofuserpasswords`
--

DROP TABLE IF EXISTS `historyofuserpasswords`;
CREATE TABLE IF NOT EXISTS `historyofuserpasswords` (
  `history_of_user_passwords_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the table, Auto incremented',
  `user_id` int(11) NOT NULL COMMENT 'Contains the User Id for whom the password was changed',
  `password_changed_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp at which the password was updated',
  `changed_password` text NOT NULL COMMENT 'Changed password is stored here',
  PRIMARY KEY (`history_of_user_passwords_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores history of user passwords';

-- --------------------------------------------------------

--
-- Table structure for table `internshipapplicantdetails`
--

DROP TABLE IF EXISTS `internshipapplicantdetails`;
CREATE TABLE IF NOT EXISTS `internshipapplicantdetails` (
  `internship_applicant_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of the applicants',
  `internship_applicant_name` varchar(255) NOT NULL COMMENT 'name of the applicant',
  `internship_applicant_photo` text NOT NULL COMMENT 'photo of the applicant',
  `skills` text NOT NULL COMMENT 'skills of the applicant',
  `resume` text NOT NULL COMMENT 'resume of the applicant',
  `location` varchar(255) NOT NULL COMMENT 'location of the applicant',
  `college` varchar(255) NOT NULL COMMENT 'college name of the applicant',
  `internship_applicant_email` varchar(255) NOT NULL COMMENT 'email id of applicant',
  `degree` varchar(255) NOT NULL COMMENT 'highest degree persued by the applicant',
  `applied_category` varchar(255) NOT NULL COMMENT 'intership category the applicant applied for',
  `work_sample` text NOT NULL,
  `applied_date` datetime NOT NULL COMMENT 'internship applied date',
  `internship_id` int(200) NOT NULL COMMENT 'FK, id of the internship applied ',
  `status_of_application` int(200) NOT NULL COMMENT 'status of the application',
  `is_intern_selected` varchar(255) NOT NULL COMMENT 'intern selection status',
  `reasons_for_rejection` varchar(255) NOT NULL COMMENT 'rejection message from HR',
  `is_offer_letter_issued` int(200) NOT NULL COMMENT 'Offer letter is provided or not (1 or 0) ',
  `is_internship_certificate_issued` int(200) NOT NULL COMMENT 'Certificate is provided or not (1 or 0) ',
  `is_lor_issued` int(200) NOT NULL COMMENT 'LOR(Letter of Recommendation) is provided or not (1 or 0) ',
  `is_ppo_issued` int(200) NOT NULL COMMENT 'pre placement offer is provided or not (1 or 0) ',
  `champion` int(200) NOT NULL,
  `date_hired_on` date NOT NULL COMMENT 'intern hired date',
  PRIMARY KEY (`internship_applicant_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the details of internship applicants';

-- --------------------------------------------------------

--
-- Table structure for table `internshipcategory`
--

DROP TABLE IF EXISTS `internshipcategory`;
CREATE TABLE IF NOT EXISTS `internshipcategory` (
  `internship_category_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK,id for the internship category',
  `title` varchar(255) NOT NULL COMMENT 'Title of the internship',
  `updated_timestamp` datetime NOT NULL COMMENT 'Latest timestamp of the updation',
  `is_deleted_status` int(200) NOT NULL COMMENT 'when the internship expires the deletebit is set as a flag so no one can apply in that internship',
  PRIMARY KEY (`internship_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It store the internship category such as it is for web development or android etc';

-- --------------------------------------------------------

--
-- Table structure for table `internshipcreationdetails`
--

DROP TABLE IF EXISTS `internshipcreationdetails`;
CREATE TABLE IF NOT EXISTS `internshipcreationdetails` (
  `internship_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, for uniquely identifying an internship',
  `internship_role_title` varchar(255) NOT NULL COMMENT 'role of the intern',
  `internship_category` varchar(255) NOT NULL COMMENT 'category or department of the internship',
  `company_name` varchar(255) NOT NULL COMMENT 'name of company',
  `location` varchar(255) NOT NULL COMMENT 'location where internship will be',
  `internship_type` varchar(255) NOT NULL COMMENT 'Type of an internship (full time, part time etc) ',
  `intership_start_date` varchar(255) NOT NULL COMMENT 'start date of an internship',
  `duration` varchar(255) NOT NULL COMMENT 'duration of internship ex:1month,3months',
  `stipend` varchar(255) NOT NULL COMMENT 'Stipend for the internship',
  `posted_date` datetime NOT NULL COMMENT 'internship posted date',
  `apply_by` datetime NOT NULL COMMENT 'last date for internship aplly',
  `about_internship` text NOT NULL COMMENT 'internship details',
  `no_of_interns_needed` varchar(255) NOT NULL COMMENT 'Total number of openings',
  `perks` text NOT NULL COMMENT 'extra benefits apart from stipend',
  `updated_on` datetime NOT NULL COMMENT 'when internship details are last updated',
  `is_deleted_status` int(200) NOT NULL COMMENT 'whether internship is deleted(1) or not (0) ',
  `is_approved_status` int(200) NOT NULL COMMENT 'whether internship is approved(1) or not (0)  ',
  `reasons_for_rejection` text NOT NULL COMMENT 'reasons for rejection sent by moderator',
  `internship_posted_count` int(200) NOT NULL COMMENT ' no of times internship posted',
  PRIMARY KEY (`internship_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='All the new and old internship details are stored';

-- --------------------------------------------------------

--
-- Table structure for table `interntaskandattendancedetails`
--

DROP TABLE IF EXISTS `interntaskandattendancedetails`;
CREATE TABLE IF NOT EXISTS `interntaskandattendancedetails` (
  `intern_task_attendance_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the attendence details',
  `internship_applicant_details_id` int(200) NOT NULL COMMENT 'FK, intern id of te intern',
  `date` date NOT NULL COMMENT 'Date on which task is assigned',
  `task_assigned` text NOT NULL COMMENT 'Stores What the task is assigned',
  `task_performed` text NOT NULL COMMENT 'How the task was performed by applicant',
  `is_present_status` int(200) NOT NULL COMMENT 'Status of the presence of the intern (0 or 1) ',
  PRIMARY KEY (`intern_task_attendance_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table keeps the record of the interns atendence and tasks assignment and performance ';

-- --------------------------------------------------------

--
-- Table structure for table `keywordsfromcoursecontent`
--

DROP TABLE IF EXISTS `keywordsfromcoursecontent`;
CREATE TABLE IF NOT EXISTS `keywordsfromcoursecontent` (
  `keywords_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, count of the rows ',
  `course_id` varchar(100) NOT NULL COMMENT 'id of the course for which keyword is mentioned',
  `extracted_keyword_from_course` varchar(100) NOT NULL COMMENT 'The keyword which was extracted from the course content',
  `keyword_metaphone` varchar(100) NOT NULL COMMENT 'metaphone for keywords',
  PRIMARY KEY (`keywords_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='stores the extracted keywords from all the content of the uploaded courses on the site';

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

DROP TABLE IF EXISTS `logindetails`;
CREATE TABLE IF NOT EXISTS `logindetails` (
  `login_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id of the login user',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'record time of user active',
  PRIMARY KEY (`login_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='This table keeps the record of online user';

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`login_details_id`, `user_id`, `last_activity`) VALUES
(1, 10000000, '2019-05-10 15:19:27'),
(2, 10000001, '2019-04-26 05:38:35'),
(3, 10000038, '2019-05-06 06:50:33'),
(4, 10000037, '2019-05-10 12:31:30'),
(5, 10000068, '2019-05-08 12:22:12'),
(6, 10000013, '2019-05-10 13:57:39'),
(7, 10000047, '2019-05-06 14:08:43'),
(8, 10000020, '2019-04-29 15:35:33'),
(9, 10000002, '2019-05-06 10:54:19'),
(10, 10000016, '2019-05-09 12:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `myvotes`
--

DROP TABLE IF EXISTS `myvotes`;
CREATE TABLE IF NOT EXISTS `myvotes` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(200) NOT NULL,
  `answer_id` int(100) NOT NULL,
  `vote` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notificationfeedback`
--

DROP TABLE IF EXISTS `notificationfeedback`;
CREATE TABLE IF NOT EXISTS `notificationfeedback` (
  `notification_feedback_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK,  id  to show the notification to the student',
  `user_id` varchar(20) NOT NULL COMMENT 'FK, user id of the student',
  `course_id` varchar(100) NOT NULL COMMENT 'FK, Course id of the course',
  `course_section_id` varchar(50) NOT NULL COMMENT 'FK, lecture/Section id of the lecture',
  `unique_key` varchar(50) NOT NULL COMMENT 'FK, unique key that has to matched from the notification_main table',
  `course_batch_id` int(10) NOT NULL COMMENT 'FK, batch id of the batch',
  `feedback_mark_as_read` int(6) NOT NULL COMMENT 'it shows whether notification is read by the Instructor (0 or 1) ',
  PRIMARY KEY (`notification_feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='This Table stores the Feedback Notification of the lecture of a course for the student';

--
-- Dumping data for table `notificationfeedback`
--

INSERT INTO `notificationfeedback` (`notification_feedback_id`, `user_id`, `course_id`, `course_section_id`, `unique_key`, `course_batch_id`, `feedback_mark_as_read`) VALUES
(1, '10000037', '842155625327610000037', '5392391556254396', '5cc54164a8536', 2, 0),
(2, '10000038', '842155625327610000037', '5392391556254396', '5cc54164a8536', 2, 0),
(3, '10000000', '842155625327610000037', '5392391556254396', '5cc54164a8536', 2, 0),
(4, '10000037', '842155625327610000037', '4637481556255314', '5cc7e465257f0', 2, 0),
(5, '10000038', '842155625327610000037', '4637481556255314', '5cc7e465257f0', 2, 0),
(6, '10000000', '842155625327610000037', '4637481556255314', '5cc7e465257f0', 2, 0),
(7, '10000037', '842155625327610000037', '2079401556255647', '5cca8764d6054', 2, 0),
(8, '10000038', '842155625327610000037', '2079401556255647', '5cca8764d6054', 2, 0),
(9, '10000000', '842155625327610000037', '2079401556255647', '5cca8764d6054', 2, 0),
(10, '10000037', '842155625327610000037', '6289071556255921', '5ccd2a652ed36', 2, 0),
(11, '10000038', '842155625327610000037', '6289071556255921', '5ccd2a652ed36', 2, 0),
(12, '10000000', '842155625327610000037', '6289071556255921', '5ccd2a652ed36', 2, 0),
(13, '10000037', '842155625327610000037', '7689191556256095', '5cce7be620ebd', 2, 0),
(14, '10000038', '842155625327610000037', '7689191556256095', '5cce7be620ebd', 2, 0),
(15, '10000000', '842155625327610000037', '7689191556256095', '5cce7be620ebd', 2, 0),
(16, '10000013', '842155625327610000037', '5392391556254396', '5cd005a4da632', 3, 0),
(17, '10000068', '842155625327610000037', '5392391556254396', '5cd005a4da632', 3, 0),
(18, '10000037', '842155625327610000037', '5275821556256252', '5cd11ee5e9bba', 2, 0),
(19, '10000038', '842155625327610000037', '5275821556256252', '5cd11ee5e9bba', 2, 0),
(20, '10000000', '842155625327610000037', '5275821556256252', '5cd11ee5e9bba', 2, 0),
(21, '10000013', '842155625327610000037', '4637481556255314', '5cd2a8a556e8f', 3, 0),
(22, '10000068', '842155625327610000037', '4637481556255314', '5cd2a8a556e8f', 3, 0),
(23, '10000013', '842155625327610000037', '2079401556255647', '5cd54ba3de011', 3, 0),
(24, '10000068', '842155625327610000037', '2079401556255647', '5cd54ba3de011', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationinstructor`
--

DROP TABLE IF EXISTS `notificationinstructor`;
CREATE TABLE IF NOT EXISTS `notificationinstructor` (
  `notification_instructor_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, notification id (Auto Increament) ',
  `user_id` int(10) NOT NULL COMMENT 'FK, user of the user',
  `course_id` varchar(100) NOT NULL COMMENT 'FK, Course id of the course',
  `unique_key` varchar(100) NOT NULL COMMENT 'FK, Unique key that matches the unique key from notification_main table',
  `notification_instructor_status` int(6) NOT NULL COMMENT 'Show the status of the course',
  `instructor_mark_as_read` int(6) NOT NULL COMMENT 'it shows whether notification is read by the Instructor (0 or 1) ',
  PRIMARY KEY (`notification_instructor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='This Table stores the notification of course approval for the Instructor';

--
-- Dumping data for table `notificationinstructor`
--

INSERT INTO `notificationinstructor` (`notification_instructor_id`, `user_id`, `course_id`, `unique_key`, `notification_instructor_status`, `instructor_mark_as_read`) VALUES
(1, 10000038, '643155619069510000038', '5cc30d18895a1', 10, 0),
(2, 10000000, '925155628891110000000', '5cc328ca857fd', 10, 0),
(3, 10000037, '842155625327610000037', '5cc364376c717', 10, 0),
(4, 10000000, '925155628891110000000', '5cc4700776896', 10, 0),
(5, 10000068, '709155629242110000068', '5cc470698b980', 10, 0),
(6, 10000000, '601155654042710000000', '5cc6f6ddb6444', 10, 0),
(7, 10000013, '486155657962310000013', '5cc7873c8c3c2', 10, 0),
(8, 10000000, '332155663898110000000', '5cc8721b1333b', 10, 0),
(9, 10000013, '245155649317410000013', '5cc9942b5caaf', 10, 0),
(10, 0, '', '5cd0af2d527a1', 4, 0),
(11, 10000013, '361155718039510000013', '5cd2b447101cd', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationinstructorbuy`
--

DROP TABLE IF EXISTS `notificationinstructorbuy`;
CREATE TABLE IF NOT EXISTS `notificationinstructorbuy` (
  `notification_instructor_buy_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the Instructor',
  `course_id` varchar(300) NOT NULL COMMENT 'FK, course id of the course',
  `course_batch_id` int(11) NOT NULL COMMENT 'FK, batch id of the batch',
  `unique_key` varchar(50) NOT NULL COMMENT 'unique key of the notification',
  `notification_instructor_text` varchar(500) NOT NULL COMMENT 'Notification text',
  `notification_instructor_mark_as_read` int(11) NOT NULL COMMENT 'status that notification is read or unread (0,1)',
  PRIMARY KEY (`notification_instructor_buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notificationinstructorbuy`
--

INSERT INTO `notificationinstructorbuy` (`notification_instructor_buy_id`, `user_id`, `course_id`, `course_batch_id`, `unique_key`, `notification_instructor_text`, `notification_instructor_mark_as_read`) VALUES
(1, 10000037, '842155625327610000037', 2, '5cc36798350f5', 'Shubham Awasthi has purchased your course AWS Certified Developer - Associate 2019.', 0),
(2, 10000037, '842155625327610000037', 2, '5cc36bed5a30f', 'Shweta Lokhande has purchased your course AWS Certified Developer - Associate 2019.', 0),
(3, 10000037, '842155625327610000037', 2, '5cc36ea2c5fcf', 'Rahul has purchased your course AWS Certified Developer - Associate 2019.', 0),
(4, 10000037, '842155625327610000037', 3, '5cc3ac5661d7d', 'Rashi has purchased your course AWS Certified Developer - Associate 2019.', 0),
(5, 10000037, '842155625327610000037', 3, '5cc80d206d114', 'Shweta lokhande has purchased your course AWS Certified Developer - Associate 2019.', 0),
(6, 10000068, '709155629242110000068', 5, '5cc86c0e99386', 'Rahul has purchased your course Power of  subconscious mind.', 0),
(7, 10000068, '709155629242110000068', 5, '5cc95310cfc9a', 'Shubham Awasthi has purchased your course Power of  subconscious mind.', 0),
(8, 10000068, '709155629242110000068', 5, '5cc9535dbf537', 'Shubham Awasthi has purchased your course Power of  subconscious mind.', 0),
(9, 10000038, '643155619069510000038', 5, '5cc98bad61fe7', 'Shubham Awasthi has purchased your course Software Manual Testing.', 0),
(10, 10000068, '709155629242110000068', 5, '5ccdcfb629933', 'Shweta Lokhande has purchased your course Power of  subconscious mind.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationlecture`
--

DROP TABLE IF EXISTS `notificationlecture`;
CREATE TABLE IF NOT EXISTS `notificationlecture` (
  `notification_lecture_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'PK, id  to show the notification to the student',
  `user_id` varchar(20) NOT NULL COMMENT 'FK, user id of the student ',
  `course_id` varchar(50) NOT NULL COMMENT 'FK, Course id of the course',
  `course_section_id` varchar(50) NOT NULL COMMENT 'FK, Section id of the section',
  `unique_key` varchar(50) NOT NULL COMMENT 'FK, unique key that has to matched from the notification_main table',
  `notification_lecture_text` varchar(300) NOT NULL COMMENT 'Text of the notification to show',
  `course_batch_id` int(10) NOT NULL COMMENT 'FK, batch id of the batch',
  `lecture_mark_as_read` int(6) NOT NULL COMMENT 'it shows whether notification is read by the Instructor (0 or 1)',
  PRIMARY KEY (`notification_lecture_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COMMENT='This Table stores the notification of the lectures of the course for the student';

--
-- Dumping data for table `notificationlecture`
--

INSERT INTO `notificationlecture` (`notification_lecture_id`, `user_id`, `course_id`, `course_section_id`, `unique_key`, `notification_lecture_text`, `course_batch_id`, `lecture_mark_as_read`) VALUES
(1, '10000000', '842155625327610000037', '5392391556254396', '5cc3ccbf3d375', 'Your lecture will start within 24 hours', 2, 0),
(2, '10000038', '842155625327610000037', '5392391556254396', '5cc3ccbf3d375', 'Your lecture will start within 24 hours', 2, 0),
(3, '10000037', '842155625327610000037', '5392391556254396', '5cc3ccbf3d375', 'Your lecture will start within 24 hours', 2, 0),
(4, '10000000', '842155625327610000037', '5392391556254396', '5cc47583a63c0', 'Your lecture will start within 12 hours', 2, 0),
(5, '10000038', '842155625327610000037', '5392391556254396', '5cc47583a63c0', 'Your lecture will start within 12 hours', 2, 0),
(6, '10000037', '842155625327610000037', '5392391556254396', '5cc47583a63c0', 'Your lecture will start within 12 hours', 2, 0),
(7, '10000000', '842155625327610000037', '5392391556254396', '5cc5173653cc6', 'Your lecture will start after half hour', 2, 0),
(8, '10000038', '842155625327610000037', '5392391556254396', '5cc5173653cc6', 'Your lecture will start after half hour', 2, 0),
(9, '10000037', '842155625327610000037', '5392391556254396', '5cc5173653cc6', 'Your lecture will start after half hour', 2, 0),
(10, '10000000', '842155625327610000037', '4637481556255314', '5cc66fbb29fd8', 'Your next lecture will start after 24 hours', 2, 0),
(11, '10000038', '842155625327610000037', '4637481556255314', '5cc66fbb29fd8', 'Your next lecture will start after 24 hours', 2, 0),
(12, '10000037', '842155625327610000037', '4637481556255314', '5cc66fbb29fd8', 'Your next lecture will start after 24 hours', 2, 0),
(13, '10000000', '842155625327610000037', '4637481556255314', '5cc7ac253cddd', 'Your next lecture will start after one and half hour', 2, 0),
(14, '10000038', '842155625327610000037', '4637481556255314', '5cc7ac253cddd', 'Your next lecture will start after one and half hour', 2, 0),
(15, '10000037', '842155625327610000037', '4637481556255314', '5cc7ac253cddd', 'Your next lecture will start after one and half hour', 2, 0),
(16, '10000038', '842155625327610000037', '4637481556255314', '5cc7ba34b65ec', 'Your next lecture will start after half hour', 2, 0),
(17, '10000037', '842155625327610000037', '4637481556255314', '5cc7ba34b65ec', 'Your next lecture will start after half hour', 2, 0),
(18, '10000037', '842155625327610000037', '2079401556255647', '5cc912bbdbaa5', 'Your next lecture will start after 24 hours', 2, 0),
(19, '10000038', '842155625327610000037', '2079401556255647', '5cca4f262b249', 'Your next lecture will start after one and half hour', 2, 0),
(20, '10000037', '842155625327610000037', '2079401556255647', '5cca4f262b249', 'Your next lecture will start after one and half hour', 2, 0),
(21, '10000037', '842155625327610000037', '2079401556255647', '5cca5d34f41ec', 'Your next lecture will start after half hour', 2, 0),
(22, '10000038', '842155625327610000037', '6289071556255921', '5ccbb5bc3ebe2', 'Your next lecture will start after 24 hours', 2, 0),
(23, '10000037', '842155625327610000037', '6289071556255921', '5ccbb5bc3ebe2', 'Your next lecture will start after 24 hours', 2, 0),
(24, '10000037', '842155625327610000037', '6289071556255921', '5cccf2242ba87', 'Your next lecture will start after one and half hour', 2, 0),
(25, '10000000', '842155625327610000037', '6289071556255921', '5ccd0035d35ff', 'Your next lecture will start after half hour', 2, 0),
(26, '10000038', '842155625327610000037', '6289071556255921', '5ccd0035d35ff', 'Your next lecture will start after half hour', 2, 0),
(27, '10000037', '842155625327610000037', '6289071556255921', '5ccd0035d35ff', 'Your next lecture will start after half hour', 2, 0),
(28, '10000000', '842155625327610000037', '7689191556256095', '5cce43a5115cd', 'Your next lecture will start after one and half hour', 2, 0),
(29, '10000038', '842155625327610000037', '7689191556256095', '5cce43a5115cd', 'Your next lecture will start after one and half hour', 2, 0),
(30, '10000037', '842155625327610000037', '7689191556256095', '5cce43a5115cd', 'Your next lecture will start after one and half hour', 2, 0),
(31, '10000000', '842155625327610000037', '7689191556256095', '5cce51b4665ad', 'Your next lecture will start after half hour', 2, 0),
(32, '10000038', '842155625327610000037', '7689191556256095', '5cce51b4665ad', 'Your next lecture will start after half hour', 2, 0),
(33, '10000037', '842155625327610000037', '7689191556256095', '5cce51b4665ad', 'Your next lecture will start after half hour', 2, 0),
(34, '10000068', '842155625327610000037', '5392391556254396', '5cce90fd0fc82', 'Your lecture will start within 24 hours', 2, 0),
(35, '10000013', '842155625327610000037', '5392391556254396', '5cce90fd0fc82', 'Your lecture will start within 24 hours', 2, 0),
(36, '10000068', '842155625327610000037', '5392391556254396', '5ccf39bba0729', 'Your lecture will start within 12 hours', 2, 0),
(37, '10000013', '842155625327610000037', '5392391556254396', '5ccf39bba0729', 'Your lecture will start within 12 hours', 2, 0),
(38, '10000038', '842155625327610000037', '5275821556256252', '5ccfaa3ce983f', 'Your next lecture will start after 24 hours', 2, 0),
(39, '10000000', '842155625327610000037', '5275821556256252', '5ccfb14551bff', 'Your next lecture will start after 24 hours', 2, 0),
(40, '10000038', '842155625327610000037', '5275821556256252', '5ccfb14551bff', 'Your next lecture will start after 24 hours', 2, 0),
(41, '10000037', '842155625327610000037', '5275821556256252', '5ccfb14551bff', 'Your next lecture will start after 24 hours', 2, 0),
(42, '10000068', '842155625327610000037', '5392391556254396', '5ccfdb74ca698', 'Your lecture will start after half hour', 2, 0),
(43, '10000013', '842155625327610000037', '5392391556254396', '5ccfdb74ca698', 'Your lecture will start after half hour', 2, 0),
(44, '10000000', '842155625327610000037', '5275821556256252', '5cd0e6a5a557f', 'Your next lecture will start after one and half hour', 2, 0),
(45, '10000038', '842155625327610000037', '5275821556256252', '5cd0e6a5a557f', 'Your next lecture will start after one and half hour', 2, 0),
(46, '10000037', '842155625327610000037', '5275821556256252', '5cd0e6a5a557f', 'Your next lecture will start after one and half hour', 2, 0),
(47, '10000000', '842155625327610000037', '5275821556256252', '5cd0f4bacf4d0', 'Your next lecture will start after half hour', 2, 0),
(48, '10000038', '842155625327610000037', '5275821556256252', '5cd0f4bacf4d0', 'Your next lecture will start after half hour', 2, 0),
(49, '10000037', '842155625327610000037', '5275821556256252', '5cd0f4bacf4d0', 'Your next lecture will start after half hour', 2, 0),
(50, '10000068', '842155625327610000037', '4637481556255314', '5cd133fc1777d', 'Your next lecture will start after 24 hours', 2, 0),
(51, '10000013', '842155625327610000037', '4637481556255314', '5cd133fc1777d', 'Your next lecture will start after 24 hours', 2, 0),
(52, '10000068', '842155625327610000037', '4637481556255314', '5cd270646b852', 'Your next lecture will start after one and half hour', 2, 0),
(53, '10000013', '842155625327610000037', '4637481556255314', '5cd270646b852', 'Your next lecture will start after one and half hour', 2, 0),
(54, '10000068', '842155625327610000037', '4637481556255314', '5cd27e75d10f7', 'Your next lecture will start after half hour', 2, 0),
(55, '10000013', '842155625327610000037', '4637481556255314', '5cd27e75d10f7', 'Your next lecture will start after half hour', 2, 0),
(56, '10000068', '842155625327610000037', '2079401556255647', '5cd3d6fb5eba8', 'Your next lecture will start after 24 hours', 2, 0),
(57, '10000013', '842155625327610000037', '2079401556255647', '5cd3d6fb5eba8', 'Your next lecture will start after 24 hours', 2, 0),
(58, '10000068', '842155625327610000037', '2079401556255647', '5cd5136620a26', 'Your next lecture will start after one and half hour', 2, 0),
(59, '10000013', '842155625327610000037', '2079401556255647', '5cd5136620a26', 'Your next lecture will start after one and half hour', 2, 0),
(60, '10000068', '842155625327610000037', '2079401556255647', '5cd5217674e88', 'Your next lecture will start after half hour', 2, 0),
(61, '10000013', '842155625327610000037', '2079401556255647', '5cd5217674e88', 'Your next lecture will start after half hour', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationmain`
--

DROP TABLE IF EXISTS `notificationmain`;
CREATE TABLE IF NOT EXISTS `notificationmain` (
  `notification_main_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, id to show the notification to the student',
  `notification_type` int(6) NOT NULL COMMENT 'IT stores the type of notfication (1,2 3...)  1 is for Lecture notification, 2 is for the instructor notification, 3 is for the feedback notification and 4 is for moderator notification.',
  `notification_category` varchar(200) NOT NULL COMMENT 'It stores the Type of notification (Student, Instructor or Moderator)',
  `unique_key` varchar(50) NOT NULL COMMENT 'unique key that has to matched from the notification_main table',
  `notification_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timestamp of the notification',
  PRIMARY KEY (`notification_main_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COMMENT='This table give the information about what are the skills needed for applying a particular internship';

--
-- Dumping data for table `notificationmain`
--

INSERT INTO `notificationmain` (`notification_main_id`, `notification_type`, `notification_category`, `unique_key`, `notification_timestamp`) VALUES
(1, 4, 'Moderator', '5cc19f5874c45', '2019-04-25 11:51:52'),
(2, 4, 'Moderator', '5cc29714dd848', '2019-04-26 05:28:52'),
(3, 2, 'Teacher', '5cc30d18895a1', '2019-04-26 13:52:24'),
(4, 4, 'Moderator', '5cc3276a6b009', '2019-04-26 15:44:42'),
(5, 2, 'Teacher', '5cc328ca857fd', '2019-04-26 15:50:34'),
(6, 2, 'Teacher', '5cc364376c717', '2019-04-26 20:04:07'),
(7, 5, 'Student', '5cc36798350f0', '2019-04-26 20:18:32'),
(8, 6, 'Teacher', '5cc36798350f5', '2019-04-26 20:18:32'),
(9, 5, 'Student', '5cc36bed5a30a', '2019-04-26 20:37:01'),
(10, 6, 'Teacher', '5cc36bed5a30f', '2019-04-26 20:37:01'),
(11, 5, 'Student', '5cc36ea2c5fcb', '2019-04-26 20:48:34'),
(12, 6, 'Teacher', '5cc36ea2c5fcf', '2019-04-26 20:48:34'),
(13, 5, 'Student', '5cc3ac5661d75', '2019-04-27 01:11:50'),
(14, 6, 'Teacher', '5cc3ac5661d7d', '2019-04-27 01:11:50'),
(15, 1, 'Student', '5cc3ccbf3d375', '2019-04-27 03:30:07'),
(16, 4, 'Moderator', '5cc46f1e4f4dd', '2019-04-27 15:02:54'),
(17, 4, 'Moderator', '5cc46f64a1a7b', '2019-04-27 15:04:04'),
(18, 2, 'Teacher', '5cc4700776896', '2019-04-27 15:06:47'),
(19, 2, 'Teacher', '5cc470698b980', '2019-04-27 15:08:25'),
(20, 1, 'Student', '5cc47583a63c0', '2019-04-27 15:30:11'),
(21, 1, 'Student', '5cc5173653cc6', '2019-04-28 03:00:06'),
(22, 3, 'Student', '5cc54164a8536', '2019-04-28 06:00:04'),
(23, 1, 'Student', '5cc66fbb29fd8', '2019-04-29 03:30:03'),
(24, 4, 'Moderator', '5cc6f69c752a4', '2019-04-29 13:05:32'),
(25, 2, 'Teacher', '5cc6f6ddb6444', '2019-04-29 13:06:37'),
(26, 4, 'Moderator', '5cc784b232a91', '2019-04-29 23:11:46'),
(27, 4, 'Moderator', '5cc786f196954', '2019-04-29 23:21:21'),
(28, 2, 'Teacher', '5cc7873c8c3c2', '2019-04-29 23:22:36'),
(29, 1, 'Student', '5cc7ac253cddd', '2019-04-30 02:00:05'),
(30, 1, 'Student', '5cc7ba34b65ec', '2019-04-30 03:00:04'),
(31, 3, 'Student', '5cc7e465257f0', '2019-04-30 06:00:05'),
(32, 4, 'Moderator', '5cc80caeed84a', '2019-04-30 08:51:58'),
(33, 5, 'Student', '5cc80d206d10a', '2019-04-30 08:53:52'),
(34, 6, 'Teacher', '5cc80d206d114', '2019-04-30 08:53:52'),
(35, 5, 'Student', '5cc86c0e99381', '2019-04-30 15:38:54'),
(36, 6, 'Teacher', '5cc86c0e99386', '2019-04-30 15:38:54'),
(37, 4, 'Moderator', '5cc871eda4ff5', '2019-04-30 16:03:57'),
(38, 2, 'Teacher', '5cc8721b1333b', '2019-04-30 16:04:43'),
(39, 1, 'Student', '5cc912bbdbaa5', '2019-05-01 03:30:03'),
(40, 5, 'Student', '5cc95310cfc95', '2019-05-01 08:04:32'),
(41, 6, 'Teacher', '5cc95310cfc9a', '2019-05-01 08:04:32'),
(42, 5, 'Student', '5cc9535dbf532', '2019-05-01 08:05:49'),
(43, 6, 'Teacher', '5cc9535dbf537', '2019-05-01 08:05:49'),
(44, 5, 'Student', '5cc98bad61fe0', '2019-05-01 12:06:05'),
(45, 6, 'Teacher', '5cc98bad61fe7', '2019-05-01 12:06:05'),
(46, 2, 'Teacher', '5cc9942b5caaf', '2019-05-01 12:42:19'),
(47, 1, 'Student', '5cca4f262b249', '2019-05-02 02:00:06'),
(48, 1, 'Student', '5cca5d34f41ec', '2019-05-02 03:00:05'),
(49, 3, 'Student', '5cca8764d6054', '2019-05-02 06:00:04'),
(50, 4, 'Moderator', '5ccb739cead2c', '2019-05-02 22:47:56'),
(51, 1, 'Student', '5ccbb5bc3ebe2', '2019-05-03 03:30:04'),
(52, 1, 'Student', '5cccf2242ba87', '2019-05-04 02:00:04'),
(53, 1, 'Student', '5ccd0035d35ff', '2019-05-04 03:00:05'),
(54, 3, 'Student', '5ccd2a652ed36', '2019-05-04 06:00:05'),
(55, 5, 'Student', '5ccdcfb62992d', '2019-05-04 17:45:26'),
(56, 6, 'Teacher', '5ccdcfb629933', '2019-05-04 17:45:26'),
(57, 1, 'Student', '5cce43a5115cd', '2019-05-05 02:00:05'),
(58, 1, 'Student', '5cce51b4665ad', '2019-05-05 03:00:04'),
(59, 3, 'Student', '5cce7be620ebd', '2019-05-05 06:00:06'),
(60, 1, 'Student', '5cce90fd0fc82', '2019-05-05 07:30:05'),
(61, 1, 'Student', '5ccf39bba0729', '2019-05-05 19:30:03'),
(62, 1, 'Student', '5ccfaa3ce983f', '2019-05-06 03:30:04'),
(63, 1, 'Student', '5ccfb14551bff', '2019-05-06 04:00:05'),
(64, 1, 'Student', '5ccfdb74ca698', '2019-05-06 07:00:04'),
(65, 3, 'Student', '5cd005a4da632', '2019-05-06 10:00:04'),
(66, 2, 'Teacher', '5cd0af2d527a1', '2019-05-06 22:03:25'),
(67, 4, 'Moderator', '5cd0b1e4de039', '2019-05-06 22:15:00'),
(68, 1, 'Student', '5cd0e6a5a557f', '2019-05-07 02:00:05'),
(69, 1, 'Student', '5cd0f4bacf4d0', '2019-05-07 03:00:10'),
(70, 3, 'Student', '5cd11ee5e9bba', '2019-05-07 06:00:05'),
(71, 1, 'Student', '5cd133fc1777d', '2019-05-07 07:30:04'),
(72, 1, 'Student', '5cd270646b852', '2019-05-08 06:00:04'),
(73, 1, 'Student', '5cd27e75d10f7', '2019-05-08 07:00:05'),
(74, 3, 'Student', '5cd2a8a556e8f', '2019-05-08 10:00:05'),
(75, 2, 'Teacher', '5cd2b447101cd', '2019-05-08 10:49:43'),
(76, 1, 'Student', '5cd3d6fb5eba8', '2019-05-09 07:30:03'),
(77, 1, 'Student', '5cd5136620a26', '2019-05-10 06:00:06'),
(78, 1, 'Student', '5cd5217674e88', '2019-05-10 07:00:06'),
(79, 3, 'Student', '5cd54ba3de011', '2019-05-10 10:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `notificationmoderator`
--

DROP TABLE IF EXISTS `notificationmoderator`;
CREATE TABLE IF NOT EXISTS `notificationmoderator` (
  `notification_moderator_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, id  to show the notification to the student',
  `user_id` int(10) NOT NULL COMMENT 'FK, user id of the user',
  `course_id` varchar(200) NOT NULL COMMENT 'FK, course id of the course',
  `unique_key` varchar(200) NOT NULL COMMENT 'unique key that has to matched from the notification_main table',
  `notification_moderator_status` int(6) NOT NULL COMMENT 'Show the status of the course',
  `moderator_mark_as_read` int(6) NOT NULL COMMENT 'it shows whether notification is read by the Instructor (0 or 1)',
  PRIMARY KEY (`notification_moderator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='This Table Stores the notification for the  moderator about a course';

--
-- Dumping data for table `notificationmoderator`
--

INSERT INTO `notificationmoderator` (`notification_moderator_id`, `user_id`, `course_id`, `unique_key`, `notification_moderator_status`, `moderator_mark_as_read`) VALUES
(1, 10000000, '643155619069510000038', '5cc19f5874c45', 3, 0),
(2, 10000002, '643155619069510000038', '5cc19f5874c45', 3, 0),
(3, 10000000, '842155625327610000037', '5cc29714dd848', 3, 0),
(4, 10000002, '842155625327610000037', '5cc29714dd848', 3, 0),
(5, 10000000, '925155628891110000000', '5cc3276a6b009', 3, 0),
(6, 10000002, '925155628891110000000', '5cc3276a6b009', 3, 0),
(7, 10000000, '709155629242110000068', '5cc46f1e4f4dd', 3, 0),
(8, 10000002, '709155629242110000068', '5cc46f1e4f4dd', 3, 0),
(9, 10000000, '925155628891110000000', '5cc46f64a1a7b', 3, 0),
(10, 10000000, '601155654042710000000', '5cc6f69c752a4', 3, 0),
(11, 10000002, '601155654042710000000', '5cc6f69c752a4', 3, 0),
(12, 10000000, '245155649317410000013', '5cc784b232a91', 3, 0),
(13, 10000002, '245155649317410000013', '5cc784b232a91', 3, 0),
(14, 10000000, '486155657962310000013', '5cc786f196954', 3, 0),
(15, 10000002, '486155657962310000013', '5cc786f196954', 3, 0),
(16, 10000000, '709155629242110000068', '5cc80caeed84a', 3, 0),
(17, 10000000, '332155663898110000000', '5cc871eda4ff5', 3, 0),
(18, 10000002, '332155663898110000000', '5cc871eda4ff5', 3, 0),
(19, 10000000, '486155657962310000013', '5ccb739cead2c', 3, 0),
(20, 10000000, '361155718039510000013', '5cd0b1e4de039', 3, 0),
(21, 10000002, '361155718039510000013', '5cd0b1e4de039', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notificationstudentbuy`
--

DROP TABLE IF EXISTS `notificationstudentbuy`;
CREATE TABLE IF NOT EXISTS `notificationstudentbuy` (
  `notification_student_buy_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, notification id',
  `user_id` int(10) NOT NULL COMMENT 'FK, user id of the user',
  `course_id` varchar(300) NOT NULL COMMENT 'FK, course id of the course',
  `course_batch_id` int(10) NOT NULL COMMENT 'FK, batch id of the batch',
  `unique_key` varchar(50) NOT NULL COMMENT 'unique key of the notification',
  `notification_student_buy_text` varchar(500) NOT NULL COMMENT 'Notification Text',
  `notification_student_mark_as_read` int(11) NOT NULL COMMENT 'status that notification is read or unread (0, 1)',
  PRIMARY KEY (`notification_student_buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notificationstudentbuy`
--

INSERT INTO `notificationstudentbuy` (`notification_student_buy_id`, `user_id`, `course_id`, `course_batch_id`, `unique_key`, `notification_student_buy_text`, `notification_student_mark_as_read`) VALUES
(1, 10000037, '842155625327610000037', 2, '5cc36798350f0', 'You have buy the AWS Certified Developer - Associate 2019 course.', 0),
(2, 10000038, '842155625327610000037', 2, '5cc36bed5a30a', 'You have buy the AWS Certified Developer - Associate 2019 course.', 0),
(3, 10000000, '842155625327610000037', 2, '5cc36ea2c5fcb', 'You have buy the AWS Certified Developer - Associate 2019 course.', 0),
(4, 10000013, '842155625327610000037', 3, '5cc3ac5661d75', 'You have buy the AWS Certified Developer - Associate 2019 course.', 0),
(5, 10000068, '842155625327610000037', 3, '5cc80d206d10a', 'You have buy the AWS Certified Developer - Associate 2019 course.', 0),
(6, 10000000, '709155629242110000068', 5, '5cc86c0e99381', 'You have buy the Power of  subconscious mind course.', 0),
(7, 10000037, '709155629242110000068', 5, '5cc95310cfc95', 'You have buy the Power of  subconscious mind course.', 0),
(8, 10000037, '709155629242110000068', 5, '5cc9535dbf532', 'You have buy the Power of  subconscious mind course.', 0),
(9, 10000037, '643155619069510000038', 5, '5cc98bad61fe0', 'You have buy the Software Manual Testing course.', 0),
(10, 10000038, '709155629242110000068', 5, '5ccdcfb62992d', 'You have buy the Power of  subconscious mind course.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifysubscribeduser`
--

DROP TABLE IF EXISTS `notifysubscribeduser`;
CREATE TABLE IF NOT EXISTS `notifysubscribeduser` (
  `subscribe_user_id` int(200) NOT NULL COMMENT 'PK, id for the subscribed user',
  `subscribe_user_email` varchar(1000) NOT NULL COMMENT 'email id of the subscribed user',
  PRIMARY KEY (`subscribe_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Notify the user who has subscribed through construction page';

-- --------------------------------------------------------

--
-- Table structure for table `notifyuserifbatchavailable`
--

DROP TABLE IF EXISTS `notifyuserifbatchavailable`;
CREATE TABLE IF NOT EXISTS `notifyuserifbatchavailable` (
  `notify_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'Pk, id for notifying the user for batch availabilty',
  `user_id` int(200) DEFAULT NULL COMMENT 'id of an user who will be notified',
  `course_id` varchar(1000) DEFAULT NULL COMMENT 'id of the course for which the batches are added',
  `available_batch_day` varchar(200) NOT NULL COMMENT 'weekdays: Denotes week days is suggested by a student for a batch of a course, weekends:Denotes weekends is suggested by a user , both:denotes both weekends and weekdays are suggested by student for a batch',
  `in_morning` int(200) NOT NULL COMMENT '1:user is available for morning batch',
  `in_afternoon` int(200) NOT NULL COMMENT '1:user is available for afternoon batch',
  `in_evening` int(200) NOT NULL COMMENT '1:user is available for an evening batch',
  `requested_batch_date` date DEFAULT NULL COMMENT 'Date suggested by user for a batch',
  PRIMARY KEY (`notify_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='notify the user when the batche is again available for a particular course';

--
-- Dumping data for table `notifyuserifbatchavailable`
--

INSERT INTO `notifyuserifbatchavailable` (`notify_id`, `user_id`, `course_id`, `available_batch_day`, `in_morning`, `in_afternoon`, `in_evening`, `requested_batch_date`) VALUES
(1, 10000068, '643155619069510000038', 'weekend', 0, 1, 0, '2019-05-02'),
(2, 10000002, '643155619069510000038', 'weekday', 0, 1, 1, '2020-02-02'),
(3, 10000000, '842155625327610000037', 'weekday', 0, 1, 0, '2019-06-20'),
(4, 10000000, '709155629242110000068', 'weekend', 0, 1, 0, '2019-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `passwordrecoveryuniqueid`
--

DROP TABLE IF EXISTS `passwordrecoveryuniqueid`;
CREATE TABLE IF NOT EXISTS `passwordrecoveryuniqueid` (
  `user_id` int(11) NOT NULL COMMENT 'User for whom the unique Id was generated',
  `unique_id` text NOT NULL COMMENT 'Unique ID to autenticate the change of password',
  `unique_id_created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp at which the unique id was created, used to check for expiry',
  `password_recovery_unique_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the table used for indexing',
  PRIMARY KEY (`password_recovery_unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for storing unique ids and checking their if they have expired';

-- --------------------------------------------------------

--
-- Table structure for table `questionaskedbyhr`
--

DROP TABLE IF EXISTS `questionaskedbyhr`;
CREATE TABLE IF NOT EXISTS `questionaskedbyhr` (
  `question_asked_by_hr_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for an question asked by hr',
  `question_asked` text NOT NULL COMMENT 'Question asked for the internship',
  `question_description` text NOT NULL COMMENT 'Description related to particular question as a placeholder',
  `internship_id` int(200) NOT NULL COMMENT 'FK, id of an internship for which the question is been asked',
  `is_deleted_status` int(200) NOT NULL COMMENT 'Status of the question, if it is deleted 1 else 0',
  `question_updated_timestamp` date NOT NULL COMMENT 'The timestamp on which the details are updated',
  PRIMARY KEY (`question_asked_by_hr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Questions asked by hr for particular internship which has been created';

-- --------------------------------------------------------

--
-- Table structure for table `revokegrantprivileges`
--

DROP TABLE IF EXISTS `revokegrantprivileges`;
CREATE TABLE IF NOT EXISTS `revokegrantprivileges` (
  `access_privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK,access privilage id of the user',
  `access_privilege_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timestamp of the updated access privilage',
  `user_role` varchar(20) NOT NULL COMMENT 'role of the user (instructor, moderator, hr , intern)',
  `reason_for_grant_revoke_privilege` varchar(500) NOT NULL COMMENT 'reason to revoke the acces privilage',
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  PRIMARY KEY (`access_privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `searchresults`
--

DROP TABLE IF EXISTS `searchresults`;
CREATE TABLE IF NOT EXISTS `searchresults` (
  `search_results_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, keeps the count of rows in the table',
  `user_id` varchar(1000) NOT NULL COMMENT 'Id of the user searching for any term on the site',
  `search_term` varchar(1000) NOT NULL COMMENT 'The query which user inserted in the search bar',
  `search_result_course_id` varchar(1000) NOT NULL COMMENT 'Course Id of the course which appeared in results for a search term',
  `search_result_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'time at which the term was searched and results were returned',
  PRIMARY KEY (`search_results_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores the search query and the results returned for that query ';

-- --------------------------------------------------------

--
-- Table structure for table `searchtermtable`
--

DROP TABLE IF EXISTS `searchtermtable`;
CREATE TABLE IF NOT EXISTS `searchtermtable` (
  `search_term_table_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the term',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `search_term` varchar(1000) NOT NULL COMMENT 'Search term used by the user',
  `searched_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the search term was used',
  PRIMARY KEY (`search_term_table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searchtermtable`
--

INSERT INTO `searchtermtable` (`search_term_table_id`, `user_id`, `search_term`, `searched_timestamp`) VALUES
(1, 10000068, 'Software Manual Testing', '2019-04-26 13:58:20'),
(2, 10000000, 'Software Manual Testing', '2019-04-26 13:58:40'),
(3, 10000068, 'Power of  subconscious mind', '2019-04-30 08:32:57'),
(4, 10000068, 'Power of  subconscious mind', '2019-04-30 08:35:15'),
(5, 10000038, 'akhil', '2019-05-04 17:33:49'),
(6, 10000068, 'java', '2019-05-06 13:26:42'),
(7, 10000068, 'AWS Certified Developer - Associate 2019', '2019-05-06 13:27:58'),
(8, 10000000, 'testing', '2019-05-09 07:03:26'),
(9, 10000000, 'it', '2019-05-09 08:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `secrethash`
--

DROP TABLE IF EXISTS `secrethash`;
CREATE TABLE IF NOT EXISTS `secrethash` (
  `stamp_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, keeps the count of the entries',
  `user_id` int(200) NOT NULL COMMENT 'Id of the logged in users',
  `secret_key_for_transaction` varchar(1000) NOT NULL COMMENT 'secret key generated for maintaining security and consistencies',
  PRIMARY KEY (`stamp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='This is the supporting table which is used for doing payment which store unique stamp or key for a particular transaction';

--
-- Dumping data for table `secrethash`
--

INSERT INTO `secrethash` (`stamp_id`, `user_id`, `secret_key_for_transaction`) VALUES
(12, 10000038, '$5$rounds=10000$0wbibC6HeyS1buvk$Y3rNp22oWgOWtPZWdRoTVTXoTmZHuYCEBtNyYT.sCnB'),
(8, 10000000, '$5$rounds=10000$lqrNdurWkhrWDE1/$DmAwFEe8kjysq1c4ht7ew05u08O.IVZwg/9.B2ZP240'),
(20, 10000013, '$5$rounds=10000$HgyMVblX7Gno.ims$dT.ED2p/Fkrj3lhjQ4u1Ux9rtSrX5AqQFrYuhE4Dvg6'),
(6, 10000020, '$5$rounds=10000$x57/OGazuxxIW2.l$SPwH.9lcE.jWJt.gbssXVDg90.E5DodxlF9rcZUlZBD');

-- --------------------------------------------------------

--
-- Table structure for table `skillsrequiredforinternship`
--

DROP TABLE IF EXISTS `skillsrequiredforinternship`;
CREATE TABLE IF NOT EXISTS `skillsrequiredforinternship` (
  `internship_skills_needed_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key for skills for internship',
  `internship_id` int(200) NOT NULL COMMENT 'FK, Intenship id the user has applied internship for',
  `skill_title` text NOT NULL COMMENT 'Skill of the intern',
  `is_deleted_status` int(200) NOT NULL COMMENT 'whether internship is deleted(1) or not (0)  ',
  `updated_timestamp` datetime NOT NULL COMMENT 'skills latest updated timestamp',
  PRIMARY KEY (`internship_skills_needed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table give the information about what are the skills needed for applying a particular internship';

-- --------------------------------------------------------

--
-- Table structure for table `studentdoubtsession`
--

DROP TABLE IF EXISTS `studentdoubtsession`;
CREATE TABLE IF NOT EXISTS `studentdoubtsession` (
  `count` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key for session',
  `course_id` varchar(100) NOT NULL COMMENT 'FK for course id',
  `course_batch_id` int(100) NOT NULL COMMENT 'FK for batch id',
  `course_section_id` varchar(100) NOT NULL COMMENT 'FK for section id',
  `doubt_session_date` date NOT NULL COMMENT 'date of session to be taken',
  `doubt_session_time` time NOT NULL COMMENT 'time when session will be held',
  `email_notification_status` int(5) NOT NULL COMMENT '1 completed, 0 incomplete session',
  `doubt_section_status` varchar(50) NOT NULL COMMENT 'Status of the doubt section Completed or Pending',
  `feedback_status` int(6) NOT NULL COMMENT 'status of the feedback notification and email (1 or 0)',
  `average_feedback_value` int(10) NOT NULL COMMENT 'average feedback value of the doubt session from the students who have enrolled',
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentperformancesummary`
--

DROP TABLE IF EXISTS `studentperformancesummary`;
CREATE TABLE IF NOT EXISTS `studentperformancesummary` (
  `student_performance_summary_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the the student performance',
  `trainer_id` int(11) NOT NULL COMMENT 'FK, user id of the Instructor',
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  `assessment_details_id` int(11) NOT NULL COMMENT 'FK, assessment id of the assessment',
  `marks_obtained` int(11) NOT NULL COMMENT 'Marks obtained by the user',
  `topics` varchar(1000) NOT NULL COMMENT 'Lecture id of the different modules in a particular Section from lecture table',
  PRIMARY KEY (`student_performance_summary_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='use in showing marks in Average Marks plot in assessment tab';

-- --------------------------------------------------------

--
-- Table structure for table `studentquizanswers`
--

DROP TABLE IF EXISTS `studentquizanswers`;
CREATE TABLE IF NOT EXISTS `studentquizanswers` (
  `student_quiz_answers_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the student answers',
  `student_answer` char(10) NOT NULL COMMENT 'Student answer',
  `assessment_question` int(11) DEFAULT NULL COMMENT 'FK, Assessment question id',
  `assessment_details_id` int(11) NOT NULL COMMENT 'FK, assessment id',
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  PRIMARY KEY (`student_quiz_answers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT=' student answers are recorded as per the question in the quiz';

-- --------------------------------------------------------

--
-- Table structure for table `supportquestion`
--

DROP TABLE IF EXISTS `supportquestion`;
CREATE TABLE IF NOT EXISTS `supportquestion` (
  `support_question_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id of the help question',
  `user_id` int(100) DEFAULT NULL COMMENT 'FK, user id of the user',
  `guest_user_email_id` varchar(100) DEFAULT NULL COMMENT 'email id of user who is not logged in, it will be helpful in replying an answer for question',
  `question_submitted_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'question submitted time',
  `support_question_subject` varchar(120) NOT NULL COMMENT 'subject of the question',
  `support_question_description` varchar(380) NOT NULL COMMENT 'Detailed description of question',
  `support_question_category` varchar(1000) NOT NULL COMMENT 'category of the question, whether question is related to student, instructor or moderator',
  PRIMARY KEY (`support_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Stores question asked in support page';

--
-- Dumping data for table `supportquestion`
--

INSERT INTO `supportquestion` (`support_question_id`, `user_id`, `guest_user_email_id`, `question_submitted_timestamp`, `support_question_subject`, `support_question_description`, `support_question_category`) VALUES
(1, 10000000, NULL, '2019-05-09 10:01:17', 'acafsacsc', 'nmsc mn nzksc , asdjbcd,c , lsc,c x .\nsdc\ns \nsad\n xz\n \ndsf\nv\nx \ndsf\nf\ndb', 'Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `temporarybuydetails`
--

DROP TABLE IF EXISTS `temporarybuydetails`;
CREATE TABLE IF NOT EXISTS `temporarybuydetails` (
  `temporary_buy_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of the temporary buy',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of the course',
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `transaction_secret_key` varchar(10000) NOT NULL COMMENT 'it is a secret key for the transaction',
  `coupon_applied` varchar(50) NOT NULL COMMENT 'Referral Code Applied while buying the course',
  `coupon_type` varchar(20) NOT NULL COMMENT 'Type of the Coupon',
  `is_successfull` varchar(200) NOT NULL COMMENT 'Status of the payment of the  course (success or failed)',
  `course_batch_id` int(20) NOT NULL COMMENT 'FK, batch id of the batch',
  PRIMARY KEY (`temporary_buy_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='This is the supporting table which is used for doing payment which store temporary detail of payment';

--
-- Dumping data for table `temporarybuydetails`
--

INSERT INTO `temporarybuydetails` (`temporary_buy_details_id`, `course_id`, `user_id`, `transaction_secret_key`, `coupon_applied`, `coupon_type`, `is_successfull`, `course_batch_id`) VALUES
(1, '842155625327610000037', 10000037, '$5$rounds=10000$yTG6VVByyOuESwaR$uBqlLRl4pjUw3VzpLD5dYy75VP8plDK/wvNmhnii2M/', '1', 'course', 'success', 2),
(2, '842155625327610000037', 10000038, '$5$rounds=10000$P5mlftghaiIU4n4f$A8HPQ2CQBVU2FIvzdKFKXZdNmOoFG7j/u6mqRjYIHb1', '1', 'course', 'success', 2),
(3, '842155625327610000037', 10000000, '$5$rounds=10000$WEP3LXuANKlJeRA/$6sE11.c7fwRWN3D1rPbBRVe7vkrFvJxcLRaVEiyzXq2', '1', 'course', 'success', 2),
(4, '842155625327610000037', 10000013, '$5$rounds=10000$7rshMxFITW3ZabbE$kYk8sHHn9OL4YkSnhxvG1TddIk3CeABHbK3Rrg10OA3', '', '', 'success', 3),
(20, '709155629242110000068', 10000013, '$5$rounds=10000$HgyMVblX7Gno.ims$dT.ED2p/Fkrj3lhjQ4u1Ux9rtSrX5AqQFrYuhE4Dvg6', '', '', 'failed', 5),
(6, '842155625327610000037', 10000020, '$5$rounds=10000$x57/OGazuxxIW2.l$SPwH.9lcE.jWJt.gbssXVDg90.E5DodxlF9rcZUlZBD', '', '', 'failed', 3),
(7, '842155625327610000037', 10000068, '$5$rounds=10000$PgjKyNCly8p.AWac$9GCzuOOI1ZWaAJW4JV5PQMqRugrFhQn6dbuLzCzD3aC', '', '', 'success', 3),
(8, '709155629242110000068', 10000000, '$5$rounds=10000$lqrNdurWkhrWDE1/$DmAwFEe8kjysq1c4ht7ew05u08O.IVZwg/9.B2ZP240', '', '', 'success', 5),
(9, '709155629242110000068', 10000037, '$5$rounds=10000$MycqICIq3bJMoBe5$P9Mfy5FjADwiAVNnHNYuemwQt9voTteMfEvQaS3Ygm4', '', '', 'success', 5),
(10, '709155629242110000068', 10000037, '$5$rounds=10000$tnS1NwSLuMbJpUeH$gXl3XjefSs4rZTL.54W2aVtCKIDFo9884f.Tklfnjc/', '', '', 'success', 5),
(11, '643155619069510000038', 10000037, '$5$rounds=10000$ujRVABAUBOSLncDo$Y2zwPOxb9FERcVxDV7qKZkpOv0fT9GNxIrva.AS8S50', '', '', 'success', 5),
(12, '709155629242110000068', 10000038, '$5$rounds=10000$0wbibC6HeyS1buvk$Y3rNp22oWgOWtPZWdRoTVTXoTmZHuYCEBtNyYT.sCnB', '', '', 'success', 5);

-- --------------------------------------------------------

--
-- Table structure for table `temporarycroppedimage`
--

DROP TABLE IF EXISTS `temporarycroppedimage`;
CREATE TABLE IF NOT EXISTS `temporarycroppedimage` (
  `cropped_image_count` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, for the cropped image',
  `cropped_image_path` varchar(1000) NOT NULL COMMENT 'file path of the cropped image',
  `course_id` varchar(1000) NOT NULL COMMENT 'course id of a course whose image is been cropped',
  `trainer_id` int(100) NOT NULL COMMENT 'trainer id of a course whose image is been cropped',
  `is_image_or_video` char(20) NOT NULL COMMENT 'the image been cropped is for video or image',
  `is_image_cropped` int(10) NOT NULL DEFAULT '0' COMMENT 'the status bit tells that the image is cropped or not',
  `cropped_image_save` int(200) NOT NULL DEFAULT '0' COMMENT 'after cropping the image is shifted to main table newcourses after checking this status bit ',
  `user_id` int(11) NOT NULL COMMENT 'user id of a user who is cropping the image',
  PRIMARY KEY (`cropped_image_count`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='This is the table which store the image while it is been crop after cropping the image get deleted from here';

-- --------------------------------------------------------

--
-- Table structure for table `transactionwalletupdate`
--

DROP TABLE IF EXISTS `transactionwalletupdate`;
CREATE TABLE IF NOT EXISTS `transactionwalletupdate` (
  `wallet_transfer_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK, for the wallet transfer transaction',
  `user_id` int(10) NOT NULL COMMENT 'FK, user id of the user',
  `course_id` varchar(100) NOT NULL COMMENT 'FK, course id of the course',
  `course_batch_id` int(10) NOT NULL COMMENT 'FK, batch id of the batch of a course',
  `transaction_id` varchar(200) NOT NULL COMMENT 'Unique transaction id of a transaction',
  `amount_transferred` int(10) NOT NULL COMMENT 'The amount that will be transferred to wallet',
  `transaction_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the transaction',
  PRIMARY KEY (`wallet_transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, user id of the user ',
  `user_name` varchar(20) NOT NULL COMMENT 'name of the user',
  `user_email_id` varchar(200) NOT NULL COMMENT 'email of the user',
  `user_account_password` varchar(1000) NOT NULL COMMENT 'Encrypted password of the user',
  `date_of_birth` varchar(20) NOT NULL COMMENT 'date of birth of the user',
  `gender` char(10) NOT NULL COMMENT 'Gender of the user',
  `is_student` int(5) NOT NULL DEFAULT '1' COMMENT 'category value if he is student or not (1 or 0)',
  `is_instructor` int(5) NOT NULL DEFAULT '0' COMMENT 'category value if he is instructor or not(1 or 0)',
  `is_intern` int(5) NOT NULL DEFAULT '0' COMMENT 'category value if he is intern or not (1 or 0)',
  `is_hr` int(5) NOT NULL DEFAULT '0' COMMENT 'category value if he is hr or not (1 or 0)',
  `is_moderator` int(5) NOT NULL DEFAULT '0' COMMENT 'category value if he is moderator or not(1 or 0)',
  `user_country` char(100) NOT NULL COMMENT 'Country of the user he belongs to',
  `service_name` varchar(20) NOT NULL COMMENT 'service through which user has been logged in',
  `service_provider_id` varchar(200) NOT NULL COMMENT 'id of the service provider',
  `about_user` varchar(1000) NOT NULL DEFAULT 'Say something about you...' COMMENT 'Description About the user',
  `user_contact_number` varchar(15) NOT NULL COMMENT 'Contact of the user',
  `user_address` varchar(1000) NOT NULL DEFAULT '+Add address' COMMENT 'Address of the user',
  `email_verification_code` int(200) NOT NULL COMMENT 'it is the code used by the user to verify his account',
  `is_verified` int(200) NOT NULL DEFAULT '0' COMMENT 'account Verification status (0 or 1)',
  `user_designation` varchar(100) NOT NULL COMMENT 'Designation of the user',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000078 DEFAULT CHARSET=latin1 COMMENT='This table give complete information for all the user personal details  and also categorize a user into various fields(instructor,student,moderator, etc.)';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email_id`, `user_account_password`, `date_of_birth`, `gender`, `is_student`, `is_instructor`, `is_intern`, `is_hr`, `is_moderator`, `user_country`, `service_name`, `service_provider_id`, `about_user`, `user_contact_number`, `user_address`, `email_verification_code`, `is_verified`, `user_designation`) VALUES
(10000000, 'Rahul', 'rahulgupta1597@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '1997-09-25', 'Male', 1, 1, 0, 0, 1, 'India', 'Google', '117408789964389919886', 'Rahul Gupta has been building complex Javascript front ends for top corporations in the San Francisco Bay Area. With an innate ability to simplify complex topics, Stephen has been mentoring engineers beginning their careers in software development for years and has now expanded that experience onto Udemy, authoring the highest rated React course. He teaches on Udemy to share the knowledge he has gained with other software engineers. Invest in yourself by learning from Stephen\'s published courses.', '1234567890', 'Mumbai', 0, 1, ''),
(10000001, 'testuser1', 'testuser1@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '2019-01-02', 'Male', 1, 1, 0, 0, 0, 'India', '', '0', 'Rahul Gupta has been building complex Javascript front ends for top corporations in the San Francisco Bay Area. With an innate ability to simplify complex topics, Stephen has been mentoring engineers beginning their careers in software development for years, and has now expanded that experience onto Udemy, authoring the highest rated React course. He teaches on Udemy to share the knowledge he has gained with other software engineers. Invest in yourself by learning from Stephen\'s published courses.', '9876543210', 'Bengaluru', 0, 0, ''),
(10000002, 'testuser2', 'testuser2@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '13-09-1995', 'Male', 1, 1, 0, 0, 1, 'India', '', '0', 'Rahul Gupta has been building complex Javascript front ends for top corporations in the San Francisco Bay Area. With an innate ability to simplify complex topics, Stephen has been mentoring engineers beginning their careers in software development for years, and has now expanded that experience onto Udemy, authoring the highest rated React course. He teaches on Udemy to share the knowledge he has gained with other software engineers. Invest in yourself by learning from Stephen\'s published courses.', '9876434567', '+Add address', 0, 0, ''),
(10000003, 'hrishikesh', 'hrishighadge1997@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 0, 0, 0, 0, '', '', '0', 'Rahul Gupta has been building complex Javascript front ends for top corporations in the San Francisco Bay Area. With an innate ability to simplify complex topics, Stephen has been mentoring engineers beginning their careers in software development for years, and has now expanded that experience onto Udemy, authoring the highest rated React course. He teaches on Udemy to share the knowledge he has gained with other software engineers. Invest in yourself by learning from Stephen\'s published courses.', '', '+Add address', 4353379, 1, ''),
(10000050, 'sanmit', 'santaktak3@gmail.com', '7e1d950c4df1b1289572cf5174a21510', '', 'Female', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 2264628, 0, ''),
(10000052, 'Vinay', 'vinaymanvi@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 4294771, 0, ''),
(10000053, 'Hema', 'hemalathaharshitha2@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Female', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 2931750, 1, ''),
(10000010, 'Olcademy', 'olcademytest1@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 0, 0, ''),
(10000011, 'Prateek Agarwal', '1505213034@ietlucknow.ac.in', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', 'Google', '101150543664091588445', 'Say something about you...', '', '+Add address', 6785523, 1, ''),
(10000012, 'Gaurav Narwani', 'me@gauravnarwani.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 7404366, 1, ''),
(10000013, 'Rashi', 'rashi_aswani@yahoo.co.in', 'd4388c4d4b47c6655b16fe5b13184b32', '2019-04-12', 'Female', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '1234567890', 'fake address', 9423540, 1, ''),
(10000016, 'Prateek Agarwal', 'prateekneo123@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', 'Google', '115664882504370615592', 'Say something about you...', '', '+Add address', 6451966, 1, ''),
(10000018, 'Akhil', 'akhil.kharbanda191@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 5854896, 1, ''),
(10000029, 'Gaurav Narwani', 'Gauravn1997@bugcrowdninja.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 1073286, 0, ''),
(10000020, 'Suhas Srikar', 'suhassrikar77@gmail.com', '03b50ccdfbec3f5ae03385f674776913', '1999-12-27', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '8522970549', 'Lucknow', 1829440, 1, ''),
(10000065, 'Aaryan clash royale', 'templerun1597@gmail.com', 'b83458cc6426c9c23bab6fb816f3d31a', '', '', 1, 0, 0, 0, 0, '', 'Google', '103722844768308948948', 'Say something about you...', '', '+Add address', 1, 1, ''),
(10000031, 'Etisha ', 'etishasinha21@gmail.com', 'acf5f6af9c491522b7dd9affe9df4f62', '', 'Female', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 2929548, 1, ''),
(10000032, 'Dwayne', 'rockydwaynemavia@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 1614049, 0, ''),
(10000033, 'Hema', 'hemalathams24@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '2019-03-27', 'Female', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '9876543211', 'asdfrgetrhg', 7932922, 1, ''),
(10000034, 'Aditya Mahajan', 'adityaspmahajan@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 2332624, 0, ''),
(10000055, 'sanmit vartak', 'sanvartak.sv11@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 1454070, 0, ''),
(10000037, 'Shubham Awasthi', 'ashubham183@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '1995-07-03', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'I am a engineering graduate with 2+ year of experience in technical field.', '7007513069', 'Bangalore, Karnataka', 9012527, 1, ''),
(10000038, 'Shweta Lokhande', 'lokhandeshweta20@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 3395525, 1, ''),
(10000045, 'Paka Vishala', 'pakavishala@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Female', 1, 0, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 2345560, 0, ''),
(10000046, 'Tejaswini', 'thejaswini.k.p.22@gmail.com', 'cb17e203f5fa45e4789f7ae50a52954c', '', 'Denial to', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 6150109, 1, ''),
(10000047, 'Shreyanshi', 'shreyanshid17@gmail.com', 'df9c5c4b237481b7aa4605ee7fccd0ec', '1997-09-17', 'Female', 1, 0, 0, 0, 0, '', '', '0', 'I, Shreyanshi Singh Distwar, currently a student of Institute of Engineering &amp; Technology, Lucknow pursuing B.TechÂ with Computer Science &amp; Engineering. I want to join an organization where I can contribute my skills and build my professional career.Â ', '9794558269', 'Lucknow, 226021', 9819050, 0, ''),
(10000048, 'sanmit vartak', 'sanmitvartak.sv@gmail.com', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 1, 0, 0, 0, '', '', '0', 'Say something about you...', '', '+Add address', 1718610, 0, ''),
(10000066, 'Aditya Nag', 'i_aditya.n@Olcademy.in', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Male', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 5385724, 0, ''),
(10000067, 'Rashi Aswani', 'rashi.aswani1225@gmail.com', '3113cbd30d999c1323faafdbc75de2d8', '', '', 1, 0, 0, 0, 0, '', 'Google', '104910807123754857732', 'Say something about you...', '', '+Add address', 1, 1, ''),
(10000068, 'Shweta lokhande', 'Shweta.Lokhande@Olcademy.in', '025236769b31e923ef3adf8d47c04df2', '', 'Female', 1, 1, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 3907688, 1, ''),
(10000069, 'Aindrila', 'i_aindrila.s@olcademy.in', 'd4388c4d4b47c6655b16fe5b13184b32', '', 'Female', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 1173453, 1, ''),
(10000070, 'Simran', 'i_simran.r@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Female', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 5888407, 0, ''),
(10000071, 'Roshit', 'i_roshit.r@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Male', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 4866045, 0, ''),
(10000072, 'Govind', 'i_govind.o@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Male', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 2771113, 0, ''),
(10000073, 'Unnati', 'unnati.maniar@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Female', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 7440750, 0, ''),
(10000074, 'Prashik', 'i_prashik.k@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Male', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 1906452, 0, ''),
(10000075, 'Surabhi', 'i_surabhi.d@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Female', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 9829088, 1, ''),
(10000076, 'Sanjana', 'i_sanjana.d@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Female', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 7767896, 0, ''),
(10000077, 'Akhilesh', 'i_akhilesh.d@olcademy.in', 'b237f65d51fa719a724c4f638d0547c3', '', 'Male', 1, 0, 0, 0, 0, '', '', '', 'Say something about you...', '', '+Add address', 3512024, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `useraccountdetails`
--

DROP TABLE IF EXISTS `useraccountdetails`;
CREATE TABLE IF NOT EXISTS `useraccountdetails` (
  `user_account_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_check` int(11) NOT NULL,
  `user_name` varchar(10000) NOT NULL COMMENT 'user name as per given in bank account',
  `user_bank_account_number` varchar(16) NOT NULL COMMENT 'users bank account number',
  `user_address` varchar(50) NOT NULL COMMENT 'user address as per given in bank account',
  `user_account_bank_branch` varchar(30) NOT NULL COMMENT 'bank branch name',
  `user_account_ifsc_code` varchar(15) NOT NULL COMMENT 'ifsc code of bank branch',
  `is_courses_shown` int(11) NOT NULL,
  `is_promotions_enabled` int(11) NOT NULL,
  `is_announcements_enabled` int(11) NOT NULL,
  `is_mail_notification_enabled` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_bank_name` varchar(50) NOT NULL COMMENT 'bank name',
  `verification_id` varchar(20) NOT NULL,
  `verification_proof` varchar(20) NOT NULL,
  PRIMARY KEY (`user_account_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table store information related to the user bank details which is necessary mainly for instructors and also enabling or disabling of notifications from Olcademy';

-- --------------------------------------------------------

--
-- Table structure for table `userapplied`
--

DROP TABLE IF EXISTS `userapplied`;
CREATE TABLE IF NOT EXISTS `userapplied` (
  `user_id` int(200) NOT NULL COMMENT 'PK, id to show internship application',
  `user_name` varchar(255) NOT NULL COMMENT 'Name of the person',
  `user_email` varchar(255) NOT NULL COMMENT 'Email of the person',
  `path_for_resume` text NOT NULL COMMENT 'Resume path of the file',
  `certificate_id_number` varchar(255) NOT NULL COMMENT 'FK,Certificate id of the person',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores the record Of the applications sent through construction page';

-- --------------------------------------------------------

--
-- Table structure for table `userassessmentstatus`
--

DROP TABLE IF EXISTS `userassessmentstatus`;
CREATE TABLE IF NOT EXISTS `userassessmentstatus` (
  `user_assessment_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment_details_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_assessment_completed` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_assessment_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table store the information for the status and the timestamp of the assessment for particular user whether assessment is completed or not';

-- --------------------------------------------------------

--
-- Table structure for table `usercertificationsdetails`
--

DROP TABLE IF EXISTS `usercertificationsdetails`;
CREATE TABLE IF NOT EXISTS `usercertificationsdetails` (
  `user_certification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key for the certificate',
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  `certification_name` varchar(20000) NOT NULL COMMENT 'Certificate name',
  `certification_authority` varchar(20000) NOT NULL COMMENT 'Certificate Authority',
  `certification_place` varchar(20000) NOT NULL COMMENT 'Certificate Place',
  `certification_from_date` text NOT NULL COMMENT 'Certification start date',
  `certification_to_date` text NOT NULL COMMENT 'Certification End Date',
  PRIMARY KEY (`user_certification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='users present certificate information';

--
-- Dumping data for table `usercertificationsdetails`
--

INSERT INTO `usercertificationsdetails` (`user_certification_id`, `user_id`, `certification_name`, `certification_authority`, `certification_place`, `certification_from_date`, `certification_to_date`) VALUES
(1, 10000013, '', '', 'Online', '', 'Present'),
(2, 10000013, '', '', '', '', ''),
(3, 10000068, '', '', '', '2019-05-09', '2019-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `usereducationdetails`
--

DROP TABLE IF EXISTS `usereducationdetails`;
CREATE TABLE IF NOT EXISTS `usereducationdetails` (
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `user_education_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id for education details',
  `degree_title` text NOT NULL COMMENT 'Title of the degree',
  `institution_name` text NOT NULL COMMENT 'Institute name',
  `degree_start_year` text NOT NULL COMMENT 'Start year of the degree',
  `degree_end_year` text NOT NULL COMMENT 'End year of the degree',
  `degree_grade` varchar(1000) NOT NULL COMMENT 'Grade obtained in the degree',
  PRIMARY KEY (`user_education_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores the record of the education details of the use';

-- --------------------------------------------------------

--
-- Table structure for table `userexperiencedetails`
--

DROP TABLE IF EXISTS `userexperiencedetails`;
CREATE TABLE IF NOT EXISTS `userexperiencedetails` (
  `user_id` int(200) NOT NULL COMMENT 'FK, user id of the user',
  `user_experience_details_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique key of the experience details',
  `company_name` text NOT NULL COMMENT 'Company name of the user',
  `designation_title` text NOT NULL COMMENT 'Designation on which user worked in the company',
  `job_start_year` text NOT NULL COMMENT 'Job start Year',
  `job_end_year` varchar(250) NOT NULL DEFAULT 'Present' COMMENT 'Job End Year',
  PRIMARY KEY (`user_experience_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='This Table stores the experience details of users Job';

--
-- Dumping data for table `userexperiencedetails`
--

INSERT INTO `userexperiencedetails` (`user_id`, `user_experience_details_id`, `company_name`, `designation_title`, `job_start_year`, `job_end_year`) VALUES
(10000013, 1, '', '', '', 'Present'),
(10000068, 2, '', '', '12012-05-05', '2012-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `userinterests`
--

DROP TABLE IF EXISTS `userinterests`;
CREATE TABLE IF NOT EXISTS `userinterests` (
  `user_id` int(11) NOT NULL COMMENT 'FK, id of an user who added interests',
  `user_interest_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, unique id for an user interests',
  `user_interest_title` varchar(20000) NOT NULL COMMENT 'Interests added by the user',
  PRIMARY KEY (`user_interest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores the interests added by users';

-- --------------------------------------------------------

--
-- Table structure for table `userlocationdetails`
--

DROP TABLE IF EXISTS `userlocationdetails`;
CREATE TABLE IF NOT EXISTS `userlocationdetails` (
  `user_id` int(11) NOT NULL COMMENT 'PK, user id for the user',
  `user_city` varchar(255) NOT NULL COMMENT 'city name from where user is accessing the site',
  `user_region_name` varchar(255) NOT NULL COMMENT 'region name from where the user is accessing the site',
  `user_country` varchar(255) NOT NULL COMMENT 'country name from where the user is accessing the site',
  `user_longitude` varchar(255) NOT NULL COMMENT 'longitude of the user',
  `user_latitude` varchar(255) NOT NULL COMMENT 'latitude of the user',
  `user_IP_Address` varchar(100) NOT NULL COMMENT 'ip address of the user',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='It stores all the location details of the users';

--
-- Dumping data for table `userlocationdetails`
--

INSERT INTO `userlocationdetails` (`user_id`, `user_city`, `user_region_name`, `user_country`, `user_longitude`, `user_latitude`, `user_IP_Address`) VALUES
(10000037, '', '', '', '', '', '14.139.57.182, 14.139.57.182'),
(10000000, '', '', '', '', '', '150.107.40.79, 150.107.40.79'),
(10000066, '', '', '', '', '', '103.82.158.54, 103.82.158.54'),
(10000067, '', '', '', '', '', ' 83.137.6.246, 83.137.6.246'),
(10000013, '', '', '', '', '', '2620:0:1074:1:d5ca:23f0:90f1:b608, 2620:0:1074:1:d5ca:23f0:90f1:b608'),
(10000001, '', '', '', '', '', '103.24.63.14, 103.24.63.14'),
(10000038, '', '', '', '', '', '2405:204:a089:7459:3d14:47c7:9ee4:8698, 2405:204:a089:7459:3d14:47c7:9ee4:8698'),
(10000068, '', '', '', '', '', '1.186.174.234, 1.186.174.234'),
(10000016, '', '', '', '', '', '103.24.63.14, 103.24.63.14'),
(10000020, '', '', '', '', '', '183.83.135.202, 183.83.135.202'),
(10000047, '', '', '', '', '', '89.100.100.81, 89.100.100.81'),
(10000070, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000069, '', '', '', '', '', '2405:204:4097:d88c:54fa:e0b9:3a78:67f9, 2405:204:4097:d88c:54fa:e0b9:3a78:67f9'),
(10000071, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000072, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000073, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000074, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000075, '', '', '', '', '', '2409:4061:692:86:d4b1:dff:fe37:60a5, 2409:4061:692:86:d4b1:dff:fe37:60a5'),
(10000076, '', '', '', '', '', ' 89.100.100.81, 89.100.100.81'),
(10000077, '', '', '', '', '', '89.100.100.81, 89.100.100.81'),
(10000002, '', '', '', '', '', '115.98.161.215, 115.98.161.215');

-- --------------------------------------------------------

--
-- Table structure for table `userotherlinks`
--

DROP TABLE IF EXISTS `userotherlinks`;
CREATE TABLE IF NOT EXISTS `userotherlinks` (
  `user_other_link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the other links of the user',
  `user_id` int(11) NOT NULL COMMENT 'id of the user ',
  `user_links` varchar(20000) NOT NULL COMMENT 'link or url added ',
  PRIMARY KEY (`user_other_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='The links of user other than social media links are stored ';

-- --------------------------------------------------------

--
-- Table structure for table `userprofileimage`
--

DROP TABLE IF EXISTS `userprofileimage`;
CREATE TABLE IF NOT EXISTS `userprofileimage` (
  `user_profile_image_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the uploaded image',
  `user_id` int(200) NOT NULL COMMENT 'FK, id of an user that image uploaded',
  `profile_image_path` varchar(1000) NOT NULL COMMENT 'uploaded image path name',
  PRIMARY KEY (`user_profile_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COMMENT='This table store the profile images of the user.';

--
-- Dumping data for table `userprofileimage`
--

INSERT INTO `userprofileimage` (`user_profile_image_id`, `user_id`, `profile_image_path`) VALUES
(1, 10000000, 'upload/default/avatar-4.jpg'),
(2, 10000001, 'upload/default/avatar-6.jpg'),
(3, 10000002, 'upload/default/profile2.jpeg'),
(4, 10000003, 'upload/default/profile1.png'),
(55, 10000071, 'default-images/profile/profile1.png'),
(8, 10000010, 'upload/default/profile1.png'),
(9, 10000011, 'upload/default/profile1.png'),
(10, 10000012, 'upload/default/profile1.png'),
(11, 10000013, 'upload/default/people.png'),
(54, 10000070, 'default-images/profile/people.png'),
(14, 10000016, 'upload/default/profile1.png'),
(53, 10000069, 'default-images/profile/people.png'),
(16, 10000018, 'upload/default/profile1.png'),
(18, 10000020, 'upload/default/profile1.png'),
(52, 10000068, 'images/844007155714770510000068_download.jpg'),
(51, 10000067, 'default-images/profile/denialtodisclose.jpg'),
(50, 10000066, 'default-images/profile/profile1.png'),
(49, 10000065, 'default-images/profile/denialtodisclose.jpg'),
(27, 10000029, 'upload/default/profile1.png'),
(46, 10000046, 'upload/default/people.png'),
(29, 10000031, 'upload/default/people.png'),
(30, 10000032, 'upload/default/profile1.png'),
(31, 10000033, 'images/940549155447253710000033_1219332_bdd7.jpg'),
(32, 10000045, 'upload/default/people.png'),
(33, 10000047, 'images/579357155378575110000047_a2.jpg'),
(34, 10000048, 'images/946661155370478710000048_Shiv-Jayanti-2015-Images-HD-Photos.jpg'),
(36, 10000050, 'upload/default/people.png'),
(37, 10000051, 'images/911839155371504610000051_profile2.jpeg'),
(38, 10000052, 'images/381816155371509910000052_569917154412093910000000_1.png'),
(39, 10000053, 'upload/default/people.png'),
(47, 10000038, 'images/276050155447659810000038_ganpati111.jpg'),
(41, 10000055, 'upload/default/profile1.png'),
(44, 10000034, 'upload/default/profile1.png'),
(45, 10000037, 'images/585161155449109810000037_IMG_20180824_181502.jpg'),
(56, 10000072, 'default-images/profile/profile1.png'),
(57, 10000073, 'default-images/profile/people.png'),
(58, 10000074, 'default-images/profile/profile1.png'),
(59, 10000075, 'default-images/profile/people.png'),
(60, 10000076, 'default-images/profile/people.png'),
(61, 10000077, 'default-images/profile/profile1.png');

-- --------------------------------------------------------

--
-- Table structure for table `userprojectdetails`
--

DROP TABLE IF EXISTS `userprojectdetails`;
CREATE TABLE IF NOT EXISTS `userprojectdetails` (
  `user_project_details_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the project',
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  `project_name` varchar(20000) NOT NULL COMMENT 'Project name',
  `no_of_team_members` text NOT NULL COMMENT 'No. of team members (in Number)',
  `project_start_date` text NOT NULL COMMENT 'Project start date',
  `project_end_date` text NOT NULL COMMENT 'project end date',
  `project_description` varchar(20000) NOT NULL COMMENT 'Description of the project',
  PRIMARY KEY (`user_project_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='This table stores the record of  the user projects';

--
-- Dumping data for table `userprojectdetails`
--

INSERT INTO `userprojectdetails` (`user_project_details_id`, `user_id`, `project_name`, `no_of_team_members`, `project_start_date`, `project_end_date`, `project_description`) VALUES
(1, 10000013, '', 'Select number of Team members', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userskills`
--

DROP TABLE IF EXISTS `userskills`;
CREATE TABLE IF NOT EXISTS `userskills` (
  `user_id` varchar(100) NOT NULL COMMENT 'FK, id of an user',
  `user_skills_id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'PK, id of user skills',
  `user_skill` text NOT NULL COMMENT 'skill added by an user',
  `user_skill_rating` int(11) NOT NULL COMMENT 'rating given for a skill',
  PRIMARY KEY (`user_skills_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userskills`
--

INSERT INTO `userskills` (`user_id`, `user_skills_id`, `user_skill`, `user_skill_rating`) VALUES
('10000013', 1, 'Agile Framework', 5),
('10000013', 2, 'Scrum Master', 5);

-- --------------------------------------------------------

--
-- Table structure for table `usersocialmedialinks`
--

DROP TABLE IF EXISTS `usersocialmedialinks`;
CREATE TABLE IF NOT EXISTS `usersocialmedialinks` (
  `user_id` int(11) NOT NULL COMMENT 'FK, user id of the user',
  `user_google_link` varchar(1000) NOT NULL COMMENT 'Google Profile link of the user',
  `user_twitter_link` varchar(1000) NOT NULL COMMENT 'Twitter Profile link of the user',
  `user_facebook_link` varchar(1000) NOT NULL COMMENT 'Facebook Profile Link of the user',
  `user_linkedin_link` varchar(1000) NOT NULL COMMENT 'Linkedin Profile Link of the user',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This Table stores the social media links of use';

-- --------------------------------------------------------

--
-- Table structure for table `usertransactioninformation`
--

DROP TABLE IF EXISTS `usertransactioninformation`;
CREATE TABLE IF NOT EXISTS `usertransactioninformation` (
  `user_transaction_information_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the transaction (auto increament)',
  `user_id` bigint(10) NOT NULL COMMENT 'FK, user id of the user',
  `generated_transaction_id` varchar(100) NOT NULL COMMENT 'Transaction ID generated by Olcademy',
  `amount_transferred` int(6) NOT NULL COMMENT 'Amount that is transferred',
  `course_section_id` varchar(100) NOT NULL COMMENT 'FK, section id of the lecture',
  `course_batch_id` varchar(100) NOT NULL COMMENT 'FK, batch id of the batch',
  `course_id` varchar(100) NOT NULL COMMENT 'FK, course id of the course',
  `transaction_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timestamp of the transaction',
  PRIMARY KEY (`user_transaction_information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='store user transation information';

--
-- Dumping data for table `usertransactioninformation`
--

INSERT INTO `usertransactioninformation` (`user_transaction_information_id`, `user_id`, `generated_transaction_id`, `amount_transferred`, `course_section_id`, `course_batch_id`, `course_id`, `transaction_timestamp`) VALUES
(1, 10000037, '45a9ba749fb5fc99c1b7', 228, '5392391556254396', '2', '842155625327610000037', '2019-04-30 18:30:04'),
(2, 10000037, '49aa5b8edc8b5c13bbf1', 228, '4637481556255314', '2', '842155625327610000037', '2019-05-02 18:30:03'),
(3, 10000037, 'cf397a49d32fa4963ddb', 228, '2079401556255647', '2', '842155625327610000037', '2019-05-04 18:30:04'),
(4, 10000037, 'f85f1bcd8e8af3bd8a7d', 228, '6289071556255921', '2', '842155625327610000037', '2019-05-06 18:30:03'),
(5, 10000037, 'd5f8991ac7241eceb3ff', 228, '7689191556256095', '2', '842155625327610000037', '2019-05-07 18:30:04'),
(6, 10000037, 'e6c978bbbe022ff16957', 190, '5392391556254396', '3', '842155625327610000037', '2019-05-08 18:30:03'),
(7, 10000037, '83dd59354031d2a80b06', 228, '5275821556256252', '2', '842155625327610000037', '2019-05-09 18:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `userwallet`
--

DROP TABLE IF EXISTS `userwallet`;
CREATE TABLE IF NOT EXISTS `userwallet` (
  `user_wallet_id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'PK, id for the wallet',
  `user_id` bigint(10) NOT NULL COMMENT 'user id of the user',
  `user_wallet_amount_status` bigint(10) NOT NULL COMMENT 'Status of the amount (Rs) in the wallet of the user',
  `wallet_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timestamp when the user''s wallet is last updated',
  PRIMARY KEY (`user_wallet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table store the total amount transferred to the instructor ';

-- --------------------------------------------------------

--
-- Table structure for table `userwalletcommission`
--

DROP TABLE IF EXISTS `userwalletcommission`;
CREATE TABLE IF NOT EXISTS `userwalletcommission` (
  `user_wallet_commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK,id for the commission',
  `user_id` bigint(10) NOT NULL COMMENT 'FK, user id of the user',
  `course_batch_id` int(255) NOT NULL COMMENT 'FK, batch id of the batch',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of the course',
  `commission_amount` int(100) NOT NULL COMMENT 'Commission amount from the Instructor',
  `total_amount_recieved` int(100) NOT NULL COMMENT 'Total amount recieved after the students have enrolled in the course',
  `remaining_amount` int(100) NOT NULL COMMENT 'Remaining amount after deducting the commission from the total amount',
  PRIMARY KEY (`user_wallet_commission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This table stores commision amount which will be the commission charged to student(5%) ';

--
-- Dumping data for table `userwalletcommission`
--

INSERT INTO `userwalletcommission` (`user_wallet_commission_id`, `user_id`, `course_batch_id`, `course_id`, `commission_amount`, `total_amount_recieved`, `remaining_amount`) VALUES
(1, 10000037, 2, '842155625327610000037', 120, 2400, 2280),
(2, 10000068, 5, '709155629242110000068', 200, 4000, 3800),
(3, 10000037, 3, '842155625327610000037', 100, 2000, 1900);

-- --------------------------------------------------------

--
-- Table structure for table `userwalletsecuritydeposit`
--

DROP TABLE IF EXISTS `userwalletsecuritydeposit`;
CREATE TABLE IF NOT EXISTS `userwalletsecuritydeposit` (
  `user_wallet_security_deposit` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Pk, id for the security deposit',
  `user_id` bigint(10) NOT NULL COMMENT 'FK, user id of the user',
  `course_batch_id` int(255) NOT NULL COMMENT 'FK, batch id of the batch',
  `course_id` varchar(1000) NOT NULL COMMENT 'FK, course id of the course',
  `user_security_amount` int(100) NOT NULL COMMENT 'Security amount of the course',
  `user_remaining_amount` int(100) NOT NULL COMMENT 'Remaining Teacher Amount after reducing the security amount ',
  `visible_in_wallet` varchar(30) NOT NULL COMMENT 'Status of the security amount to show in wallet ',
  `wallet_transfer` varchar(30) NOT NULL COMMENT 'status of the security amount to show in wallet as withdrawable',
  `transaction_id` varchar(100) NOT NULL COMMENT 'unique transaction id of the transaction',
  `transfer_date` date NOT NULL COMMENT 'transfer date on which the security amount will be transferred',
  PRIMARY KEY (`user_wallet_security_deposit`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This table stores security deposit amount which will be on hold till the last lecture';

--
-- Dumping data for table `userwalletsecuritydeposit`
--

INSERT INTO `userwalletsecuritydeposit` (`user_wallet_security_deposit`, `user_id`, `course_batch_id`, `course_id`, `user_security_amount`, `user_remaining_amount`, `visible_in_wallet`, `wallet_transfer`, `transaction_id`, `transfer_date`) VALUES
(1, 10000037, 2, '842155625327610000037', 912, 1368, 'Pending', 'Pending', '', '0000-00-00'),
(2, 10000068, 5, '709155629242110000068', 1520, 2280, 'Pending', 'Pending', '', '0000-00-00'),
(3, 10000037, 3, '842155625327610000037', 760, 1140, 'Pending', 'Pending', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `whatwillstudentlearn`
--

DROP TABLE IF EXISTS `whatwillstudentlearn`;
CREATE TABLE IF NOT EXISTS `whatwillstudentlearn` (
  `student_learn_id` int(200) NOT NULL AUTO_INCREMENT COMMENT 'PK, store the count for what will i learn(as an autoincrement)',
  `course_id` varchar(50) NOT NULL COMMENT 'FK, course id of the course',
  `student_learn_description` varchar(1000) NOT NULL COMMENT 'Description for what will student learn after enrolling in course',
  PRIMARY KEY (`student_learn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1 COMMENT='This table store the what will student learn content added by instructor through course dashboard ';

--
-- Dumping data for table `whatwillstudentlearn`
--

INSERT INTO `whatwillstudentlearn` (`student_learn_id`, `course_id`, `student_learn_description`) VALUES
(1, '643155619069510000038', 'Will learn complete aspects software manual testing'),
(2, '842155625327610000037', 'Pass the AWS Certified Developer - Associate 2019 Exam Become confident in creating basic Python and PHP code to manipulate AWS environments Become intimately familiar with the AWS platform from a developer perspective. Become Amazon Certified Become A Cloud Guru'),
(30, '925155628891110000000', 'Able to create web applications,database applications,and they will have enough knowledge on coding.'),
(54, '709155629242110000068', 'Will learn to control mind'),
(51, '245155649317410000013', 'All about Agile framework and implementation'),
(52, '245155649317410000013', 'The most popular Agile frameworks include Scrum, Crystal, Dynamic Systems Development Method, and Feature-Driven Development. ... While each Agile methodology type has its own unique qualities, they all incorporate elements of iterative development and continuous feedback'),
(50, '601155654042710000000', 'java developer'),
(49, '601155654042710000000', 'they will be having enough knowledge on coding'),
(57, '486155657962310000013', 'Confidence and even a little knowledge of the language can make a difference in attitude when you meet people from other countries. Speaking another language helps to break down barriers.'),
(56, '332155663898110000000', 'Creation of your own applications and games!'),
(58, '361155718039510000013', 'Confidence and vision');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
