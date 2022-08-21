-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2014 at 07:56 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_bridge`
--

CREATE TABLE IF NOT EXISTS `academic_bridge` (
  `academic_bridge_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  PRIMARY KEY (`academic_bridge_id`),
  KEY `c_id` (`c_id`),
  KEY `academic_id` (`academic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `academic_bridge`
--


-- --------------------------------------------------------

--
-- Table structure for table `academic_info`
--

CREATE TABLE IF NOT EXISTS `academic_info` (
  `academic_id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_infomations` varchar(200) NOT NULL,
  PRIMARY KEY (`academic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `academic_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `Fname` varchar(14) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `candidate`
--


-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `company_location` varchar(200) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `company`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_contact_numbers`
--

CREATE TABLE IF NOT EXISTS `company_contact_numbers` (
  `company_contact_num_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_contacts` int(14) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`company_contact_num_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `company_contact_numbers`
--


-- --------------------------------------------------------

--
-- Table structure for table `c_j_bridge`
--

CREATE TABLE IF NOT EXISTS `c_j_bridge` (
  `bridge_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`bridge_id`),
  KEY `c_id` (`c_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `c_j_bridge`
--


-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_description` varchar(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job`
--


-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE IF NOT EXISTS `job_application` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`apply_id`),
  KEY `job_id` (`job_id`),
  KEY `c_id` (`c_id`),
  KEY `company_id` (`company_id`),
  KEY `c_id_2` (`c_id`),
  KEY `job_id_2` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job_application`
--


-- --------------------------------------------------------

--
-- Table structure for table `job_application_status`
--

CREATE TABLE IF NOT EXISTS `job_application_status` (
  `job_application_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_application_status` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`job_application_status_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job_application_status`
--


-- --------------------------------------------------------

--
-- Table structure for table `professional_bridge`
--

CREATE TABLE IF NOT EXISTS `professional_bridge` (
  `professional_bridge_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `professional_id` int(11) NOT NULL,
  PRIMARY KEY (`professional_bridge_id`),
  KEY `c_id` (`c_id`),
  KEY `professional_id` (`professional_id`),
  KEY `c_id_2` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `professional_bridge`
--


-- --------------------------------------------------------

--
-- Table structure for table `professional_qualification`
--

CREATE TABLE IF NOT EXISTS `professional_qualification` (
  `professional_id` int(11) NOT NULL AUTO_INCREMENT,
  `professional_qualifications` varchar(200) NOT NULL,
  PRIMARY KEY (`professional_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `professional_qualification`
--


-- --------------------------------------------------------

--
-- Table structure for table `professional_skills`
--

CREATE TABLE IF NOT EXISTS `professional_skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `professional_skills` varchar(200) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `professional_skills`
--


-- --------------------------------------------------------

--
-- Table structure for table `short_list`
--

CREATE TABLE IF NOT EXISTS `short_list` (
  `short_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`short_list_id`),
  KEY `company_id` (`company_id`),
  KEY `c_id` (`c_id`),
  KEY `job_id` (`job_id`),
  KEY `c_id_2` (`c_id`),
  KEY `company_id_2` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `short_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `skill_bridge`
--

CREATE TABLE IF NOT EXISTS `skill_bridge` (
  `skill_bridge_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_bridge_id`),
  KEY `c_id` (`c_id`),
  KEY `skill_id` (`skill_id`),
  KEY `c_id_2` (`c_id`),
  KEY `c_id_3` (`c_id`),
  KEY `skill_id_2` (`skill_id`),
  KEY `c_id_4` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `skill_bridge`
--


-- --------------------------------------------------------

--
-- Table structure for table `work_experince`
--

CREATE TABLE IF NOT EXISTS `work_experince` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_experinces` varchar(200) NOT NULL,
  `in_company` varchar(200) NOT NULL,
  `in_field` varchar(200) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `work_experince`
--


-- --------------------------------------------------------

--
-- Table structure for table `work_experince_bridge`
--

CREATE TABLE IF NOT EXISTS `work_experince_bridge` (
  `work_bridge_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  PRIMARY KEY (`work_bridge_id`),
  KEY `c_id` (`c_id`),
  KEY `work_id` (`work_id`),
  KEY `c_id_2` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `work_experince_bridge`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_bridge`
--
ALTER TABLE `academic_bridge`
  ADD CONSTRAINT `academic_bridge_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `academic_bridge_ibfk_2` FOREIGN KEY (`academic_id`) REFERENCES `academic_info` (`academic_id`);

--
-- Constraints for table `company_contact_numbers`
--
ALTER TABLE `company_contact_numbers`
  ADD CONSTRAINT `company_contact_numbers_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `c_j_bridge`
--
ALTER TABLE `c_j_bridge`
  ADD CONSTRAINT `c_j_bridge_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `c_j_bridge_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `job_application`
--
ALTER TABLE `job_application`
  ADD CONSTRAINT `job_application_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `job_application_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `job_application_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `job_application_status`
--
ALTER TABLE `job_application_status`
  ADD CONSTRAINT `job_application_status_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `professional_bridge`
--
ALTER TABLE `professional_bridge`
  ADD CONSTRAINT `professional_bridge_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `professional_bridge_ibfk_2` FOREIGN KEY (`professional_id`) REFERENCES `professional_qualification` (`professional_id`);

--
-- Constraints for table `short_list`
--
ALTER TABLE `short_list`
  ADD CONSTRAINT `short_list_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `short_list_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `short_list_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `skill_bridge`
--
ALTER TABLE `skill_bridge`
  ADD CONSTRAINT `skill_bridge_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `professional_skills` (`skill_id`),
  ADD CONSTRAINT `skill_bridge_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`);

--
-- Constraints for table `work_experince_bridge`
--
ALTER TABLE `work_experince_bridge`
  ADD CONSTRAINT `work_experince_bridge_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `work_experince_bridge_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `work_experince` (`work_id`);
