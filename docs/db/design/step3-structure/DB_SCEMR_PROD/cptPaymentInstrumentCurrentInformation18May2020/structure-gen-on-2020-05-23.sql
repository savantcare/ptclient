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
-- Table structure for table `cptPaymentInstrumentCurrentInformation18May2020`
--

DROP TABLE IF EXISTS `cptPaymentInstrumentCurrentInformation18May2020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cptPaymentInstrumentCurrentInformation18May2020` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `paymentInformationUniqueId` varchar(36) DEFAULT NULL,
  `uidOfPatient` int(11) unsigned DEFAULT NULL,
  `type` enum('Bank account','CC','Insurance','Other') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `accountHolderName` text,
  `relationWithPatient` text,
  `isThisAccountOwnedByPatient` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `forTypeBankOrCCOrInsuranceAccountNumber` varchar(30) DEFAULT NULL,
  `forTypeBankRoutingNumber` varchar(30) DEFAULT NULL,
  `forTypeCCSecurityCode` varchar(5) DEFAULT NULL,
  `forTypeCCExpirationMonth` int(11) DEFAULT NULL,
  `forTypeCCExpirationYear` int(11) DEFAULT NULL,
  `forTypeInsuranceUIDOfCompany` int(11) unsigned DEFAULT NULL,
  `forTypeCCBillingZipCode` varchar(20) DEFAULT NULL,
  `forTypeCCIsCardValid` enum('yes','no') NOT NULL DEFAULT 'yes',
  `forTypeCCIsExpiryValid` enum('yes','no') DEFAULT NULL,
  `forTypeCCIsCVVValid` enum('yes','no') DEFAULT NULL,
  `forTypeCCIsZipValid` enum('yes','no') DEFAULT NULL,
  `note` text,
  `isPrimary` tinyint(1) unsigned NOT NULL COMMENT '0: secondary, 1: primary',
  `uidOfCreatedBy` int(11) unsigned DEFAULT NULL,
  `isItLocked` enum('yes','no') NOT NULL DEFAULT 'no' COMMENT 'This field decides whether the cptPaymentInstrumentCurrentInformation is locked or not',
  `created_at` datetime DEFAULT NULL,
  `timeZoneAbbreviationForCreatedAt` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `timeZoneAbbreviationForUpdatedAt` varchar(255) DEFAULT NULL,
  `priority` smallint(4) DEFAULT NULL,
  `payerNote` text,
  `discontinuedByUID` int(11) DEFAULT NULL,
  `discontinuedOnDateTime` datetime DEFAULT NULL,
  `discontinuedTimeZone` varchar(100) DEFAULT NULL,
  `discontinuedFromIPAddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uidOfPatient` (`uidOfPatient`),
  KEY `uidOfCreatedBy` (`uidOfCreatedBy`),
  KEY `forTypeInsuranceIDOfCompany` (`forTypeInsuranceUIDOfCompany`)
) ENGINE=InnoDB AUTO_INCREMENT=27892 DEFAULT CHARSET=latin1;
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