use DB_SCEMR_PROD;
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SCEMR_PROD
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
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptoms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `symptomUniqueId` varchar(36) DEFAULT NULL,
  `uidOfPatient` int(11) unsigned DEFAULT NULL,
  `createdByUid` int(11) DEFAULT NULL,
  `symptom` varchar(128) DEFAULT NULL,
  `severity` enum('None(0)','Mild(1)','Moderate(2)','Severe(3)') NOT NULL,
  `isItLocked` enum('yes','no') NOT NULL DEFAULT 'no' COMMENT 'This field decides whether the symptoms is locked or not',
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isDeleted` int(1) NOT NULL DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `deletedByUID` int(11) DEFAULT NULL,
  `deletedOnDateTime` datetime DEFAULT NULL,
  `deletedOnTimeZone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `deletedFromIPAddress` varchar(255) DEFAULT NULL,
  `discontinuedByUID` int(11) DEFAULT NULL,
  `discontinuedOnDateTime` datetime DEFAULT NULL,
  `discontinuedOnTimeZone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `discontinuedFromIPAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uidOfPatient` (`uidOfPatient`),
  KEY `createdByUid` (`createdByUid`)
) ENGINE=InnoDB AUTO_INCREMENT=1877 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `generate_uuid4_for_symptoms` BEFORE INSERT ON `symptoms` FOR EACH ROW begin
    DECLARE P1 VARCHAR(36);
    DECLARE P2 bigint(21);
    SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'DB_SCEMR_PROD' AND   TABLE_NAME   = 'symptoms' INTO @P2;
    
    Select uuid_v4_custom(@P2) INTO @P1;
    
    IF (NEW.symptomUniqueId IS NULL) THEN
    	SET NEW.symptomUniqueId = @P1;
    ELSEIF (NEW.symptomUniqueId = '') THEN
    	SET NEW.symptomUniqueId = @P1;  
	ELSE
    	SET NEW.symptomUniqueId = NEW.symptomUniqueId;
    END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
