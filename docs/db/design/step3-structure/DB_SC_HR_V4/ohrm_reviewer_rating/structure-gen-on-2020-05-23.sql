use DB_SC_HR_V4;
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_HR_V4
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1-log

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
-- Table structure for table `ohrm_reviewer_rating`
--

DROP TABLE IF EXISTS `ohrm_reviewer_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ohrm_reviewer_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` decimal(18,2) DEFAULT NULL,
  `kpi_id` int(7) DEFAULT NULL,
  `review_id` int(7) DEFAULT NULL,
  `reviewer_id` int(7) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `review_id` (`review_id`),
  KEY `reviewer_id` (`reviewer_id`),
  CONSTRAINT `ohrm_reviewer_rating_ibfk_1` FOREIGN KEY (`reviewer_id`) REFERENCES `ohrm_reviewer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ohrm_reviewer_rating_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `ohrm_performance_review` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
