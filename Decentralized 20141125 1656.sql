-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema decentralized
--

CREATE DATABASE IF NOT EXISTS decentralized;
USE decentralized;

--
-- Definition of table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `Name` varchar(100) NOT NULL default '',
  `Pass` varchar(45) NOT NULL default '',
  `Role` varchar(45) NOT NULL default '',
  `Gender` varchar(45) NOT NULL default '',
  `Age` varchar(45) NOT NULL default '',
  `Email` varchar(45) NOT NULL default '',
  `CDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `Status` varchar(45) NOT NULL default '',
  `Kid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` (`Name`,`Pass`,`Role`,`Gender`,`Age`,`Email`,`CDate`,`Status`,`Kid`) VALUES 
 ('Creator','123','Creator','Male','20','kalanghiyakumarjpinfotech@gmail.com','2025-11-14 00:00:00','NO','Waiting'),
 ('Reader','456','Reader','Male','21','kumar161994@gmail.com','2025-11-14 00:00:00','NO','Waiting'),
 ('Writer','789','Writer','Male','22','k8940258570@gmail.com','2025-11-14 00:00:00','NO','Waiting');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;


--
-- Definition of table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `file` longblob NOT NULL,
  `subject` varchar(100) NOT NULL,
  `filetype` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `CDate` date NOT NULL,
  `owner` varchar(45) NOT NULL,
  `size` longtext NOT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`file`,`subject`,`filetype`,`filename`,`CDate`,`owner`,`size`,`data`) VALUES 
 (0x687474703A2F2F617263686974656374732E647A6F6E652E636F6D2F61727469636C65732F72756E2D6170616368652D686976652D77696E646F77732D362D656173790D0A687474703A2F2F78757A68616F746563682E626C6F6773706F742E696E2F323031332F30312F696E7374616C6C696E672D686976652D6F6E2D77696E646F77732E68746D6C0D0A687474703A2F2F7777772E726F6869746D656E6F6E2E636F6D2F696E6465782E7068702F686F772D746F2D696E7374616C6C2D6170616368652D686976652F,'Windows','.txt','Windows.txt','2014-11-25','Creator','203','NzUoP3zm66C3d/AKoS7ftLOVaoIrDxBYdXAhfsQu2yk62fbEsExZX7dfqZ7anZfwZFO02lWDPRrF0t4lk/0nPx7r9y+zIhem1xlLJkttse9JqIgXpcjUZuekkcVE6DhvPN3pAzDQvXPIB4OkH/Q/Ud4tgoUAp0fVD61vlM+vYC8MvRGiUBKdrUNWI+MjXUZbpEF1StqQWqxLOauTgiDQAefQI2RF+zTb92KAPBsMU3NnZ62CB5oroiFIW+trVa0YMmqM2rAQYuRb6wkmO/iPjFWsjcRO0cKB');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;


--
-- Definition of table `kdc`
--

DROP TABLE IF EXISTS `kdc`;
CREATE TABLE `kdc` (
  `uid` varchar(100) NOT NULL default '',
  `pkey` varchar(100) default NULL,
  `skey` varchar(100) default NULL,
  `request` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kdc`
--

/*!40000 ALTER TABLE `kdc` DISABLE KEYS */;
INSERT INTO `kdc` (`uid`,`pkey`,`skey`,`request`) VALUES 
 ('Creator','71553','JTp3tnL1WgnxoneKqhc1lg==','66768'),
 ('Writer','84715','JTp3tnL1WgnxoneKqhc1lg==','56064');
/*!40000 ALTER TABLE `kdc` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` varchar(100) default NULL,
  `KeyValue` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`id`,`KeyValue`) VALUES 
 ('Creator','66768'),
 ('Writer','56064');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
