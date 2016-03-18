-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 10:25 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group13db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

DROP TABLE IF EXISTS `account_details`;
CREATE TABLE IF NOT EXISTS `account_details` (
  `user_id` int(11) NOT NULL,
  `account_type` varchar(64) DEFAULT NULL,
  `free_trail_used` tinyint(1) DEFAULT NULL,
  `account_expired` date DEFAULT NULL,
  KEY `User_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`user_id`, `account_type`, `free_trail_used`, `account_expired`) VALUES
(1, 'Free', 1, '2016-02-02'),
(2, 'Premium', 1, '2017-03-04'),
(3, 'Premium', 0, '2017-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `password` char(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `Email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned_reports`
--

DROP TABLE IF EXISTS `banned_reports`;
CREATE TABLE IF NOT EXISTS `banned_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `reporter_id` int(11) NOT NULL,
  `reportee_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `resolved` tinyint(1) NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `Reporter_id` (`reporter_id`),
  KEY `Reportee_id` (`reportee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned_users`
--

DROP TABLE IF EXISTS `banned_users`;
CREATE TABLE IF NOT EXISTS `banned_users` (
  `user_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  KEY `User_id` (`user_id`),
  KEY `Report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `body_type`
--

DROP TABLE IF EXISTS `body_type`;
CREATE TABLE IF NOT EXISTS `body_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `body_type`
--

INSERT INTO `body_type` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'I''d rather not say'),
(3, 'Thin'),
(4, 'Overweight'),
(5, 'Skinny'),
(6, 'Average'),
(7, 'Fit'),
(8, 'Athletic'),
(9, 'Jacked'),
(10, 'A little extra'),
(11, 'Curvy'),
(12, 'Full figured'),
(13, 'Slim');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  PRIMARY KEY (`conversation_id`),
  KEY `User1_id` (`user1_id`),
  KEY `User2_id` (`user2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drinker`
--

DROP TABLE IF EXISTS `drinker`;
CREATE TABLE IF NOT EXISTS `drinker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinker`
--

INSERT INTO `drinker` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Social Drinker'),
(3, 'Occasional Drinker'),
(4, 'Regular Drinker'),
(5, 'Doesn''t drink');

-- --------------------------------------------------------

--
-- Table structure for table `ethnicity`
--

DROP TABLE IF EXISTS `ethnicity`;
CREATE TABLE IF NOT EXISTS `ethnicity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ethnicity`
--

INSERT INTO `ethnicity` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'White Irish'),
(3, 'White Traveller Irish'),
(4, 'Other White'),
(5, 'Asian'),
(6, 'Black'),
(7, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Male'),
(3, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `has_children`
--

DROP TABLE IF EXISTS `has_children`;
CREATE TABLE IF NOT EXISTS `has_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_children`
--

INSERT INTO `has_children` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Yes'),
(3, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `height`
--

DROP TABLE IF EXISTS `height`;
CREATE TABLE IF NOT EXISTS `height` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `height`
--

INSERT INTO `height` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Less than 130cm'),
(3, '130-140cm'),
(4, '140-150cm'),
(5, '150-160cm'),
(6, '160-170cm'),
(7, 'More than 170cm');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `User_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'I''d rather not say'),
(3, 'Unemployed'),
(4, 'Less then 10k per year'),
(5, '10k to 20k per year'),
(6, '20k to 40k per year'),
(7, '40k to 60k per year'),
(8, '60k to 80k per year'),
(9, '80k to 100k per year'),
(10, '100k to 120k per year'),
(11, 'More than 120k per year');

-- --------------------------------------------------------

--
-- Table structure for table `intent`
--

DROP TABLE IF EXISTS `intent`;
CREATE TABLE IF NOT EXISTS `intent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intent`
--

INSERT INTO `intent` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Friendship'),
(3, 'Hook Up'),
(4, 'Casual Relationship'),
(5, 'Relationship'),
(6, 'Forever Love');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

DROP TABLE IF EXISTS `marital_status`;
CREATE TABLE IF NOT EXISTS `marital_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Single'),
(3, 'Married'),
(4, 'Seperated'),
(5, 'Divorced'),
(6, 'Widdowed'),
(7, 'It''s Complicated'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_received` datetime NOT NULL,
  `message_text` text NOT NULL,
  `profile_visable` tinyint(1) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `Sender_id` (`sender_id`),
  KEY `Recipient_id` (`recipient_id`),
  KEY `Conversation_id` (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preference_details`
--

DROP TABLE IF EXISTS `preference_details`;
CREATE TABLE IF NOT EXISTS `preference_details` (
  `user_id` int(11) NOT NULL,
  `tag_line` varchar(256) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `seeking` int(11) DEFAULT NULL,
  `intent` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ethnicity` int(11) DEFAULT NULL,
  `body_type` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `has_children` int(11) DEFAULT NULL,
  `wants_children` int(11) DEFAULT NULL,
  `smoker` int(11) DEFAULT NULL,
  `drinker` int(11) DEFAULT NULL,
  `about_me` text,
  KEY `User_id` (`user_id`),
  KEY `gender` (`gender`),
  KEY `seeking` (`seeking`),
  KEY `intent` (`intent`),
  KEY `height` (`height`),
  KEY `ethnicity` (`ethnicity`),
  KEY `body_type` (`body_type`),
  KEY `religion` (`religion`),
  KEY `marital_status` (`marital_status`),
  KEY `income` (`income`),
  KEY `has_children` (`has_children`),
  KEY `wants_children` (`wants_children`),
  KEY `smoker` (`smoker`),
  KEY `drinker` (`drinker`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preference_details`
--

INSERT INTO `preference_details` (`user_id`, `tag_line`, `city`, `gender`, `seeking`, `intent`, `date_of_birth`, `height`, `ethnicity`, `body_type`, `religion`, `marital_status`, `income`, `has_children`, `wants_children`, `smoker`, `drinker`, `about_me`) VALUES
(1, 'I''m a fun loving girl', 'Kerry', 3, 2, 6, '1991-03-03', 3, 2, 3, 3, 5, 8, 3, 4, 3, 2, 'I''m a Grad Student living in Monaghan but originally from Kerry. I like long walks on the beach and ice-cream'),
(2, 'Hashtag farmer life', 'Sligo', 2, 3, 3, '1980-12-22', 7, 2, 11, 5, 6, 7, 2, 4, 2, 4, 'I''m really only interested in the farming life. Anything to do with farming gets my blood flowing. I love the smell of silage in the morning and grass all day.'),
(3, 'See you in Ibiza', 'Dublin', 2, 3, 3, '1996-05-19', 4, 2, 9, 2, 2, 3, 3, 3, 2, 4, 'Living for the weekend. Into fast cars and fast women. Hit me up if you like boy race cars, repetitive music and mind numbingly boring conversations');

-- --------------------------------------------------------

--
-- Table structure for table `registration_details`
--

DROP TABLE IF EXISTS `registration_details`;
CREATE TABLE IF NOT EXISTS `registration_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `Username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_details`
--

INSERT INTO `registration_details` (`user_id`, `username`, `first_name`, `last_name`, `password`, `email`) VALUES
(1, 'lollypop23', 'Lily', 'Lovejoy', 'LilyLovejoy1', 'lily@gmail.com'),
(2, 'FarmerFred', 'Fred', 'Connors', 'FredConnors1', 'Freddy@yahoo.ie'),
(3, 'PartyBoy56', 'Jared', 'Armstein', 'JaredArmstein1', 'Jarjar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

DROP TABLE IF EXISTS `religion`;
CREATE TABLE IF NOT EXISTS `religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'I''d rather not say'),
(3, 'Athiest'),
(4, 'Christianity'),
(5, 'Islam'),
(6, 'Hinduism'),
(7, 'Buddhism'),
(8, 'Judaism'),
(9, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `seeking`
--

DROP TABLE IF EXISTS `seeking`;
CREATE TABLE IF NOT EXISTS `seeking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seeking`
--

INSERT INTO `seeking` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Male'),
(3, 'Female'),
(4, 'Both');

-- --------------------------------------------------------

--
-- Table structure for table `smoker`
--

DROP TABLE IF EXISTS `smoker`;
CREATE TABLE IF NOT EXISTS `smoker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smoker`
--

INSERT INTO `smoker` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Yes'),
(3, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `unique_hobby`
--

DROP TABLE IF EXISTS `unique_hobby`;
CREATE TABLE IF NOT EXISTS `unique_hobby` (
  `user_id` int(11) NOT NULL,
  `unique` varchar(256) NOT NULL,
  KEY `unique_hobby_ibfk_1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unique_hobby`
--

INSERT INTO `unique_hobby` (`user_id`, `unique`) VALUES
(1, 'Sewing'),
(2, 'Sheering sheep'),
(3, 'Sunbathing');

-- --------------------------------------------------------

--
-- Table structure for table `user_hobbies`
--

DROP TABLE IF EXISTS `user_hobbies`;
CREATE TABLE IF NOT EXISTS `user_hobbies` (
  `hobby_id` int(11) NOT NULL AUTO_INCREMENT,
  `hobby_name` varchar(64) NOT NULL,
  PRIMARY KEY (`hobby_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_hobbies`
--

INSERT INTO `user_hobbies` (`hobby_id`, `hobby_name`) VALUES
(1, 'Reading'),
(2, 'Cinema'),
(3, 'Shopping'),
(4, 'Socializing'),
(5, 'Travelling'),
(6, 'Walking'),
(7, 'Exercise'),
(8, 'Soccer'),
(9, 'Dancing'),
(10, 'Horses'),
(11, 'Painting'),
(12, 'Running'),
(13, 'Eating Out'),
(14, 'Cooking'),
(15, 'Computers'),
(16, 'Bowling'),
(17, 'Writing'),
(18, 'Skiing'),
(19, 'Crafts'),
(20, 'Golf'),
(21, 'Chess'),
(22, 'Gymnastics'),
(23, 'Cycling'),
(24, 'Swimming'),
(25, 'Surfing'),
(26, 'Hiking'),
(27, 'Video Games'),
(28, 'Volleyball'),
(29, 'Badminton'),
(30, 'Gym'),
(31, 'Parkour'),
(32, 'Fashion'),
(33, 'Yoga'),
(34, 'Basketball'),
(35, 'Boxing');

-- --------------------------------------------------------

--
-- Table structure for table `user_hobby_preferences`
--

DROP TABLE IF EXISTS `user_hobby_preferences`;
CREATE TABLE IF NOT EXISTS `user_hobby_preferences` (
  `user_id` int(11) NOT NULL,
  `hobby_id` int(11) NOT NULL,
  `hobby_preference` tinyint(1) NOT NULL,
  KEY `user_hobby_preferences_ibfk_1` (`user_id`),
  KEY `hobby_id` (`hobby_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_hobby_preferences`
--

INSERT INTO `user_hobby_preferences` (`user_id`, `hobby_id`, `hobby_preference`) VALUES
(1, 1, 1),
(1, 2, 0),
(1, 3, 1),
(1, 4, 1),
(1, 5, 0),
(1, 6, 1),
(1, 7, 0),
(1, 8, 0),
(1, 9, 1),
(1, 10, 0),
(1, 11, 1),
(1, 12, 1),
(1, 13, 0),
(1, 14, 0),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 0),
(1, 19, 1),
(1, 20, 1),
(1, 21, 0),
(1, 22, 1),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(1, 26, 0),
(1, 27, 0),
(1, 28, 1),
(1, 29, 0),
(1, 30, 1),
(1, 31, 1),
(1, 32, 0),
(1, 33, 0),
(1, 34, 1),
(1, 35, 0),
(2, 1, 1),
(2, 2, 0),
(2, 3, 0),
(2, 4, 1),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 1),
(2, 13, 0),
(2, 14, 0),
(2, 15, 1),
(2, 16, 0),
(2, 17, 1),
(2, 18, 0),
(2, 19, 1),
(2, 20, 1),
(2, 21, 0),
(2, 22, 0),
(2, 23, 1),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(2, 28, 0),
(2, 29, 0),
(2, 30, 0),
(2, 31, 0),
(2, 32, 0),
(2, 33, 0),
(2, 34, 0),
(2, 35, 0),
(3, 1, 1),
(3, 2, 1),
(3, 3, 1),
(3, 4, 0),
(3, 5, 0),
(3, 6, 0),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 0),
(3, 11, 0),
(3, 12, 0),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(3, 19, 1),
(3, 20, 1),
(3, 21, 1),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 1),
(3, 26, 1),
(3, 27, 1),
(3, 28, 0),
(3, 29, 0),
(3, 30, 0),
(3, 31, 1),
(3, 32, 1),
(3, 33, 1),
(3, 34, 0),
(3, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wants_children`
--

DROP TABLE IF EXISTS `wants_children`;
CREATE TABLE IF NOT EXISTS `wants_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wants_children`
--

INSERT INTO `wants_children` (`id`, `option`) VALUES
(1, 'Unselected'),
(2, 'Yes'),
(3, 'No'),
(4, 'Maybe');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_details`
--
ALTER TABLE `account_details`
  ADD CONSTRAINT `account_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banned_reports`
--
ALTER TABLE `banned_reports`
  ADD CONSTRAINT `banned_reports_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banned_reports_ibfk_2` FOREIGN KEY (`reportee_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banned_users`
--
ALTER TABLE `banned_users`
  ADD CONSTRAINT `banned_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banned_users_ibfk_2` FOREIGN KEY (`report_id`) REFERENCES `banned_reports` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conversations_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preference_details`
--
ALTER TABLE `preference_details`
  ADD CONSTRAINT `preference_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preference_details_ibfk_10` FOREIGN KEY (`income`) REFERENCES `income` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_11` FOREIGN KEY (`has_children`) REFERENCES `has_children` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_12` FOREIGN KEY (`wants_children`) REFERENCES `wants_children` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_13` FOREIGN KEY (`smoker`) REFERENCES `smoker` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_14` FOREIGN KEY (`drinker`) REFERENCES `drinker` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_2` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_3` FOREIGN KEY (`seeking`) REFERENCES `seeking` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_4` FOREIGN KEY (`intent`) REFERENCES `intent` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_5` FOREIGN KEY (`height`) REFERENCES `height` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_6` FOREIGN KEY (`ethnicity`) REFERENCES `ethnicity` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_7` FOREIGN KEY (`body_type`) REFERENCES `body_type` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_8` FOREIGN KEY (`religion`) REFERENCES `religion` (`id`),
  ADD CONSTRAINT `preference_details_ibfk_9` FOREIGN KEY (`marital_status`) REFERENCES `marital_status` (`id`);

--
-- Constraints for table `unique_hobby`
--
ALTER TABLE `unique_hobby`
  ADD CONSTRAINT `unique_hobby_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_hobby_preferences`
--
ALTER TABLE `user_hobby_preferences`
  ADD CONSTRAINT `user_hobby_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registration_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_hobby_preferences_ibfk_2` FOREIGN KEY (`hobby_id`) REFERENCES `user_hobbies` (`hobby_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
