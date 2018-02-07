-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: techsevin_management_system
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(225) DEFAULT NULL,
  `emp_email` varchar(225) DEFAULT NULL,
  `emp_phone` int(100) DEFAULT NULL,
  `emp_password` varchar(225) DEFAULT NULL,
  `emp_status` enum('Active','Deactive') DEFAULT 'Active',
  `emp_type` enum('User','Admin') DEFAULT 'User',
  `emp_pos` varchar(225) DEFAULT NULL,
  `emp_joined` date DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1000,'roshan','roshan@gmail.com',123123456,'75sdcsazx','Active','User','developer','2018-01-22','roshan',NULL,'2018-02-07 11:04:49','2018-02-07 11:04:49'),(1001,'swarup','swarup@gmail.com',123123456,'75sdcsazx','Active','User','developer','2018-01-15','swarup',NULL,'2018-02-07 11:09:12','2018-02-07 11:09:12'),(1002,'aditya','aditya@gmail.com',123123456,'75sdcsazx','Active','User','developer','2017-11-22','aditya',NULL,'2018-02-07 11:09:12','2018-02-07 11:09:12'),(1003,'rohit','rohit@gmail.com',123123456,'75sdcsazx','Active','User','developer','2016-01-22','rohit',NULL,'2018-02-07 11:09:12','2018-02-07 11:09:12'),(1004,'astik','astik@gmail.com',123123456,'75sdcsazx','Active','User','developer','2015-01-22','astik',NULL,'2018-02-07 11:09:17','2018-02-07 11:09:17');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `att_status` enum('P','A') DEFAULT 'A',
  `att_day` datetime DEFAULT NULL,
  `att_check_in` datetime DEFAULT NULL,
  `att_check_out` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `employee_attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,'A','2018-02-07 00:00:00','2018-02-07 10:00:00','2018-02-07 07:00:00',1000,'roshan',NULL,'2018-02-07 12:09:35','2018-02-07 12:09:35'),(2,'A','2018-02-07 00:00:00','2018-02-08 10:00:00','2018-02-07 07:00:00',1000,'roshan',NULL,'2018-02-07 12:12:04','2018-02-07 12:12:04'),(3,'A','2018-02-07 00:00:00','2018-02-06 10:00:00','2018-02-06 07:00:00',1000,'roshan',NULL,'2018-02-07 12:12:04','2018-02-07 12:12:04'),(4,'A','2018-02-07 00:00:00','2018-02-09 10:00:00','2018-02-09 07:00:00',1000,'roshan',NULL,'2018-02-07 12:12:04','2018-02-07 12:12:04'),(5,'A','2018-02-07 00:00:00','2018-02-10 10:00:00','2018-02-10 07:00:00',1000,'roshan',NULL,'2018-02-07 12:12:06','2018-02-07 12:12:06');
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_detail`
--

DROP TABLE IF EXISTS `employee_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_gender` enum('M','F') DEFAULT 'M',
  `emp_address` varchar(225) DEFAULT NULL,
  `emp_contact` int(100) DEFAULT NULL,
  `emp_adhaarno` varchar(225) DEFAULT NULL,
  `emp_pancard` varchar(225) DEFAULT NULL,
  `emp_photo` varchar(100) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `employee_detail_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_detail`
--

LOCK TABLES `employee_detail` WRITE;
/*!40000 ALTER TABLE `employee_detail` DISABLE KEYS */;
INSERT INTO `employee_detail` VALUES (1,'M','virar',78523691,'2345678','456789','roshan.jpg',1000,'roshan',NULL,'2018-02-07 11:16:28','2018-02-07 11:16:28'),(2,'M','dahisar',78523691,'2345678','456789','swarup.jpg',1001,'swarup',NULL,'2018-02-07 11:23:30','2018-02-07 11:23:30'),(3,'M','central',78523691,'2345678','456789','aditya.jpg',1002,'aditya',NULL,'2018-02-07 11:23:30','2018-02-07 11:23:30'),(4,'M','dahisar',78523691,'2345678','456789','rohit.jpg',1003,'rohit',NULL,'2018-02-07 11:23:30','2018-02-07 11:23:30'),(5,'M','malad',78523691,'2345678','456789','astik.jpg',1004,'astik',NULL,'2018-02-07 11:23:30','2018-02-07 11:23:30');
/*!40000 ALTER TABLE `employee_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  `p_status` enum('1','0') DEFAULT '1',
  `p_start_date` datetime DEFAULT NULL,
  `p_end_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'aerio','1','2009-06-22 00:00:00','2019-01-01 00:00:00','aditya',NULL,'2018-02-07 12:16:29','2018-02-07 12:16:29'),(2,'sultan center','1','2010-06-22 12:00:00','2020-01-01 00:00:00','rohan',NULL,'2018-02-07 12:18:14','2018-02-07 12:18:14');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_activity`
--

DROP TABLE IF EXISTS `project_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requirement_project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_project_id` (`requirement_project_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `project_activity_ibfk_1` FOREIGN KEY (`requirement_project_id`) REFERENCES `requirement_project` (`id`),
  CONSTRAINT `project_activity_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_activity`
--

LOCK TABLES `project_activity` WRITE;
/*!40000 ALTER TABLE `project_activity` DISABLE KEYS */;
INSERT INTO `project_activity` VALUES (1,1,1001),(2,4,1001),(3,1,1001),(4,2,1001),(5,2,1002),(6,4,1002),(7,2,1002),(8,2,1002),(9,1,1000),(10,4,1000),(11,1,1000),(12,2,1000),(13,4,1004),(14,4,1004),(15,6,1004),(16,2,1004),(29,2,1003),(30,4,1003),(31,1,1003),(32,2,1003);
/*!40000 ALTER TABLE `project_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement_doc`
--

DROP TABLE IF EXISTS `requirement_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requirement_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_type` varchar(225) DEFAULT NULL,
  `doc_name` varchar(225) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `requirement_doc_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement_doc`
--

LOCK TABLES `requirement_doc` WRITE;
/*!40000 ALTER TABLE `requirement_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `requirement_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement_project`
--

DROP TABLE IF EXISTS `requirement_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requirement_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `require_name` text,
  `require_status` enum('C','W','A','H') DEFAULT 'A',
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `requirement_project_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement_project`
--

LOCK TABLES `requirement_project` WRITE;
/*!40000 ALTER TABLE `requirement_project` DISABLE KEYS */;
INSERT INTO `requirement_project` VALUES (1,'change in some module','H','aditya',NULL,'2018-02-07 12:28:40','2018-02-07 12:28:40',1),(2,'change in some module1','H','aditya',NULL,'2018-02-07 12:28:40','2018-02-07 12:28:40',1),(3,'change in some module2','A','swarup',NULL,'2018-02-07 12:28:40','2018-02-07 12:28:40',1),(4,'change in some module3','H','aditya',NULL,'2018-02-07 12:28:41','2018-02-07 12:28:41',2),(5,'added in some module','C','rohan',NULL,'2018-02-07 12:28:41','2018-02-07 12:28:41',1),(6,'change in some module','H','aditya',NULL,'2018-02-07 12:28:41','2018-02-07 12:28:41',2),(7,'change in some module','H','rohan',NULL,'2018-02-07 12:28:41','2018-02-07 12:28:41',2),(8,'change in some module','H','aditya',NULL,'2018-02-07 12:28:41','2018-02-07 12:28:41',1),(9,'change in some module','H','rahul',NULL,'2018-02-07 12:28:42','2018-02-07 12:28:42',1);
/*!40000 ALTER TABLE `requirement_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-07 18:51:56
